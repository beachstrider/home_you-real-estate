@extends('layout')

@section('content')

  <header id="header">
    <div id="logo" class="pull-left">
      <a href="/">
        <img id="logo-img" src="/storage/{{ setting('site.logo') }}" alt="">
      </a>
    </div>
    
    <div class="container-fluid">
      <nav id="nav-menu-container">
        <ul class="nav-menu">
            <li class="active"><a href="/">@lang('app.home')</a></li>
            <li class="menu-has-children"><a href="#">@lang('app.properties')<i class="fa fa-angle-down" aria-hidden="true"></i></a>
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

        <div class="banner-logo">
          <img src="/storage/{{ setting('site.logo') }}" alt="">
        </div>
        <ol class="carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">
          @php
            $slider_i = 0;
            while(true){
              $slider_i++;
              $slider_image = str_replace('\\', '/', setting('slider.image'.$slider_i));
              if(($slider_image==null)||($slider_image=='')){
                break;
              }
              if($slider_i==1){
                $slider_active = 'active';
              }else{
                $slider_active = '';
              }
              echo '<div class="carousel-item '.$slider_active.'"><div class="carousel-background"><img src="/storage/'.$slider_image.'" alt=""></div></div>';
            }
          @endphp
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

    <!--==========================
      Featured Services Section
    ============================-->
    <section id="featured-services">

      <form action="/properties/search" method="get" role="form">
        <div class="row searchbox-div">
        
        @php
          $searchbox_count = 0;
        @endphp

          @if(setting('search.destrict')==1)
          @php $searchbox_count++; @endphp
          <div class="col-lg-2">
            <div class="form-group col-md-12">
              <label for="usr"><i class="fa fa-map-marker" aria-hidden="true" style="font-size: 18px;"></i>&nbsp;@lang('search.district')</label>
              <select type="text" name="district" class="form-control" placeholder="@lang('search.select')" value="{{ old('district') }}">
                <option selected value
                  @if(old('district')=="")
                    disabled style="display: none;"
                  @endif
                  >@lang('search.select')</option>
                @foreach ($districts as $district)
                  <option value="{{ $district->option }}" 
                    @if(old('district') == $district->option)
                        {{ "selected" }}
                    @endif
                  >
                  @if(App::getLocale()=='en')
                  {{ $district->display_en }}
                  @else
                  {{ $district->display_pt }}
                  @endif
                  </option>
                @endforeach
              </select>
            </div>
          </div>
          @endif

          @if(setting('search.township')==1)
          @php $searchbox_count++; @endphp
          <div class="col-lg-2">
            <div class="form-group col-md-12">
              <label for="usr"><i class="fa fa-map" aria-hidden="true" style="font-size: 18px;"></i>&nbsp;@lang('search.township')</label>
              <select type="text" name="township" class="form-control" placeholder="@lang('search.select')" value="{{ old('township') }}">
                <option selected value
                  @if(old('township')=="")
                    disabled style="display: none;"
                  @endif
                  >@lang('search.select')</option>
                @foreach ($townships as $township)
                  <option value="{{ $township->option }}" 
                    @if(old('township') == $township->option)
                        {{ "selected" }}
                    @endif
                  >
                  @if(App::getLocale()=='en')
                  {{ $township->display_en }}
                  @else
                  {{ $township->display_pt }}
                  @endif
                  </option>
                @endforeach
              </select>
            </div>
          </div>
          @endif

          @if(setting('search.parish')==1)
          @php $searchbox_count++; @endphp
          <div class="col-lg-2">
            <div class="form-group col-md-12">
              <label for="usr">@lang('search.parish')</label>
              <select type="text" name="parish" class="form-control" placeholder="@lang('search.select')" value="{{ old('parish') }}">
                <option selected value
                  @if(old('parish')=="")
                    disabled style="display: none;"
                  @endif
                  >@lang('search.select')</option>
                @foreach ($parishs as $parish)
                  <option value="{{ $parish->option }}" 
                    @if(old('parish') == $parish->option)
                        {{ "selected" }}
                    @endif
                  >
                  @if(App::getLocale()=='en')
                  {{ $parish->display_en }}
                  @else
                  {{ $parish->display_pt }}
                  @endif
                  </option>
                @endforeach
              </select>
            </div>
          </div>
          @endif

          @if(setting('search.type')==1)
          @php $searchbox_count++; @endphp
          <div class="col-lg-2">
            <div class="form-group col-md-12">
              <label for="usr"><i class="fa fa-th-list" aria-hidden="true"></i>&nbsp;@lang('search.type')</label>
              <select type="text" name="type" class="form-control" placeholder="@lang('search.select')" value="{{ old('type') }}">
                <option selected value
                  @if(old('type')=="")
                    disabled style="display: none;"
                  @endif
                  >@lang('search.select')</option>
                @foreach ($types as $type)
                  <option value="{{ $type->option }}" 
                    @if(old('type') == $type->option)
                        {{ "selected" }}
                    @endif
                  >
                  @if(App::getLocale()=='en')
                  {{ $type->display_en }}
                  @else
                  {{ $type->display_pt }}
                  @endif
                  </option>
                @endforeach
              </select>
            </div>
          </div>
          @endif

          @if(setting('search.state')==1)
          @php $searchbox_count++; @endphp
          <div class="col-lg-2">
            <div class="form-group col-md-12">
              <label for="usr"><i class="fa fa-th-list" aria-hidden="true"></i>&nbsp;@lang('search.state')</label>
              <select name="state" class="form-control" placeholder="@lang('search.select')" value="{{ old('state') }}">
                <option selected value
                  @if(old('state')=="")
                    disabled style="display: none;"
                  @endif
                  >@lang('search.select')</option>
                @foreach ($states as $state)
                  <option value="{{ $state->option }}" 
                    @if(old('state') == $state->option)
                        {{ "selected" }}
                    @endif
                  >
                  @if(App::getLocale()=='en')
                  {{ $state->display_en }}
                  @else
                  {{ $state->display_pt }}
                  @endif
                  </option>
                @endforeach
              </select>
            </div>
          </div>
          @endif

          @if(setting('search.business')==1)
          @php $searchbox_count++; @endphp
          <div class="col-lg-2">
            <div class="form-group col-md-12">
              <label for="usr"><i class="fa fa-th-list" aria-hidden="true"></i>&nbsp;@lang('search.business')</label>
              <select name="business" class="form-control" placeholder="@lang('search.business')" value="{{ old('business') }}">
                <option selected value
                  @if(old('business')=="")
                    disabled style="display: none;"
                  @endif
                  >@lang('search.select')</option>
                @foreach ($businesses as $business)
                  <option value="{{ $business->option }}" 
                    @if(old('business') == $business->option)
                        {{ "selected" }}
                    @endif
                  >
                  @if(App::getLocale()=='en')
                  {{ $business->display_en }}
                  @else
                  {{ $business->display_pt }}
                  @endif
                  </option>
                @endforeach
              </select>
            </div>
          </div>
          @endif

          @if(setting('search.price')==1)
          @php $searchbox_count+=2; @endphp
          <div class="col-lg-2">
            <div class="form-group col-md-12">
              <label for="usr"><i class="fa fa-usd" aria-hidden="true"></i>&nbsp;@lang('search.price')</label>
              <input type="text" name="price_min" class="form-control" placeholder="Min" value="{{ old('price_min') }}">
              <div class="validation"></div>
            </div>
          </div>

          <div class="col-lg-2">
            <div class="form-group col-md-12">
              <label for="usr">&nbsp;</label>
              <input type="text" name="price_max" class="form-control" placeholder="Max" value="{{ old('price_max') }}">
              <div class="validation"></div>
            </div>
          </div>
          @endif

          @if(setting('search.bedroom')==1)
          @php $searchbox_count++; @endphp
          <div class="col-lg-2">
            <div class="form-group col-md-12">
              <label for="usr"><i class="fa fa-bed" aria-hidden="true"></i>&nbsp;@lang('search.bedrooms')</label>
              <input type="text" name="bedroom" class="form-control" placeholder="4+" value="{{ old('bedroom') }}">
              <div class="validation"></div>
            </div>
          </div>
          @endif

          @if(setting('search.wc')==1)
          @php $searchbox_count++; @endphp
          <div class="col-lg-2">
            <div class="form-group col-md-12">
              <label for="usr"><i class="fa fa-bath" aria-hidden="true"></i>&nbsp;@lang('search.wc')</label>
              <input type="text" name="wc" class="form-control" placeholder="2+" value="{{ old('wc') }}">
              <div class="validation"></div>
            </div>
          </div>
          @endif

          @if(setting('search.keyword')==1)
          @php $searchbox_count++; @endphp
          <div class="col-lg-2">
            <div class="form-group col-md-12">
              <label for="usr">@lang('search.keywords')</label>
              <input type="text" name="keyword" class="form-control" placeholder="Ex: @lang('search.pool'), @lang('search.beach')" value="{{ old('keyword') }}">
              <div class="validation"></div>
            </div>
          </div>
          @endif
          
          @if($searchbox_count <= 5)
            @for($i=0; $i<5-$searchbox_count;$i++)
              <div class="col-lg-2"></div>
            @endfor
          @elseif($searchbox_count <= 11)
            @for($i=0; $i<11-$searchbox_count;$i++)
              <div class="col-lg-2"></div>
            @endfor
          @endif
          <div class="col-lg-2">
            <div class="form-group col-md-12">
              <label for="usr">&nbsp;</label>
              <input type="submit" class="form-control btn-search" value="@lang('search.search')" style="
              background: #9f1c20;
              border: 0;
              padding: 6px 30px;
              color: #fff;
              transition: 0.4s;
              cursor: pointer;
              ">
              <div class="validation"></div>
            </div>
          </div>
        </div>
      </form>

    </section><!-- #featured-services -->

    <!--==========================
      Portfolio Section
    ============================-->
    <section id="portfolio"  class="section-bg" >
      <div class="container">

        <header class="section-header">
          <h3 class="section-title">@lang('home.featured properties')</h3>
        </header>

        <div class="row portfolio-container">
        @foreach($featureds as $featured)  
          <div class="col-lg-4 col-md-6 home-ims">
            <div class="portfolio-wrap home-img-wrap">
              <figure>
                <a href="{{ route('properties.show', $featured->id) }}">
                  <div class="image-conttt"><img src="/storage/{{ json_decode($featured->images)[0] }}" class="img-fluid img-item111" alt=""></div>
                </a>

                @if((Auth::check())&&(Auth::user()->hasVerifiedEmail()))
                  @php
                  $fav = false;
                  reset($favourities);
                  foreach($favourities as $favourite){
                    if($favourite->id == $featured->id){
                      $fav = true;
                      break;
                    }
                  }
                  @endphp
                  
                  @if($fav == true)
                    <a class="set-favourite-link" data-id="{{ $featured->id }}"><div class="fav-ico-div active"></div></a>
                  @else
                    <a class="set-favourite-link" data-id="{{ $featured->id }}"><div class="fav-ico-div"></div></a>
                  @endif
                @elseif(Auth::check())
                  <a href="/email/verify"><div class="fav-ico-div"></div></a>
                @else
                  <a href="/login"><div class="fav-ico-div"></div></a>
                @endif

              </figure>
            </div>
          </div>
        @endforeach
        </div>

      </div>
    </section><!-- #portfolio -->

    <section id="blog-div">
      <div class="container">
        <p class="home-blog-p">
        @if(App::getLocale()=="en")
        {!! nl2br(setting('site.description_en')) !!}
        @elseif(App::getLocale()=="pt")
        {!! nl2br(setting('site.description_pt')) !!}
        @endif
        </p>
        <p class="home-blog-p last">
          <b>@lang('home.welcome home')</b>
        </p>
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