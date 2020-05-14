@extends('layout')

@section('content')

  <header id="header-fixed" class="header-scrolled">
    <div id="logo" class="pull-left">
      <a href="/">
        <img id="logo-img" src="/storage/{{ setting('site.logo') }}" alt="">
      </a>
    </div>
    
    <div class="container-fluid" style="position: relative;">
      <nav id="nav-menu-container">
        <ul class="nav-menu">
            <li><a href="/">@lang('app.home')</a></li>
            <li class="menu-has-children active"><a href="#">@lang('app.properties')<i class="fa fa-angle-down" aria-hidden="true"></i></a>
              <ul class="main-sub-manu-ul">
                <li><a href="#">@lang('app.all properties')</a></li>
                <li><a href="/favourities" style="color: #000;">@lang('app.favourities')</a></li>
              </ul>
            </li>
            <li><a href="/aboutus">@lang('app.about us')</a></li>
            <li><a href="/blogs">@lang('app.blog')</a></li>
            <li><a class="contact-a">@lang('app.contact us')</a></li>
        </ul>
      </nav>
      <div class="orderby-cont">
        <select name="orderby" class="form-control orderby-select">
          <option disabled 
            @if($orderby=="") selected @endif 
           value style="display: none;">@lang('search.sort by')</option>
          <option value="h2l" 
            @if($orderby=="cost/desc") selected @endif
          >@lang('search.highest to lowest price')</option>
          <option value="l2h" 
            @if($orderby=="cost/asc") selected @endif
          >@lang('search.lowest to highest price')</option>
        </select>
      </div>
    </div>
  </header><!-- #header -->

  <main id="main">

    <!--==========================
      Featured Services Section
    ============================-->
    <section id="featured-services" class="property-search-box">

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

    <div id="_blank_1" style="height: 207px;"></div>
    <!--==========================
      Portfolio Section
    ============================-->
    <section id="portfolio"  class="section-bg" >

      <div class="orderby-cont for-mobile">
        <select name="orderby" class="form-control orderby-select">
          <option disabled 
            @if($orderby=="") selected @endif 
           value style="display: none;">@lang('search.sort by')</option>
          <option value="cost/desc" 
            @if($orderby=="cost/desc") selected @endif
          >@lang('search.highest to lowest price')</option>
          <option value="cost/asc" 
            @if($orderby=="cost/asc") selected @endif
          >@lang('search.lowest to highest price')</option>
          <option value="created_at/desc" 
            @if($orderby=="created_at/desc") selected @endif
          >@lang('search.latest to oldest')</option>
          <option value="created_at/asc" 
            @if($orderby=="created_at/asc") selected @endif
          >@lang('search.oldest to latest')</option>
        </select>
      </div>

      <div class="imovies-container">
        <div class="row">
          @foreach ($properties as $property)
          <div class="col-lg-4">
            <div class="portfolio-wrap no-box-shadow">
              <figure>
                <a href="{{ route('properties.show', $property->id) }}">
                  <div class="image-container"><img src="/storage/{{ json_decode($property->images)[0] }}" class="img-fluid img-item" alt=""></div>
                </a>
                @if((Auth::check())&&(Auth::user()->hasVerifiedEmail()))
                  @php
                  $fav = false;
                  foreach($favourities as $favourite){
                    if($favourite->id == $property->id){
                      $fav = true;
                      break;
                    }
                  }
                  @endphp
                  
                  @if($fav == true)
                    <a class="set-favourite-link" data-id="{{ $property->id }}"><div class="fav-ico-div active"></div></a>
                  @else
                    <a class="set-favourite-link" data-id="{{ $property->id }}"><div class="fav-ico-div"></div></a>
                  @endif
                @elseif(Auth::check())
                  <a href="/email/verify"><div class="fav-ico-div"></div></a>
                @else
                  <a href="/login"><div class="fav-ico-div"></div></a>
                @endif
              </figure>
              <div class="imovie-bottom-container">
                <p class="title">{{ $property->name." | ".$property->type }}</p>
                <p class="cost">€ {{ number_format($property->cost, 0,"."," ") }}</p>
                <div class="features-ul">
                  <div>
                    <img src="/asset/img/area icon.png" alt="">{{ $property->area }}m<sup>2</sup>
                  </div>
                  @isset($property->bedroom)
                  <div>
                    <img src="/asset/img/bedroom icon.png" alt="">
                    @if($property->bedroom!=1)
                    {{ $property->bedroom }}
                    @endif
                  </div>
                  @endisset
                  @isset($property->room)
                  <div>
                    <img src="/asset/img/Lounge icon copy.png" alt="">
                    @if($property->room!=1)
                    {{ $property->room }}
                    @endif
                  </div>
                  @endisset
                  @isset($property->wc)
                  <div>
                    <img src="/asset/img/wc icon.png" alt="">
                    @if($property->wc!=1)
                    {{ $property->wc }}
                    @endif
                  </div>
                  @endisset
                  @isset($property->garage)
                  <div>
                    <img src="/asset/img/garage icon.png" alt="">
                    @if($property->garage!=1)
                    {{ $property->garage }}
                    @endif
                  </div>
                  @endisset
                  @isset($property->pool)
                  <div>
                    <img src="/asset/img/Pool icon.png" alt="">
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
        @if(sizeof($properties)==0)
          <div class="text-noresult-div">@lang('search.no result')</div>
        @endif
      </div>
    </section><!-- #portfolio -->

    <section id="legenda-wrapper">
      <p class="title">@lang('search.superscription')</p>
      <div class="content">
        <span class="sea"><img src="/asset/img/area icon.png" alt="">&nbsp; @lang('search.area')</span>
        <span class="roo"><img src="/asset/img/Lounge icon copy.png" alt="">&nbsp; @lang('search.rooms')</span>
        <span class="bed"><img src="/asset/img/bedroom icon.png" alt="">&nbsp; @lang('search.bedrooms')</span>
        <span class="wc"><img src="/asset/img/wc icon.png" alt="">&nbsp; @lang('search.wc')</span>
        <span class="gar"><img src="/asset/img/garage icon.png" alt="">&nbsp; @lang('search.garage')</span>
        <span class="poo"><img src="/asset/img/Pool icon.png" alt="">&nbsp; @lang('search.pool')</span>
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
      var width_win = window.innerWidth;
      
      if(width_win < 768) return;

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

    $(".orderby-select").change(function(){
      var by = $(this).val();
      
      window.location.href = "/properties/orderby/" + by;

    });

  </script>

  @endpush