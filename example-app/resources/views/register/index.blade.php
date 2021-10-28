@extends('layouts.main')
    @section('container')
    <div class="row justify-content-center mt-5">
      <div class="col-md-5">
        <main class="form-registration">
          <form action="/register" method="POST">
            @csrf
            <h1 class="h3 mb-3 fw-normal text-center">Registration Form</h1>
            <div class="form-floating text-left mb-3">
                <label for="floatingInput">Name</label>
                <input type="text" name="name" id="name" class="form-control @error('name') is-invalid @enderror" id="floatingInput" placeholder="Name" value = "{{old('name')}}" required>
                @error('name')
                <div class="invalid-feedback">
                  {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-floating text-left mb-3">
                <label for="floatingInput">Username</label>
                <input type="text" name="username" id="username" class="form-control @error('username') is-invalid @enderror" id="floatingInput" placeholder="Username" value = "{{old('username')}}" required>
                @error('username')
                <div class="invalid-feedback">
                  {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-floating text-left mb-3">
              <label for="floatingInput">Email address</label>
              <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="floatingInput" placeholder="name@example.com" value = "{{old('email')}}" required>
              @error('email')
                <div class="invalid-feedback">
                  {{$message}}
                </div>
                @enderror
            </div>
            <div class="form-floating text-left">
              <label for="floatingPassword">Password</label>
              <input type="password" name="password" class="form-control @error('password') is-invalid @enderror" id="floatingPassword" placeholder="Password" required>
              @error('password')
                <div class="invalid-feedback">
                  {{$message}}
                </div>
                @enderror
            </div>
        
            <small class="d-block mt-3 mb-3">Do you have account? <a href="/login">Login</a></small>
            <button class="w-100 btn btn-lg btn-warning" type="submit">Register</button>
            
          </form>
        </main>
      </div>
    </div>
        
    @endsection</h1>