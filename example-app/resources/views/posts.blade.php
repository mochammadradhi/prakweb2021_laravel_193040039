

@extends('layouts.main')
@section('container')
<h1>{{$title}}</h1>
@if ($posts->count())
<div class="card mb-3">
  <img src="https://source.unsplash.com/1200x300/?{{$posts[0]->category->name}}" class="card-img-top" alt="...">
  <div class="card-body">
    <a href="/posts/{{$posts[0]->name}}" class="text-decoration-none text-dark"><h5 class="card-title"> {{$posts[0]->title}} </h5></a>
    <p class="card-text blockquote-footer">By <a href="/authors/{{$posts[0]->author->username}}">{{$posts[0]->author->name}}</a> in <a href="/categories/{{$posts[0]->category->slug}}">
      {{$posts[0]->category->name}}</a>
      <div class="badge bg-warning text-wrap" style="width: 8rem;">
        {{$posts[0]->created_at->diffForHumans()}}
      </div></p>
      <p class="card-text"> {{$posts[0]->exrt}} </p>    
      <a href="/posts/{{$posts[0]->slug}}" class="btn btn-primary">Read More</a>
      <div class="blockquote-footer mt-4 mb-4"></div>
  </div>
@else
    <p class="text-center fs-4">No post found. </p>
@endif
<div class="container">
  <div class="row">
    @foreach ($posts->skip(1) as $pst)
        <div class="col-md-6">
          <div class="card mb-3" style="max-width: 540px;">
            <div class="row g-0">
              <div class="col-md-4">
                <div class="position-absolute px-3 py-2 text-white " style="background-color: rgba(0,0,0,0.7)"><a href="/categories/{{$pst->category->slug}}" class="text-decoration-none text-white">{{$pst->category->name}}</a></div>
                <img src="https://source.unsplash.com/450x750/?{{$pst->category->name}}" class="img-fluid rounded-start" alt="...">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">{{$pst->title}}</h5>
                  <p class="card-text">{{$pst->exrt}}</p>
                  <p class="card-text blockquote-footer">By <a href="/authors/{{$pst->author->username}}">{{$pst->author->name}}</a> 
                    <small class="text-muted"> {{$pst->created_at->diffForHumans()}}</small></p>
                  <a href="/posts/{{$pst->slug}}" class="btn btn-primary">Read More</a>
                </div>
              </div>
            </div>
          </div>
        </div>
    @endforeach
  </div>
  </div>
@endsection
 
