<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  <meta charset="utf-8">
  <title>{{ setting('site.title') }}</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <!-- Favicons -->
  <link href="/asset/img/favicon.png" rel="icon">
  <link href="/asset/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="/asset/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="/asset/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="/asset/lib/animate/animate.min.css" rel="stylesheet">
  <link href="/asset/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="/asset/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="/asset/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <link href="/asset/css/intlTelInput.css" rel="stylesheet">
  <link href="/asset/css/style.css" rel="stylesheet">

  @stack('csss')

</head>

<body>

  <!--==========================
    Header
  ============================-->
  <div id="top-header">
    <ul class="nav-menu top-menu-ul">
      <li class="menu-has-children"><a href="#">@lang('app.language')</a>
        <ul class="lang-menu-ul">
            <li><a href="/lang/pt"><img src="/asset/img/flag/pt.png" />&nbsp;Português</a></li>
            <li><a href="/lang/en"><img src="/asset/img/flag/sh.png" />&nbsp;English</a></li>
        </ul>
      </li>
      <li>
        @guest
          <a href="{{ route('login') }}">{{ __('Login') }}</a>
        @else
          <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
              {{ __('Logout') }}
          </a>

          <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
              @csrf
          </form>
        @endguest
      </li>
    </ul>
  </div>
  
    @yield('content')

  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="footer-top">
      <div class="footer-top-cont">
        <div class="row top-ccc">

            <div class="col-cont-wrapper">
              <a href="/">
                <img id="footer-logo-img" src="/storage/{{ setting('site.logo') }}" alt="">
              </a>
            </div>

            <div class="col-cont-wrapper">
              <a href="/" class="footer-page-a">@lang('app.home')</a>
              <a href="/sellrequest" class="footer-page-a">@lang('app.sell property')</a>
              <a href="/properties" class="footer-page-a">@lang('app.purchase property')</a>
            </div>

            <div class="col-cont-wrapper">
              <a href="/aboutus" class="footer-page-a">@lang('app.about us')</a>
              <a href="/blogs" class="footer-page-a">@lang('app.real estate blog')</a>
              <a href="/askforrating" class="footer-page-a">@lang('app.ask for rating')</a>
            </div>

            <div class="col-cont-wrapper">
              <a class="footer-page-a contact-a">@lang('app.contact us')</a>
              <a href="/privacypolicy" class="footer-page-a">@lang('app.privacy policy')</a>
              <a href="/termsandconditions" class="footer-page-a">@lang('app.terms and conditions')</a>
            </div>

        </div>
        <div class="row bottom-ccc">

            <div class="footer-socialink-div left"><a href="{!! setting('site.link_newsletter') !!}" target="_blank">@lang('app.newsletter')</a></div>
            <div class="footer-socialink-div mid-left"><a href="{!! setting('site.link_facebook') !!}" target="_blank">Facebook</a></div>
            <div class="footer-socialink-div mid-right"><a href="{!! setting('site.link_instagram') !!}" target="_blank">Instagram</a></div>
            <div class="footer-socialink-div right"><a href="{!! setting('site.link_twitter') !!}" target="_blank">Twitter</a></div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
          Web-design by Art Galaxie.com &nbsp; © 2019 Home&You. All rights reserved
      </div>
    </div>
  </footer><!-- #footer -->

    <section id="contact-req-div">
        <div class="form-wrapper">

            <div class="form">
                <div id="sendmessage" style="color: #fff; border-color: #fff;">@lang('app.message sent')</div>
                <form action="{{ route('contact.store') }}" method="POST" role="form" class="contactusForm">
                    @csrf
                    <div class="form-row">
                        <div class="form-group col-lg-12">
                            <input type="text" name="name" class="form-control" id="name" placeholder="@lang('app.name')" required>
                            <div class="validation"></div>
                        </div>
                        <div class="form-group col-lg-6">
                            <input type="tel" name="phone" class="form-control" id="phone" placeholder="@lang('app.telephone')" required>
                            <div class="validation"></div>
                        </div>
                        <div class="form-group col-lg-6">
                            <input type="email" name="email" class="form-control" id="email" placeholder="Email" required>
                            <div class="validation"></div>
                        </div>
                        <div class="form-group col-md-12">
                            <textarea class="form-control" name="message" rows="5" required placeholder="@lang('app.leave message text')" style="height: 146px;"></textarea>
                            <div class="validation"></div>
                        </div>
                      </div>
                    <div class="text-right">
                        <button type="submit" class="btn-send">@lang('app.send message')</button>
                    </div>
                </form>
            </div>
        </div>
    </section>

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- JavaScript Libraries -->
  <script src="/asset/lib/jquery/jquery.min.js"></script>
  <script src="/asset/lib/jquery/jquery-migrate.min.js"></script>
  <script src="/asset/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/asset/lib/easing/easing.min.js"></script>
  <script src="/asset/lib/superfish/hoverIntent.js"></script>
  <script src="/asset/lib/superfish/superfish.min.js"></script>
  <script src="/asset/lib/wow/wow.min.js"></script>
  <script src="/asset/lib/waypoints/waypoints.min.js"></script>
  <script src="/asset/lib/counterup/counterup.min.js"></script>
  <script src="/asset/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="/asset/lib/isotope/isotope.pkgd.min.js"></script>
  <script src="/asset/lib/lightbox/js/lightbox.min.js"></script>
  <script src="/asset/lib/touchSwipe/jquery.touchSwipe.min.js"></script>

  <!-- Template Main Javascript File -->
  <script src="/asset/js/intlTelInput.js"></script>
  <script src="/asset/contactform/contactform.js"></script>
  <script src="/asset/js/main.js"></script>
  <script src="/asset/js/mscript.js"></script>

    @stack('scripts')

</body>
</html>
