
@extends('dashboard.layouts.main')


@section('container')
<div class="card">
    <div class="card-header">
        Single Blog
      </div>
    <div class="card-body">
        <h1 class="card-title text-center"> {{$post->title}} </h1>
        @if ($post->image)
        <div style="max-height: 350px; overflow:hidden;">
          <img src="{{asset('storage/' . $post->image)}}" class="card-img-top" alt="...">
        </div>
        @else
        <img src="https://source.unsplash.com/1200x300/?{{$post->category->name}}" class="card-img-top" alt="...">
        @endif
        
          <article class="my-4 mb-4 align-baseline">{!! $post->body !!}</article>
          <p class="card-text blockquote-footer">By <a href="/authors/{{$post->author->username}}">{{$post->author->name}}</a> in <a href="/categories/{{$post->category->name}}">{{$post->category->name}}</a></p>
          <a href="/dashboard/posts/" class="btn btn-primary"><span data-feather="arrow-left"></span> Back to My Posts</a>
          <a href="/dashboard/posts/{{$post->slug}}/edit" class="btn btn-warning">
            <span data-feather="edit"></span>
            Edit
          </a>  
          <form action="/dashboard/posts{{$post->slug}}" method="post" class="d-inline">
            @method('delete')
            @csrf
            <button class="btn bg-danger" onclick="return confirm('Are you sure?')"><span data-feather="x-circle"> Delete</span></button>
            </form>
      </div>
</div>
@endsection