@extends('layouts.admin')

@section('title')
    Categories Table
@endsection
@section('content')
    <div class="main-content">
        <div class="section">
            <div class="col-12 col-md-6 col-lg-12">
                <div class="card">

                    @if (session('seccess'))
                    <div class="alert alert-primary alert-dismissible show fade">
                        <div class="alert-body">
                          <button class="close" data-dismiss="alert">
                            <span>×</span>
                          </button>
                             {{ session('seccess') }}
                        </div>
                      </div>
                    @endif

                    <div class="card-header">
                        <h4>Categories Table</h4>
                        <div class="card-header-form">
                            <a href="{{ route('admin.categories.create') }}" class="btn btn-primary">Create</a>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-md">
                                <tbody>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Slug</th>
                                         <th>Time</th>
                                        <th>Button</th>
                                    </tr>
                                    @foreach ($categories as $category)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $category->name_uz }}</td>
                                            <td>{{ $category->slug }}</td>
                                            <td>{{ $category->created_at }}</td>
                                            <td class="d-flex ">
                                                <a href="{{ route('admin.categories.show', $category->id) }}" class="btn btn-warning ">Show</a>
                                                <a href="{{ route('admin.categories.edit', $category->id) }}" class="btn btn-info">Update</a>
                                                 <form action="{{ route('admin.categories.destroy', $category->id) }}" method="POST">
                                                    @csrf
                                                    @method('DELETE')

                                                    <button type="submit" class="btn btn-danger " onclick="return confirm('o\'chirishni hohlaysizmi?')">Delete</button>
                                                 </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <nav class="d-inline-block">
                            {{ $categories->links() }}
                            {{-- <ul class="pagination mb-0">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1"><i
                                            class="fas fa-chevron-left"></i></a>
                                </li>
                                <li class="page-item active"><a class="page-link" href="#">1 <span
                                            class="sr-only">(current)</span></a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#">2</a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#"><i class="fas fa-chevron-right"></i></a>
                                </li>
                            </ul> --}}
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
