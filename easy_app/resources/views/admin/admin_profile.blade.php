@extends('admin.admin_master')

@section('content')
    <div class="content">
        <div class="container-xxl">
            <div class="py-3 d-flex align-items-sm-center flex-sm-row flex-column">
                <div class="flex-grow-1">
                    <h4 class="fs-18 fw-semibold m-0">Profile</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card">

                        <div class="card-body">

                            <div class="align-items-center">
                                <div class="d-flex align-items-center">
                                    <img src="{{ (!empty($profileData->photo)) ? url("uploads/user_images/$profileData->photo") : url('uploads/no_image.jpg') }}"
                                         class="rounded-circle avatar-xxl img-thumbnail float-start" alt="image profile"
                                    >

                                    <div class="overflow-hidden ms-4">
                                        <h4 class="m-0 text-dark fs-20">{{ $profileData->name }}</h4>
                                        <p class="my-1 text-muted fs-16">{{ $profileData->email }}</p>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane pt-4" id="profile_setting" role="tabpanel">
                                <div class="row">

                                    <div class="row">
                                        <div class="col-lg-6 col-xl-6">
                                            <div class="card border mb-0">

                                                <div class="card-header">
                                                    <div class="row align-items-center">
                                                        <div class="col">
                                                            <h4 class="card-title mb-0">Personal Information</h4>
                                                        </div><!--end col-->
                                                    </div>
                                                </div>
                                                <form action="{{ route('profile.store') }}" method="post" enctype="multipart/form-data">
                                                    @csrf
                                                    <div class="card-body">
                                                        <div class="form-group mb-3 row">
                                                            <label for="name" class="form-label">Name</label>
                                                            <div class="col-lg-12 col-xl-12">
                                                                <input id="name" name="name" class="form-control" type="text" value="{{ $profileData->name }}">
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3 row">
                                                            <label for="email" class="form-label">Email</label>
                                                            <div class="col-lg-12 col-xl-12">
                                                                <div class="input-group">
                                                                    <span class="input-group-text"><i class="mdi mdi-email"></i></span>
                                                                    <input id="email" name="email" type="text" class="form-control" value="{{ $profileData->email }}" placeholder="Email" aria-describedby="basic-addon1">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3 row">
                                                            <label for="phone" class="form-label">Phone</label>
                                                            <div class="col-lg-12 col-xl-12">
                                                                <div class="input-group">
                                                                    <span class="input-group-text"><i class="mdi mdi-phone-outline"></i></span>
                                                                    <input id="phone" name="phone" class="form-control" type="text" placeholder="Phone" aria-describedby="basic-addon1" value="{{ $profileData->phone }}">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3 row">
                                                            <label for="address" class="form-label">Address</label>
                                                            <div class="col-lg-12 col-xl-12">
                                                                <textarea class="form-control" id="address" name="address" placeholder="Address">{{ $profileData->address }}</textarea>
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3 row">
                                                            <label for="photo" class="form-label">Profile Photo</label>
                                                            <div class="col-lg-12 col-xl-12">
                                                                <input class="form-control" id="photo" type="file" name="photo">
                                                            </div>
                                                        </div>

                                                        <div class="form-group mb-3 row">
                                                            <div class="col lg-12 col xl-12">
                                                                <img id="show-image" src="{{ (!empty($profileData->photo)) ? url("uploads/user_images/$profileData->photo") : url('uploads/no_image.jpg') }}"
                                                                     class="rounded-circle avatar-xxl img-thumbnail float-start" alt="image profile"
                                                                >
                                                            </div>
                                                        </div>

                                                        <button type="submit" class="btn btn-primary">Save Changes</button>
                                                    </div><!--end card-body-->
                                                </form>

                                            </div>
                                        </div>

                                        <div class="col-lg-6 col-xl-6">
                                            <div class="card border mb-0">

                                                <div class="card-header">
                                                    <div class="row align-items-center">
                                                        <div class="col">
                                                            <h4 class="card-title mb-0">Change Password</h4>
                                                        </div><!--end col-->
                                                    </div>
                                                </div>
                                                <form action="{{ route('profile.changePassword') }}" method="post">
                                                    @csrf
                                                    <div class="card-body mb-0">
                                                        <div class="form-group mb-3 row">
                                                            <label for="old_password" class="form-label">Old Password</label>
                                                            <div class="col-lg-12 col-xl-12">
                                                                <input
                                                                    id="old_password"
                                                                    name="old_password"
                                                                    class="form-control @error('old_password') is-invalid @enderror"
                                                                    type="password"
                                                                    placeholder="Old Password"
                                                                >
                                                                @error('old_password')
                                                                    <span class="text-danger">{{ $message }}</span>
                                                                @enderror
                                                            </div>
                                                        </div>
                                                        <div class="form-group mb-3 row">
                                                            <label for="new_password" class="form-label">New Password</label>
                                                            <div class="col-lg-12 col-xl-12">
                                                                <input
                                                                    id="new_password"
                                                                    name="new_password"
                                                                    class="form-control @error('new_password') is-invalid @enderror"
                                                                    type="password"
                                                                    placeholder="New Password"
                                                                >
                                                                @error('new_password')
                                                                    <span class="text-danger">{{ $message }}</span>
                                                                @enderror
                                                            </div>
                                                        </div>
                                                        <div class="form-group mb-3 row">
                                                            <label for="confirm_password" class="form-label">Confirm Password</label>
                                                            <div class="col-lg-12 col-xl-12">
                                                                <input
                                                                    id="confirm_password"
                                                                    name="confirm_password"
                                                                    class="form-control"
                                                                    type="password"
                                                                    placeholder="Confirm Password"
                                                                >
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <div class="col-lg-12 col-xl-12">
                                                                <button type="submit" class="btn btn-primary">Change Password</button>
                                                            </div>
                                                        </div>

                                                    </div><!--end card-body-->
                                                </form>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>

        const photo = document.querySelector('#photo');
        const showImage = document.querySelector('#show-image');

        photo.addEventListener('change', (e) => {
            const reader = new FileReader();
            reader.onload = function(e) {
                showImage.setAttribute('src', e.target.result.toString());
            }
            reader.readAsDataURL(e.target.files[0]);
        });

    </script>


@endsection
