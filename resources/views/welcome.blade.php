<div class="container">
<div class="row" align="center">
<h2>Google Charts in Laravel</h2>
@guest
<li class="last"><a href="{{ route('login') }}">{{ __('Login') }}</a></li>
@if (Route::has('register'))
<li class="last"><a href="{{ route('register') }}">{{ __('Register') }}</a></li>
@endif                        
@endguest
</div>
</div>