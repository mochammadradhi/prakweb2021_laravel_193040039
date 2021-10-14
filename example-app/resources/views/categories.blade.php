

@extends('layouts.main')
@section('container')

<div class="card">
    <div class="card-header">
        <h1>Posts Categories</h1>
    </div>
    @foreach ($categories as $category)
    <div class="card-body">
        <h5 class="card-title"> {{$category->title}} </h5>
        <a href="/categories/{{$category->slug}}">{{$category->name}}</a>
      </div>
     
    @endforeach
  </div>
@endsection
 
