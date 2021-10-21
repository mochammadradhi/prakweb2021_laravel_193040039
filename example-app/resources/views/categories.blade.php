

@extends('layouts.main')
@section('container')

<div class="card">
    <div class="card-header">
        <h1>Categories</h1>
    </div>
    <div class="container">
      <div class="row p-4">
        @foreach ($categories as $category)
        <div class="col-md-4 p-4">
          <div class="card bg-dark text-white">
            <a href="/categories/{{$category->slug}}" class="text-decoration-none">
              <img src="https://source.unsplash.com/300x300?{{$category->name}}" class="card-img" alt="...">
              <div class="card-img-overlay d-flex align-items-center p-0">
                <h5 class="card-title text-center flex-fill p-4 text-dark" style="background-color: rgba(255, 255, 255, 0.4)">{{$category->name}}</h5>
              </div>
            </a>
          </div>
        </div>
        @endforeach
      </div>
    </div>
    
  </div>
@endsection
 
