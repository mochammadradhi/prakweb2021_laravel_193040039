

@extends('layouts.main')
@section('container')
<h1>Posts Category :  {{ $category}}</h1>
<div class="card text-center">
    <div class="card-header">
    Category : {{ $category}}
    </div>
    @foreach ($posts as $pst)
    <div class="card-body">
        <h5 class="card-title"> {{$pst->title}} </h5>
        <img src="../img/{{$pst->img}} "  class="post-img mb-4" style="width:250px">
        <p class="card-text blockquote">{{$pst->exrt}}</p>
        <p class="card-text blockquote-footer">{{$pst->author}}</p>
        <a href="/posts/{{$pst->slug}}" class="btn btn-primary">Read More</a>
      </div>
      <div class="card-footer text-muted">
        {{$pst->created_at}}
      </div>
    @endforeach
  </div>
@endsection
 
