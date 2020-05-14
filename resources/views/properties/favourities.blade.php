@extends('layout')

@section('content')

  <header id="header-fixed" class="header-scrolled">
    <div id="logo" class="pull-left">
      <a href="/">
        <img id="logo-img" src="asset/img/HomeandYou logo.png" alt="">
      </a>
    </div>
    
    <div class="container-fluid">
      <nav id="nav-menu-container">
        <ul class="nav-menu">
            <li><a href="/">@lang('app.home')</a></li>
            <li class="menu-has-children active"><a href="#">@lang('app.properties')<i class="fa fa-angle-down" aria-hidden="true"></i></a>
              <ul class="main-sub-manu-ul">
                <li><a href="/properties" style="color: #000;">@lang('app.all properties')</a></li>
                <li><a href="/favourities">@lang('app.favourities')</a></li>
              </ul>
            </li>
            <li><a href="/aboutus">@lang('app.about us')</a></li>
            <li><a href="/blogs">@lang('app.blog')</a></li>
            <li><a class="contact-a">@lang('app.contact us')</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <main id="main">
    <!--==========================
      Portfolio Section
    ============================-->
    <section id="portfolio"  class="section-bg section-favourite" >
      <div class="imovies-container">

        <div class="row">
          @foreach ($properties as $property)
              
          <div class="col-lg-4">
            <div class="portfolio-wrap no-box-shadow">
              <figure>
                <a href="{{ route('properties.show', $property->id) }}">
                  <div class="image-container"><img src="/storage/{{ json_decode($property->images)[0] }}" class="img-fluid img-item" alt=""></div>
                </a>
                <a href="{{ route('unfavourite', $property->id) }}" class="set-favourite-link" data-id="{{ $property->id }}"><div class="fav-ico-div active"></div></a>
              </figure>
              <div class="imovie-bottom-container">
                <p class="title">{{ $property->name." | ".$property->type }}</p>
                <p class="cost">€ {{ number_format($property->cost, 0,"."," ") }}</p>
                <div class="features-ul">
                  <div>
                    <img src="asset/img/area icon.png" alt="">{{ $property->area }}m<sup>2</sup>
                  </div>
                  @isset($property->bedroom)
                  <div>
                    <img src="asset/img/bedroom icon.png" alt="">
                    @if($property->bedroom!=1)
                    {{ $property->bedroom }}
                    @endif
                  </div>
                  @endisset
                  @isset($property->lounge)
                  <div>
                    <img src="asset/img/Lounge icon copy.png" alt="">
                    @if($property->lounge!=1)
                    {{ $property->lounge }}
                    @endif
                  </div>
                  @endisset
                  @isset($property->wc)
                  <div>
                    <img src="asset/img/wc icon.png" alt="">
                    @if($property->wc!=1)
                    {{ $property->wc }}
                    @endif
                  </div>
                  @endisset
                  @isset($property->garage)
                  <div>
                    <img src="asset/img/garage icon.png" alt="">
                    @if($property->garage!=1)
                    {{ $property->garage }}
                    @endif
                  </div>
                  @endisset
                  @isset($property->pool)
                  <div>
                    <img src="asset/img/Pool icon.png" alt="">
                    @if($property->pool!=1)
                    {{ $property->pool }}
                    @endif
                  </div>
                  @endisset
                </div>
              </div>
            </div>
          </div>
          @endforeach
        </div>

      </div>

      <div class="pagination-container">
      {{ $properties->links() }}
      </div>
    </section><!-- #portfolio -->

    <section id="legenda-wrapper">
      <p class="title">@lang('search.superscription')</p>
      <div class="content">
        <span class="sea"><img src="asset/img/area icon.png" alt="">&nbsp; @lang('search.area')</span>
        <span class="roo"><img src="asset/img/Lounge icon copy.png" alt="">&nbsp; @lang('search.rooms')</span>
        <span class="bed"><img src="asset/img/bedroom icon.png" alt="">&nbsp; @lang('search.bedrooms')</span>
        <span class="wc"><img src="asset/img/wc icon.png" alt="">&nbsp; @lang('search.wc')</span>
        <span class="gar"><img src="asset/img/garage icon.png" alt="">&nbsp; @lang('search.garage')</span>
        <span class="poo"><img src="asset/img/Pool icon.png" alt="">&nbsp; @lang('search.pool')</span>
      </div>
    </section>

    <section id="gif-ani-div">
        <div class="bottom-bar">
          <div></div>
        </div>
        <img class="gif-ani-img" src="/asset/img/Lisbon Skyline.png" alt="">
        <div class="bottom-bar">
          <div></div>
        </div>
    </section>

  </main>

  @endsection

  @push('scripts')

    <script>
    var pos_win = 0;

    $(window).scroll(function(){
      var val = $(this).scrollTop();

      if (val > pos_win) {
        if (val > 200) {
          $("#featured-services").fadeOut("2");
        }
	    } else {
        $("#featured-services").fadeIn("2");
	    }

      pos_win = val;

    });

  </script>

  @endpush