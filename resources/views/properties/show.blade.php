@extends('layout')

@section('content')

  <header id="header">
    <div id="logo" class="pull-left" style="display: block;">
      <a href="/">
        <img id="logo-img" src="/storage/{{ setting('site.logo') }}" alt="">
      </a>
    </div>

    <div class="container-fluid">
      <nav id="nav-menu-container">
        <ul class="nav-menu">
            <li><a href="/">@lang('app.home')</a></li>
            <li class="menu-has-children active"><a href="#">@lang('app.properties')<i class="fa fa-angle-down" aria-hidden="true"></i></a>
              <ul class="main-sub-manu-ul">
                <li><a href="/properties" style="color: #000;">@lang('app.all properties')</a></li>
                <li><a href="/favourities" style="color: #000;">@lang('app.favourities')</a></li>
              </ul>
            </li>
            <li><a href="/aboutus">@lang('app.about us')</a></li>
            <li><a href="/blogs">@lang('app.blog')</a></li>
            <li><a class="contact-a">@lang('app.contact us')</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro">
    <div class="intro-container">
      <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">
        <ol class="carousel-indicators"></ol>
        @php
          $property->images = str_replace("\\","/", $property->images);
        @endphp
        <div class="carousel-inner" role="listbox">
          @foreach (json_decode($property->images) as $key => $image)
              <div class="carousel-item 
              @if($key==0)
              active
              @endif
              ">
                <div class="carousel-background"><img src="/storage/{{ $image }}" alt=""></div>
              </div>
          @endforeach
        </div>

        <a class="carousel-control-prev" href="#introCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon ion-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>

        <a class="carousel-control-next" href="#introCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon ion-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

      </div>
    </div>
  </section><!-- #intro -->

  <main id="main" style="margin-top: 0;">

    <section id="detail-desc">
      <div class="desc">
        <div class="name-bar">
          <div class="na">{{ $property->name }}</div>
          <div class="cost">€ {{ number_format($property->cost, 0,"."," ") }}</div>
        </div>
        <div class="id-bar">
          <div class="idd">
            @lang('app.reference'): {{ $property->reference }}
          </div>
          @if (Auth::check() && Auth::user()->hasRole('admin'))
          <a onclick="gotoPrint()"><img src="/asset/img/printer icon.png" class="printer-icon-img" alt=""></a>
          @endif
        </div>
        <div class="desc-icons">
          <span><img src="/asset/img/area icon.png" alt="">{{ $property->area }}m<sup>2</sup></span>
          @isset($property->bedroom)
          <span><img src="/asset/img/bedroom icon.png" alt="">
              @if($property->bedroom!=1)
                {{ $property->bedroom }}
              @endif
            </span>
          @endisset
          @isset($property->room)
            <span><img src="/asset/img/Lounge icon copy.png" alt="">
              @if($property->room!=1)
                {{ $property->room }}
              @endif
            </span>
          @endisset
          @isset($property->wc)
          <span><img src="/asset/img/wc icon.png" alt="">
              @if($property->wc!=1)
                {{ $property->wc }}
              @endif
            </span>
          @endisset
          @isset($property->garage)
          <span><img src="/asset/img/garage icon.png" alt="">
              @if($property->garage!=1)
                {{ $property->garage }}
              @endif
            </span>
          @endisset
          @isset($property->pool)
          <span><img src="/asset/img/Pool icon.png" alt="">
              @if($property->pool!=1)
                {{ $property->pool }}
              @endif
          </span>
          @endisset
        </div>
        <div class="description">
          {{ $property->description }}
        </div>
      </div>
      <div class="characters">
        <div class="na">@lang('app.main features')</div>
        <div class="row">
          <div class="col-lg-6">
            <ul>
              <li>@lang('search.ground') {{ $property->territory }}m<sup>2</li>
              <li>@lang('search.built area') {{ $property->area }}m<sup>2</li>
              <li>{{ $property->room }} @lang('search.rooms')</li>
              <li>{{ $property->bedroom }} @lang('search.bedrooms')</li>
            </ul>
          </div>
          <div class="col-lg-6">
            <ul>
              <li>{{ $property->wc }} @lang('search.wc')</li>
              @isset($property->garage)
              <li>
                {{ $property->garage }} @lang('search.parking spaces')
              </li>
              @endisset
              @isset($property->pool)
              <li>
                @if($property->pool!=1)
                {{ $property->pool }} 
                @endif
                @lang('search.pool')
              </li>
              @endisset
              @if($property->beach==true)
              <li>@lang('search.sea view')</li>
              @endif
            </ul>
          </div>
        </div>
      </div>
      <div class="btn-cont">
        <a style="cursor: pointer;">
          <button style="font-size: 22px;" onclick="history.back(1);">< @lang('app.go back')</button>
        </a>
      </div>
      <div style="height: 50px; border-bottom: solid 2px #933;"></div>
    </section>

    <!--==========================
      Portfolio Section
    ============================-->
    <section id="portfolio"  class="section-bg" >

      <div class="detail-title-container">
        <p>@lang('app.related searchs')</p>
      </div>

      <div class="imovies-container">

        <div class="row">
        @foreach ($relateds as $related)
          <div class="col-lg-4">
            <div class="portfolio-wrap no-box-shadow">
              <figure>
                <a href="{{ route('properties.show', $related->id) }}">
                  <div class="image-container"><img src="/storage/{{ json_decode($related->images)[0] }}" class="img-fluid img-item" alt=""></div>
                </a>
                @if((Auth::check())&&(Auth::user()->hasVerifiedEmail()))
                  @php
                  $fav = false;
                  foreach($favourities as $favourite){
                    if($favourite->id == $related->id){
                      $fav = true;
                      break;
                    }
                  }
                  @endphp
                  
                  @if($fav == true)
                    <a class="set-favourite-link" data-id="{{ $related->id }}"><div class="fav-ico-div active"></div></a>
                  @else
                    <a class="set-favourite-link" data-id="{{ $related->id }}"><div class="fav-ico-div"></div></a>
                  @endif
                @elseif(Auth::check())
                  <a href="/email/verify"><div class="fav-ico-div"></div></a>
                @else
                  <a href="/login"><div class="fav-ico-div"></div></a>
                @endif
              </figure>
              <div class="imovie-bottom-container">
                <p class="title">{{ $related->name." | ".$related->type }}</p>
                <p class="cost">€ {{ number_format($related->cost, 0,"."," ") }}</p>
                <div class="features-ul">
                  <div>
                    <img src="/asset/img/area icon.png" alt="">{{ $related->area }}m<sup>2</sup>
                  </div>
                  @isset($related->bedroom)
                  <div>
                    <img src="/asset/img/bedroom icon.png" alt="">
                    @if($related->bedroom!=1)
                    {{ $related->bedroom }}
                    @endif
                  </div>
                  @endisset
                  @isset($related->room)
                  <div>
                    <img src="/asset/img/Lounge icon copy.png" alt="">
                    @if($related->room!=1)
                    {{ $related->room }}
                    @endif
                  </div>
                  @endisset
                  @isset($related->wc)
                  <div>
                    <img src="/asset/img/wc icon.png" alt="">
                    @if($related->wc!=1)
                    {{ $related->wc }}
                    @endif
                  </div>
                  @endisset
                  @isset($related->garage)
                  <div>
                    <img src="/asset/img/garage icon.png" alt="">
                    @if($related->garage!=1)
                    {{ $related->garage }}
                    @endif
                  </div>
                  @endisset
                  @isset($related->pool)
                  <div>
                    <img src="/asset/img/Pool icon.png" alt="">
                    @if($related->pool!=1)
                    {{ $related->pool }}
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
    </section><!-- #portfolio -->

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
function gotoPrint(){
  window.open('/properties/{{ $property->id }}/print', '_blank');
}

$(".set-favourite-link").click(function(){
  var $this = $(this);
  var pro_id = $this.data('id');
  $this.children('.fav-ico-div').toggleClass('active');
  $.ajax({
      url: "/favourite/" + pro_id,
      type: 'GET',
      headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
      data: {_method: 'get'},
      success: function (data) {
          if (data['status']==true) {
          } else {
            alert('Whoops Something went wrong!!');
            $this.children('.fav-ico-div').toggleClass('active');
          }
      },
      error: function (data) {
          alert(data.responseText);
      }
  });
});
</script>

@endpush

