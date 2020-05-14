@extends('layout')

@section('content')

  <header id="header-fixed" class="header-scrolled">
    <div id="logo" class="pull-left">
      <a href="/">
        <img id="logo-img" src="/storage/{{ setting('site.logo') }}" alt="">
      </a>
    </div>
    
    <div class="container-fluid">
      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li><a href="/">@lang('app.home')</a></li>
            <li class="menu-has-children"><a href="#">@lang('app.properties')<i class="fa fa-angle-down" aria-hidden="true"></i></a>
              <ul class="main-sub-manu-ul">
                <li><a href="/properties" style="color: #000;">@lang('app.all properties')</a></li>
                <li><a href="/favourities" style="color: #000;">@lang('app.favourities')</a></li>
              </ul>
            </li>
          <li class="active"><a href="/aboutus">@lang('app.about us')</a></li>
          <li><a href="/blogs">@lang('app.blog')</a></li>
          <li><a class="contact-a">@lang('app.contact us')</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <main id="main">

    <section id="gif-ani-div">
        <div class="bottom-bar">
          <div></div>
        </div>
        <img class="gif-ani-img" src="/asset/img/Lisbon Skyline.png" alt="">
        <div class="bottom-bar">
          <div></div>
        </div>
    </section>

    <section id="blog-conc-container">
        <p class="title" style="margin-bottom: 50px;">@lang('app.who is')&nbsp;Home & You</p>
        <p class="content text-left">
        @if(App::getLocale()=="en")
        {!! nl2br(setting('site.text_en_whoweare')) !!}
        @elseif(App::getLocale()=="pt")
        {!! nl2br(setting('site.text_pt_whoweare')) !!}
        @endif
        </p>
    </section>

    {{-- <section id="about-map-container">
      <div class="container">
        <div class="row" style="margin: auto;">
          <div id="contact-map1" class="col-lg-5 map-cont" style="background-color: #fff;">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" style="border:0; width: 100%; height: 312px;" allowfullscreen="" frameborder="0"></iframe>

          </div>
          <div class="col-lg-1 col-lg-offset-1 info"></div>
          <div class="col-lg-3 col-lg-offset-1 info left">
              <div class="addss"><div>Rua Maria das Dores<br>no. 78 - 2º Andar<br>Lisboa 1990-019</div></div>
          </div>
          <div class="col-lg-3 col-lg-offset-1 info right">
              <div class="addss"><div>+351 935 789 456<br>+351 935 789 460<br>info@homeandyou.pt</div></div>
          </div>
        </div>
      </div>
    </section> --}}

  </main>

@endsection

@push('scripts')

<script>

  function initMap() {
    var myLatLng = {lat: -25.363, lng: 131.044};

    var map = new google.maps.Map(document.getElementById('contact-map'), {
      zoom: 4,
      center: myLatLng
    });

    var marker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      title: 'Hello World!'
    });
  }
</script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC1RY07thuulzjkV9iDqqvlLMUxAB7zf_k&callback=initMap"></script>

@endpush