@extends('layouts.main')

@section('container')
<div class="container">
    <h1>About Page</h1>
    <img src="img/{{ $img }}" alt={{$name}} class="about-img">
    <h2>Hello, My Name is {{$name}}!</h2>
    <h3>i'm Student at Pasundan University | My Major is Computer Science</h3>
    <a href="https://www.gmail.com">
        <h5>{{$email}}</h5>
    </a>
</div>

<script src="js/script.js"></script>
@endsection

    
