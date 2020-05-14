@extends('auth')

@section('content')

<form class="login100-form " method="POST" action="{{ route('password.email') }}">
    @csrf
    <span class="login100-form-title p-b-33">
        <img src="/asset/img/HomeandYou logo.png">
    </span>

    @if (session('status'))
        <div class="alert alert-success" role="alert">
            {{ session('status') }}
        </div>
    @endif

    <div class="wrap-input100 validate-input @error('email') alert-validate @enderror" data-validate = "{{ $errors->first('email') }}">
        <input class="input100" type="email" name="email" placeholder="{{ __('E-Mail Address') }}" value="{{ old('email') }}" required>
        <span class="focus-input100-1"></span>
        <span class="focus-input100-2"></span>
    </div>

    <div class="container-login100-form-btn m-t-20">
        <button class="login100-form-btn" type="submit">
            {{ __('Send Password Reset Link') }}
        </button>
    </div>
</form>

@endsection


