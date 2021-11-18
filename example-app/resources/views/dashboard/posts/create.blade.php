@extends('dashboard.layouts.main')


@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Create New Posts</h1>
    
  </div>
  <div class="col-lg-8">
    <form action="post" action="/dashboard/posts">
        @csrf
        <div class="mb-3">
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" class="form-control" id="title" name="title">
              </div>
        </div>

        <div class="mb-3">
            <div class="form-group">
               <label for="slug">Slug</label>
               <input type="text" class="form-control" id="slug" name="slug">
             </div>
        </div>
       
        <button type="submit" class="btn btn-primary">Create New Post</button>
      </form>
  </div>

  <script>
      const title = document.querySelector('#title');
      const slug = document.querySelector('#slug');

    title.addEventListener('change', function(){
        fetch('/dashboard/posts/createSlug?title=' + title.value)
        .then(response=> response.json())
        .then(data=> slug.value = data.slug)
    });
  </script>
@endsection