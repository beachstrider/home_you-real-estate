@extends('auth')

@section('content')

<form class="login100-form">
    <span class="login100-form-title p-b-33">
        <img src="/asset/img/HomeandYou logo.png">
    </span>

    <div class="text-center">
        <span class="txt1">
            @if (session('resent'))
                <div class="alert alert-success" role="alert">
                    {{ __('A fresh verification link has been sent to your email address.') }}
                </div>
            @endif
        </span>

        <span class="txt1">
            {{ __('Before proceeding, please check your email for a verification link.') }}
            {{ __('If you did not receive the email') }}, <br> 
            <a href="{{ route('verification.resend') }}" class="txt2 hov1">{{ __('click here to request another') }}</a>
        </span>
    </div>
</form>

@endsection


