<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <title>HOME & YOU</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="/auth/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/auth/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/auth/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="/auth/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="/auth/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="/auth/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="/auth/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="/auth/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="/auth/css/util.css">
	<link rel="stylesheet" type="text/css" href="/auth/css/main.css">

    @stack('csss')

</head>

<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
                @yield('content')
			</div>
		</div>
	</div>



	<script src="/auth/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="/auth/vendor/animsition/js/animsition.min.js"></script>
	<script src="/auth/vendor/bootstrap/js/popper.js"></script>
	<script src="/auth/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="/auth/vendor/select2/select2.min.js"></script>
	<script src="/auth/vendor/daterangepicker/moment.min.js"></script>
	<script src="/auth/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="/auth/vendor/countdowntime/countdowntime.js"></script>
	<script src="/auth/js/main.js"></script>

</body>
</html>
