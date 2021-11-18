@extends('dashboard.layouts.main')


@section('container')
<div class="card">
    <div class="card-header">
        Single Blog
      </div>
    <div class="card-body">
        <h1 class="card-title text-center"> {{$post->title}} </h1>
        <img src="https://source.unsplash.com/1200x300/?{{$post->category->name}}" class="card-img-top" alt="...">
          <article class="my-4 mb-4 align-baseline">{!! $post->body !!}</article>
          <p class="card-text blockquote-footer">By <a href="/authors/{{$post->author->username}}">{{$post->author->name}}</a> in <a href="/categories/{{$post->category->name}}">{{$post->category->name}}</a></p>
          <a href="/blog" class="btn btn-primary"><span data-feather="arrow-left"></span> Back to My Posts</a>
          <a href="" class="btn btn-warning">
            <span data-feather="edit"></span>
            Edit
          </a>
          <a href="" class="btn btn-danger">
            <span data-feather="x-circle"></span>
            Delete
          </a>
      </div>
</div>
@endsection