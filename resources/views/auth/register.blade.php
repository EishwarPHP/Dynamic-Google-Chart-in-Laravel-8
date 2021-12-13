@extends('auth.layouts.app')


@section('content')
<div class="row justify-content-center">

    <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    {{-- <div class="col-lg-6 d-none d-lg-block bg-login-image"></div> --}}
                    <div class="col-lg-12">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Register Your Account!</h1>
                            </div>
                            <form method="POST" action="{{ route('register') }}" enctype="multipart/form-data">
                                @csrf
        
                                <div class="form-group row">
                                    <label for="fname" class="col-md-4 col-form-label text-md-right">{{ __('First Name') }}</label>
                                    <div class="col-md-6">
                                        <input id="fname" type="text" class="form-control @error('fname') is-invalid @enderror" name="fname"
                                        value="{{ old('fname') }}" required autocomplete="fname" autofocus>
        
                                        @error('fname')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
        
                                <div class="form-group row">
                                    <label for="lname" class="col-md-4 col-form-label text-md-right">{{ __('Last Name') }}</label>
                                    <div class="col-md-6">
                                        <input id="lname" type="text" class="form-control @error('lname') is-invalid @enderror" name="lname"
                                        value="{{ old('lname') }}" required autocomplete="lname" autofocus>
        
                                        @error('lname')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
        
                                <div class="form-group row">
                                    <label for="dob" class="col-md-4 col-form-label text-md-right">{{ __('Date Of Birth') }}</label>
                                    <div class="col-md-6">
                                        <input id="dob" type="date" class="form-control @error('dob') is-invalid @enderror" name="dob"
                                        value="{{ old('dob') }}" required autocomplete="dob" autofocus>
        
                                        @error('dob')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
        
                                <div class="form-group row">
                                    <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Gender') }}</label>
                                    <div class="col-md-6">
                                        <div class="col-md-4">
                                            <input type="radio" class="form-check-input" name="gender" id="gender" value="Male" >
                                            Male</input>
                                        </div>
                                        <div class="col-md-4">
                                            <input type="radio" class="form-check-input" name="gender" id="gender" value="Female" >
                                            Female</input>
                                        </div>
        
                                        {{-- <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name"
                                        value="{{ old('name') }}" required autocomplete="name" autofocus> --}}
        
                                        @error('gender')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
        
        
                                <div class="form-group row">
                                    <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Occupation') }}</label>
                                    <div class="col-md-6">
                                        <select class="form-control @error('occupation') is-invalid @enderror" name="occupation"
                                        value="{{ old('occupation') }}" required autocomplete="occupation" autofocus >
                                            <option value="">Select occupation</option>
                                            <option value="Private job">Private job</option>
                                            <option value="Government Job">Government Job</option>
                                            <option value="Business">Business</option>
        
                                        </select>
                                        @error('occupation')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
        
                                <div class="form-group row">
                                    <label for="income" class="col-md-4 col-form-label text-md-right">{{ __('Annual Income') }}</label>
                                    <div class="col-md-6">
                                    
                                        <input id="income" type="text" class="form-control @error('income') is-invalid @enderror" name="income"
                                        value="{{ old('income') }}" placeholder="eg. 5 Lac" required autocomplete="income" autofocus>
                                    </div>
                                </div>
        
                                <div class="form-group row">
                                    <label for="family_type" class="col-md-4 col-form-label text-md-right">{{ __('Family Type') }}</label>
                                    <div class="col-md-6">
                                        <select class="form-control @error('family_type') is-invalid @enderror" name="family_type"
                                        value="{{ old('family_type') }}" required autocomplete="family_type" autofocus >
                                            <option value="">Select Family Type</option>
                                            <option value="Joint Family"> Joint Family</option>
                                            <option value="Nuclear Family"> Nuclear Family</option>
                                        </select>
        
        
                                        @error('family_type')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
        
                                <div class="form-group row">
                                    <label for="manglik" class="col-md-4 col-form-label text-md-right">{{ __('Manglik') }}</label>
                                    <div class="col-md-6">
                                        <select class="form-control @error('manglik') is-invalid @enderror" name="manglik"
                                        value="{{ old('manglik') }}" required autocomplete="manglik" autofocus >
                                            <option value="">Select Manglik</option>
                                            <option value="Yes"> Yes</option>
                                            <option value="No"> No</option>
                                        </select>
        
        
                                        @error('manglik')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
        
                                <div class="form-group row">
                                    <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>
        
                                    <div class="col-md-6">
                                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
        
                                        @error('email')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
        
                                <div class="form-group row">
                                    <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>
        
                                    <div class="col-md-6">
                                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
        
                                        @error('password')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
        
                                <div class="form-group row">
                                    <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>
        
                                    <div class="col-md-6">
                                        <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                                    </div>
                                </div>
        
                                <div class="form-group row mb-0">
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                            {{ __('Register') }}
                                        </button>
                                    </div>
                                </div>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="{{route('login')}}">Login Here</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>
@endsection
