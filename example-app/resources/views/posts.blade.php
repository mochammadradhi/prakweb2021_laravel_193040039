

@extends('layouts.main')
@section('container')
<h1>Posts Page</h1>
<div class="card text-center">
    <div class="card-header">
      Featured Blog
    </div>
    @foreach ($posts as $pst)
    <div class="card-body">
        <h5 class="card-title"> {{$pst['title']}} </h5>
        <img src="img/{{$pst['img']}} "  class="post-img mb-4">
        <p class="card-text blockquote">{{$pst['body']}}</p>
        <p class="card-text blockquote-footer">{{$pst['author']}}</p>
        <a href="/posts/{{$pst['slug']}}" class="btn btn-primary">Read More</a>
      </div>
      <div class="card-footer text-muted">
        2 days ago
      </div>
    @endforeach
  </div>
@endsection
 
