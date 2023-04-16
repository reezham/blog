@extends('layout.main')

@section('container')

<div class="row justify-content-center">
  <div class="col-md-4">
    @if (session()->has('loginError'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
          {{ session('loginError') }}
        </div>
    @endif 
    <main class="form-signin w-100 m-auto">
      <h1 class="h3 mb-3 fw-normal text-center">Please Login</h1>
  <form action="/login" method="POST">
    @csrf
    <img class="mb-4 " src="../assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">

    <div class="form-floating">
    <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" autofocus required>
      <label for="email">Email address</label>
      @error('email')
          <div class="invalid-feedback">
            {{ $message }}
          </div>

      @enderror
    </div>
    <div class="form-floating mt-3">
      <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
      <label for="password">Password</label>
    </div>

    <button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
    <small class="d-block text-center">Belum Punya Akun? <a href="/register">Register Sekarang</a></small>
  </form>
</main>
  </div>
</div>

{{-- <link href="/css/login.css" rel="stylesheet">
<div class="kotak">
  
</div>
<div class="container">
  @if (session()->has('loginError'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
          {{ session('loginError') }}
        </div>
    @endif 
		<form method="POST" action="/login">
      @csrf
		<div class="box">
		<div class="row contentForm">
			<div class="col-sm-12 col-md-6 col-lg-6">
				<img data-aos="fade-in" data-aos-duration="1000"
    data-aos-easing="ease-in-out" width=175 height=500 src="/img/PD8XJx0RYYm4i5OPpGNZ9haAvRq0hraaaRpB9XCM.jpg" alt="" class="img-fluid">
</div>
<div class="col-sm-12 col-md-6 col-lg-6">
	<h1 class="h3 mb-3 fw-normal text-center">Please Login</h1>
<form class="mt-3">
  <div class="form-floating">
    <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" autofocus required>
      <label for="email">Email address</label>
      @error('email')
          <div class="invalid-feedback">
            {{ $message }}
          </div>

      @enderror
    </div>
  <div class="form-floating mt-3">
      <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
      <label for="password">Password</label>
    </div><br>

    <button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
    <small class="d-block text-center">Belum Punya Akun? <a href="/register">Register Sekarang</a></small>
  </form>
</form>
</div>
</div>
</div>
</form>
</div> --}}



@endsection

