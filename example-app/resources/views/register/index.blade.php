@extends('layouts.main')
    @section('container')
    <div class="row justify-content-center mt-5">
      <div class="col-md-5">
        <main class="form-registration">
          <form>
            
            <h1 class="h3 mb-3 fw-normal text-center">Registration Form</h1>
            <div class="form-floating text-left mb-3">
                <label for="floatingInput">Name</label>
                <input type="text" name="name" id="name" class="form-control" id="floatingInput" placeholder="Name">
            </div>
            <div class="form-floating text-left mb-3">
                <label for="floatingInput">Username</label>
                <input type="text" name="usenrame" id="username" class="form-control" id="floatingInput" placeholder="Username">
            </div>
            <div class="form-floating text-left mb-3">
              <label for="floatingInput">Email address</label>
              <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
            </div>
            <div class="form-floating text-left">
              <label for="floatingPassword">Password</label>
              <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
            </div>
        
            <small class="d-block mt-3 mb-3">Do you have account? <a href="/login">Login</a></small>
            <button class="w-100 btn btn-lg btn-warning" type="submit">Register</button>
            
          </form>
        </main>
      </div>
    </div>
        
    @endsection</h1>