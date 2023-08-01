@extends('layouts.admin')
@section('title')
   Tag
@endsection
@section('content')
    <div class="main-content">
        <div class="section">

            <div class="col-12 col-md-6 col-lg-12">
                <div class="card">
                    <form action="{{ route('admin.tags.update', $tag->id) }}" method="POST"  enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                      <div class="card-header">
                        <h4> Tag update</h4>
                      </div>
                      <div class="card-body">
                        <div class="form-group">
                          <label> Name (UZ)</label>
                          <input type="text" class="form-control"  name="name_uz" value="{{ $tag->name_uz }}">
                        </div>
                        <div class="form-group">
                          <label>Name (RU)</label>
                          <input type="text" class="form-control" name="name_ru" value="{{ $tag->name_ru }}">
                        </div>
                        <div class="form-group">
                          <label>Slug</label>
                          <input type="text" class="form-control"  name="slug" value="{{ $tag->slug }}">
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
