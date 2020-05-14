@extends('auth')

@section('content')

<form class="login100-form " method="POST" action="{{ route('password.update') }}">
    @csrf
    <span class="login100-form-title p-b-33">
        <img src="/asset/img/HomeandYou logo.png">
    </span>

    <div class="wrap-input100 validate-input @error('email') alert-validate @enderror" data-validate = "{{ $errors->first('email') }}">
        <input class="input100" type="email" name="email" placeholder="{{ __('E-Mail Address') }}" value="{{ $email ?? old('email') }}" required autocomplete="email" autofocus>
        <span class="focus-input100-1"></span>
        <span class="focus-input100-2"></span>
    </div>

    <div class="wrap-input100 rs1 validate-input @error('password') alert-validate @enderror" data-validate = "{{ $errors->first('password') }}">
        <input class="input100" type="password" name="password" placeholder="{{ __('Password') }}" required>
        <span class="focus-input100-1"></span>
        <span class="focus-input100-2"></span>
    </div>

    <div class="wrap-input100 rs1">
        <input class="input100" type="password" name="password_confirmation" placeholder="{{ __('Confirm Password') }}" required>
        <span class="focus-input100-1"></span>
        <span class="focus-input100-2"></span>
    </div>

    <div class="container-login100-form-btn m-t-20">
        <button class="login100-form-btn" type="submit">
            {{ __('Reset Password') }}
        </button>
    </div>
</form>

@endsection


