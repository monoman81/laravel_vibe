<?php

namespace App\Http\Controllers;

use App\Mail\VerificationCodeMail;
use App\Models\User;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class AdminController extends Controller
{
    //
    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/login');
    }

    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            $verificationCode = random_int(100000, 999999);
            session([
                'verification_code' => $verificationCode,
                'user_id' => $user->id,
            ]);
            Mail::to($user->email)->send(new VerificationCodeMail($verificationCode));
            Auth::logout();

            return redirect()->route('custom.verification.form')->with('status', 'Verification code sent to your email');
        }

        return redirect()->back()->withErrors([
            'email' => 'Invalid credentials provided',
        ]);
    }

    public function show()
    {
        return view('auth.verify');
    }

    public function verify(Request $request)
    {
        $request->validate([
            'code' => 'required|numeric',
        ]);
        if (intval($request->code) === session('verification_code')) {
            Auth::loginUsingId(session('user_id'));
            session()->forget(['verification_code', 'user_id']);

            return redirect()->intended('/dashboard');
        }

        return back()->withErrors([
            'code' => 'Invalid verification Code',
        ]);
    }

    public function profile()
    {
        $id = Auth::user()->id;
        $profileData = User::find($id);
        return view('admin.admin_profile', compact('profileData'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'photo' => 'mimes:jpeg,jpg,png',
        ]);
        $profile = User::find(Auth::user()->id);
        $old_photo = $profile->photo;
        if ($request->hasFile('photo')) {
            $file = $request->file('photo');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/user_images'), $filename);
            if ($old_photo && $old_photo !== $filename) {
                unlink(public_path('uploads/user_images/' . $old_photo));
            }
        }
        $profile->update([
            'name' => $request->name,
            'email' => $request->email,
            'photo' => $filename ?? $old_photo,
            'phone' => $request->phone,
            'address' => $request->address,
        ]);

        $notification = [
            'message' => 'Profile updated successfully',
            'alert-type' => 'success',
        ];
        return redirect()->back()->with($notification);
    }

    public function changePassword(Request $request)
    {
        $user = Auth::user();
        $request->validate([
            'old_password' => 'required',
            'new_password' => 'min:6|required_with:confirm_password|same:confirm_password',
        ]);
        if (!Hash::check($request->old_password, $user->password)) {
            $notification = array(
                'message' => 'Please enter correct current password',
                'alert-type' => 'error',
            );
            return redirect()->back()->with($notification);
        }
        User::where('id', $user->id)->first()->update([
            'password' => Hash::make($request->new_password),
        ]);
        Auth::logout();
        $notification = array(
            'message' => 'Password updated successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('login')->with($notification);
    }
}
