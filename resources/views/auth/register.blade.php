@extends('auth')

@section('content')

<form class="login100-form " method="POST" action="{{ route('register') }}">
    @csrf
    <span class="login100-form-title p-b-33">
        <img src="/asset/img/HomeandYou logo.png">
    </span>

    <div class="wrap-input100 validate-input @error('name') alert-validate @enderror" data-validate = "{{ $errors->first('name') }}">
        <input class="input100" type="text" name="name" placeholder="{{ __('Name') }}" value="{{ old('name') }}" required autocomplete="name" autofocus>
        <span class="focus-input100-1"></span>
        <span class="focus-input100-2"></span>
    </div>

    <div class="wrap-input100 validate-input @error('email') alert-validate @enderror" data-validate = "{{ $errors->first('email') }}">
        <input class="input100" type="email" name="email" placeholder="{{ __('E-Mail Address') }}" value="{{ old('email') }}" required required autocomplete="email">
        <span class="focus-input100-1"></span>
        <span class="focus-input100-2"></span>
    </div>

    <div class="wrap-input100 validate-input rs1 @error('password') alert-validate @enderror" data-validate = "{{ $errors->first('password') }}">
        <input class="input100" type="password" name="password" placeholder="{{ __('Password') }}" required autocomplete="new-password">
        <span class="focus-input100-1"></span>
        <span class="focus-input100-2"></span>
    </div>

    <div class="wrap-input100 validate-input rs1">
        <input class="input100" type="password" name="password_confirmation" placeholder="{{ __('Confirm Password') }}" required autocomplete="new-password">
        <span class="focus-input100-1"></span>
        <span class="focus-input100-2"></span>
    </div>

    <div class="container-login100-form-btn m-t-20">
        <button class="login100-form-btn" type="submit">
            {{ __('Register') }}
        </button>
    </div>

    <div class="text-center p-t-45 p-b-4">
        <span class="txt1">
            Have already an account?
        </span>

        <a href="{{ route('login') }}" class="txt2 hov1">
            Log in
        </a>
    </div>
</form>

@endsection


