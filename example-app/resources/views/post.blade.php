
@extends('layouts.main')
@section('container')
    <div class="card text-center">
        <div class="card-header">
            Single Blog
          </div>
        <div class="card-body">
            <h5 class="card-title"> {{$post->title}} </h5>
            <img src="../img/{{$post->img}} "  class="post-img mb-4" style="width:250px">
            <p class="card-text blockquote">{!! $post->body !!}
            <p class="card-text blockquote-footer">{{$post->author}}</p>
            <a href="/blog" class="btn btn-primary">Back to Posts</a>
          </div>
    </div>
@endsection