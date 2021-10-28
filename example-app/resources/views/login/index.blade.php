@extends('layouts.main')
@section('container')
<div class="row justify-content-center mt-5">
  <div class="col-md-5">
    @if(session()->has('success'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
      <strong> {{session('success')}} </strong>
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    @endif

    @if(session()->has('loginErrors'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
      <strong> {{session('loginErrors')}} </strong>
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    @endif
    
    <main class="form-signin">
      <form action="/login" method="POST">
        @csrf
        <h1 class="h3 mb-3 fw-normal text-center">Sign in</h1>
    
        <div class="form-floating text-left mb-3">
          <label for="email">Email address</label>
          <input type="email" name="email" class="form-control @error('email') is-invalid @enderror"  id="email" placeholder="name@example.com" autofocus>
          @error('email')
                <div class="invalid-feedback">
                  {{$message}}
                </div>
                @enderror
        </div>
        <div class="form-floating text-left">
          <label for="password">Password</label>
          <input type="password" name="password" class="form-control" id="password" placeholder="Password" autofocus>
          @error('password')
                <div class="invalid-feedback">
                  {{$message}}
                </div>
                @enderror
        </div>
    
        <small class="d-block mt-3 mb-3">Not registered yet? <a href="/register">Register Now!</a></small>
        <button class="w-100 btn btn-lg btn-warning" type="submit">Sign in</button>
        
      </form>
    </main>
  </div>
</div>
    
@endsection