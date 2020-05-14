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
          <li><a href="/blogs">@lang('app.blog')</a></li>
          <li><a class="contact-a">@lang('app.contact us')</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <main id="main">

    <section id="sel-req-div">
        <div class="form-wrapper">
            <p class="title">@lang('app.ask for rating')</p>
            <p class="desc">
            @if(App::getLocale()=="en")
            {!! nl2br(setting('site.text_en_askforrating')) !!}
            @elseif(App::getLocale()=="pt")
            {!! nl2br(setting('site.text_pt_askforrating')) !!}
            @endif
            </p>

            <div class="form">
                <form action="{{ route('askforrating.store') }}" method="POST" role="form" class="contactForm">
                  @csrf
                  @if (session('status'))
                  <div id="sendmessage" style="display: block; color: #9f1c20; border-color: #9f1c20;">@lang('app.message sent')</div>
                  @else
                  <div class="form-row">
                      <div class="form-group col-md-4">
                          <div class="form-group">
                              <input type="text" name="name" class="form-control" id="name" placeholder="@lang('app.name')" required>
                              <div class="validation">@error('name') {{ $message }} @enderror</div>
                          </div>
                          <div class="form-group">
                              <input type="tel" name="phone" class="form-control" id="telephone" placeholder="@lang('app.telephone')" required>
                              <div class="validation">>@error('phone') {{ $message }} @enderror</div>
                          </div>
                          <div class="form-group">
                              <input type="email" name="email" class="form-control" id="email" placeholder="Email" required>
                              <div class="validation">>@error('email') {{ $message }} @enderror</div>
                          </div>
                      </div>
                      <div class="form-group col-md-8">
                          <div class="form-group">
                              <textarea class="form-control" name="message" rows="5" required placeholder="@lang('app.leave message text')" style="height: 146px;"></textarea>
                              <div class="validation">>@error('message') {{ $message }} @enderror</div>
                          </div>
                      </div>
                  </div>
                  <div class="text-right">
                      <button type="submit">@lang('app.send message')</button>
                  </div>
                  @endif
                </form>
            </div>
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
    var input = document.querySelector("#telephone");
    window.intlTelInput(input);

</script>

@endpush