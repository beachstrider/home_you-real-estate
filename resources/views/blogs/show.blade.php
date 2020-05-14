@extends('layout')

@section('content')

  <header id="header-fixed" class="header-scrolled" style="z-index: 900;">
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
            <li><a href="/aboutus">@lang('app.about us')</a></li>
            <li><a href="/blogs">@lang('app.blog')</a></li>
            <li><a class="contact-a">@lang('app.contact us')</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <main id="main">

    <section id="blog-detail-banner-container" style="background-image: url('/storage/{{ $blog->banner }}');">
        <div class="title">
            <p>{{ $blog->title }}</p>
        </div>
    </section>

    <section id="blog-detail-container">
        <p class="title">{{ $blog->subtitle }}</p>
        <div class="content">
          @php echo $blog->content; @endphp
        </div>
    </section>
  </main>

@endsection