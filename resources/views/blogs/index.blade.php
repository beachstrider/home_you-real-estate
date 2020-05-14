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
            <li><a href="/aboutus">@lang('app.about us')</a></li>
            <li class="active"><a href="/blogs">@lang('app.blog')</a></li>
            <li><a class="contact-a">@lang('app.contact us')</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <main id="main">

    <section id="blog-conc-banner-container"></section>

    <section id="blog-conc-container">
        <p class="title">@lang('app.real estate blog')</p>
        <p class="small-title">@lang('app.curiosities, news and tips')</p>
        <p class="content">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisi est sit amet facilisis magna etiam tempor orci eu. Mattis rhoncus urna neque viverra justo nec. Quis varius quam quisque id diam. Vestibulum lectus mauris ultrices eros in. 
        </p>
    </section>

    <!--==========================
      Portfolio Section
    ============================-->
    <section id="portfolio"  class="section-bg" style="padding-top: 0;">
      <div class="imovies-container">
        <div class="row">
          <div class="col-lg-12">
              <div style="height: 100px; border-top: solid 1px #933;"></div>
          </div>

          @foreach ($blogs as $blog)
          <div class="col-lg-4">
            <div class="portfolio-wrap no-box-shadow">
              <figure>
                <a href="{{ route('blogs.show', $blog->id) }}">
                  <div class="image-container"><img src="/storage/{{ $blog->thumbnail }}" class="img-fluid img-item" alt=""></div>
                </a>
              </figure>
              <div class="imovie-bottom-container">
                <p class="title">{{ $blog->title }}</p>
                <a href="{{ route('blogs.show', $blog->id) }}"><p class="bg-rd-p">@lang('app.read more')</p></a>
                @php $b_date = getDate(strtotime($blog->created_at));@endphp
                <p class="bg-date-p">{{ $b_date['mday']." ".$b_date['month']." ".$b_date['year'] }}</p>
              </div>
            </div>
          </div>
          @endforeach
        </div>

      </div>

      <div class="pagination-container">
        {{ $blogs->links() }}
      </div>
    </section><!-- #portfolio -->
    <div style="height: 100px;"></div>
  </main>

@endsection