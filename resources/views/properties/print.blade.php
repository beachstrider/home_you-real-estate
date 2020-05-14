<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  <meta charset="utf-8">
  <title>HOME & YOU</title>
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
  <link href="/asset/css/style.css" rel="stylesheet">
  <link href="/asset/css/main.css" rel="stylesheet">

  @stack('csss')

</head>

<body>
    @php
      $property->images = json_decode(str_replace("\\","/", $property->images));
    @endphp

    <div class="pr-container">
      <div class="pr-content">
        <a id="pr-a" href="#" style="color: #000;" onclick="c_print();">
          <div id="pr-c" class="wrapper">
            <div class="pr-logo" >
              <img src="/asset/img/HomeandYou logo_for_print1.png">
            </div>
            <div class="pr-image-banner">
              <img src="/storage/{{ $property->images[0] }}">
            </div>
            <div class="pr-thumbnails">
              <div>
                <img src="/storage/{{ $property->images[1] }}" style="height: 100%;">
              </div>
              <div>
                <img src="/storage/{{ $property->images[2] }}" style="height: 100%;">
              </div>            
            </div>
            <div class="pr-description">
             <img class="pr-des-back-img" src="/asset/img/backg_for_print.png">
              <div class="pr-desc">
                <div class="pr-name-bar">
                  <p class="na">{{ $property->name }}</p>
                  <p class="cost">€ {{ number_format($property->cost, 0,"."," ") }}</p>
                </div>
                <div class="pr-id-bar">
                  <p class="idd">
                    @lang('app.reference'): MS37452
                  </p>
                </div>
                <div class="pr-desc-icons">
                  <p><img src="/asset/img/area icon.png" alt="">{{ $property->area }}m<sup>2</sup></p>
                  @isset($property->bedroom)
                  <p><img src="/asset/img/bedroom icon.png" alt="">
                      @if($property->bedroom!=1)
                        {{ $property->bedroom }}
                      @endif
                  </p>
                  @endisset
                  @isset($property->room)
                    <p><img src="/asset/img/Lounge icon copy.png" alt="">
                      @if($property->room!=1)
                        {{ $property->room }}
                      @endif
                    </p>
                  @endisset
                  @isset($property->wc)
                  <p><img src="/asset/img/wc icon.png" alt="">
                      @if($property->wc!=1)
                        {{ $property->wc }}
                      @endif
                  </p>
                  @endisset
                  @isset($property->garage)
                  <p><img src="/asset/img/garage icon.png" alt="">
                      @if($property->garage!=1)
                        {{ $property->garage }}
                      @endif
                  </p>
                  @endisset
                  @isset($property->pool)
                  <p><img src="/asset/img/Pool icon.png" alt="">
                      @if($property->pool!=1)
                        {{ $property->pool }}
                      @endif
                  </p>
                  @endisset
                </div>
                <p class="pr-descr">
                  {{ $property->description }}
                </p>
              </div>
             
            </div>
          </div>
        </a>
      </div>
    </div>

</body>

<script>
  c_print();

  function c_print(){
    window.print();
    return true;
  }

</script>

</html>