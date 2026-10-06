<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home.index');
})->name('home');

Route::get('/dashboard', function () {
    return view('admin.index');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

Route::get('/admin/logout', [AdminController::class, 'destroy'])->name('admin.logout');
Route::post('/admin/login', [AdminController::class, 'login'])->name('admin.login');

Route::middleware(['auth', 'verified'])->group(function () {
    Route::get('/admin/profile', [AdminController::class, 'profile'])->name('admin.profile');
    Route::post('/profile/store', [AdminController::class, 'store'])->name('profile.store');
    Route::post('/profile/changePassword', [AdminController::class, 'changePassword'])->name('profile.changePassword');
});

Route::get('/verify', [AdminController::class, 'show'])->name('custom.verification.form');
Route::post('/verify', [AdminController::class, 'verify'])->name('custom.verification.verify');
