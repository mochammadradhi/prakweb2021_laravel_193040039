

@extends('layouts.main')
@section('container')
<h1>{{$title}}</h1>

<div class="row justify-content-center">
  <div class="col-md-6">
    <form action="/blog">
      @if (request('category'))
      <input type="hidden" name="category" value="{{request('category')}}">
      @endif
      @if (request('author'))
      <input type="hidden" name="author" value="{{request('author')}}">
      @endif
      <div class="input-group mb-3">
        <input type="text" class="form-control" placeholder="Search..."  name="search" value="{{request('search')}}">
        <button class="btn btn-primary" type="submit">Search</button>
      </div>
    </form>
  </div>
</div>

@if ($posts->count())
<div class="card mb-3">
  @if ($posts[0]->image)
        <div style="max-height: 350px; overflow:hidden;">
          <img src="{{asset('storage/' . $posts[0]->image)}}" class="card-img-top" alt="...">
        </div>
        @else
        <img src="https://source.unsplash.com/1200x300/?{{$posts[0]->category->name}}" class="card-img-top" alt="...">
        @endif
 
  <div class="card-body">
    <a href="/posts/{{$posts[0]->slug}}" class="text-decoration-none text-dark"><h5 class="card-title"> {{$posts[0]->title}} </h5></a>
    <p class="card-text blockquote-footer">By <a href="/blog?author={{$posts[0]->author->username}}">{{$posts[0]->author->name}}</a> in <a href="/blog?category={{$posts[0]->category->slug}}">
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
                <div class="position-absolute px-3 py-2 text-white " style="background-color: rgba(0,0,0,0.7)"><a href="/blog?category={{$pst->category->slug}}" class="text-decoration-none text-white">{{$pst->category->name}}</a></div>
                @if ($pst->image)
                <div style="max-height: 350px; overflow:hidden;">
                  <img src="{{asset('storage/' . $pst->image)}}" class="card-img-top" alt="...">
                </div>
                @else
                <img src="https://source.unsplash.com/450x650/?{{$pst->category->name}}" class="img-fluid rounded-start" alt="...">
                @endif
               
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">{{ $pst->title }}</h5>
                  <p class="card-text">{{ $pst->exrt }}</p>
                  <p class="card-text blockquote-footer">By <a href="/blog?author={{$pst->author->username}}">{{$pst->author->name}}</a> 
                    <small class="text-muted"> {{ $pst->created_at->diffForHumans() }}</small></p>
                  <a href="/posts/{{ $pst->slug }}" class="btn btn-primary">Read More</a>
                </div>
              </div>
            </div>
          </div>
        </div>
    @endforeach
    
  </div>
  <div class="d-flex justify-content-end">
    {{$posts->links()}}
  
  </div>
  </div>
@endsection
 
