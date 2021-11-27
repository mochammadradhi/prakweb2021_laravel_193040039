@extends('dashboard.layouts.main')

@section('container')
<main class="col-md-9  col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
      <h1 class="h2">Posts Categories</h1>
      
    </div>

    @if (session()->has('success'))
    <div class="alert alert-success col-lg-6" role="alert">
      {{ session('success') }}
    </div>
    @endif
    <div class="table-responsive">
        <a href="/dashboard/categories/create" class="btn btn-warning mb-4">
            <span data-feather="file-plus"></span>
            Create New Category
          </a>
          
      <table class="table table-striped table-sm">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Category Name</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($categories as $ctg)    
          <tr>
                
              <td>{{ $loop->iteration}}</td>
              <td> {{ $ctg->name }} </td>
         
              <td>
                  <a href="/dashboard/categories/{{ $ctg->slug }}" class="badge bg-info">
                    <span data-feather="eye"></span>
                  </a>
                  <a href="/dashboard/categories/{{ $ctg->slug }}/edit" class="badge bg-warning">
                    <span data-feather="edit"></span>
                  </a>
                  
                  <form action="/dashboard/categories/{{ $ctg->slug }}" method="post" class="d-inline">
                  @method('delete')
                  @csrf
                  <button class="badge bg-danger border-0" onclick="return confirm('Are you sure?')"><span data-feather="x-circle"></span></button>
                  </form>
              </td>
             
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </main>
  
@endsection