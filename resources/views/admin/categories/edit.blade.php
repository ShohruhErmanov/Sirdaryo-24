@extends('layouts.admin')
@section('title')
   Create
@endsection
@section('content')
    <div class="main-content">
        <div class="section">

            <div class="col-12 col-md-6 col-lg-12">
                <div class="card">
                    <form action="{{ route('admin.categories.update', $category->id) }}" method="POST"  enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                      <div class="card-header">
                        <h4> Category update</h4>
                      </div>
                      <div class="card-body">
                        <div class="form-group">
                          <label> Name (UZ)</label>
                          <input type="text" class="form-control" name="name_uz" value="{{ $category->name_uz }}">
                        </div>
                        <div class="form-group">
                          <label>Name (RU)</label>
                          <input type="text" class="form-control" name="name_ru" value="{{ $category->name_ru }}">
                        </div>
                        <div class="form-group">
                          <label>Slug</label>
                          <input type="text" class="form-control"  name="slug" value="{{ $category->slug }}">
                        </div>
                        <div class="form-group mb-0">
                          <label>Meta title</label>
                          <input type="text" class="form-control"  name="meta_title" value="{{ $category->meta_title }}">
                        </div>
                        <div class="form-group mb-0">
                            <label>Meta description</label>
                            <input type="text" class="form-control"  name="meta_description" value="{{ $category->meta_description }}">
                          </div>
                          <div class="form-group mb-0">
                            <label>Meta keywords</label>
                            <input type="text" class="form-control"  name="meta_keywords" value="{{ $category->meta_keywords}}">
                          </div>
                      </div>
                      <div class="card-footer text-right">
                        <button type="submit" class="btn btn-primary">Update</button>
                      </div>
                    </form>
                  </div>
            </div>

        </div>
    </div>
@endsection
