

@extends('layouts.main')
@section('container')
<h1>{{$title}}</h1>
<div class="card text-center">
    <div class="card-header">
      Featured Author
    </div>
    @foreach ($posts as $pst)
    <div class="card-body">
        <h1 class="card-title"> {{$pst->title}} </h1>
        <img src="https://source.unsplash.com/1200x300/?{{$pst->category->name}}"  class="card-img-top mb-4">
        <p class="card-text blockquote">{{$pst->exrt}}</p>
        <p class="card-text blockquote-footer">By <a href="/authors/{{$pst->author->username}}">{{$pst->author->name}}</a> in <a href="/categories/{{$pst->category->slug}}">{{$pst->category->name}}</a></p>
        <a href="/posts/{{$pst->slug}}" class="btn btn-primary">Read More</a>
      </div>
      <div class="card-footer text-muted">
        {{$pst->created_at->diffForHumans()}}
      </div>
    @endforeach
  </div>
@endsection
 
