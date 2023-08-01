@extends('layouts.admin')

@section('css')
    <link rel="stylesheet" href="/admin/assets/bundles/select2/dist/css/select2.min.css">
@endsection
@section('title')
    Posts
@endsection
@section('content')
    <div class="main-content">
        <div class="section">

            <div class="col-12 col-md-6 col-lg-12">
                <div class="card">
                    <form action="{{ route('admin.posts.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="card-header">
                            <h4> Posts create</h4>
                        </div>
                        <div class="card-body">

                            <div class="form-group">
                                <label> Title (UZ)</label>
                                <input type="text" class="form-control"name="title_uz">
                            </div>
                            <div class="form-group">
                                <label>Title (RU)</label>
                                <input type="text" class="form-control" name="title_ru">
                            </div>
                            <div class="form-group">
                                <label>Body (UZ)</label>
                                <textarea type="text" class="form-control ckeditor" name="body_uz"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Body (RU)</label>
                                <textarea type="text" class="form-control ckeditor" name="body_ru"></textarea>

                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input type="file" class="form-control" name="image">
                            </div>
                            <div class="form-group">
                                <label> Category Selected</label>
                                <select id="" name="category_id" class="form-control">
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->name_uz }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Tag Selected</label>
                                <select id="" class="form-control select2" name="tags[]" multiple="">
                                    @foreach ($tags as $tag)
                                        <option value="{{ $tag->id }}">{{ $tag->name_uz }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <div class="control-label">Is Spacial ?</div>
                                <label class="custom-switch mt-2">
                                  <input type="checkbox" value="1" name="is_spacial" class="custom-switch-input">
                                  <span class="custom-switch-indicator"></span>
                                </label>
                              </div>

                            <div class="form-group">
                                <label>Slug</label>
                                <input type="text" class="form-control" name="slug">
                            </div>
                            <div class="form-group mb-0">
                                <label>Meta title</label>
                                <input type="text" class="form-control" name="meta_title">
                            </div>
                            <div class="form-group mb-0">
                                <label>Meta description</label>
                                <input type="text" class="form-control" name="meta_description">
                            </div>
                            <div class="form-group mb-0">
                                <label>Meta keywords</label>
                                <input type="text" class="form-control" name="meta_keywords">
                            </div>
                        </div>
                        <div class="card-footer text-right">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
@endsection

@section('js')
    <script src="//cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>

    <script type="text/javascript">
        CKEDITOR.replace('body_uz', {
            filebrowserUploadUrl: "{{ route('admin.upload', ['_token' => csrf_token()]) }}",
            filebrowserUploadMethod: 'form'
        });

        CKEDITOR.replace('body_ru', {
            filebrowserUploadUrl: "{{ route('admin.upload', ['_token' => csrf_token()]) }}",
            filebrowserUploadMethod: 'form'
        });
    </script>

      <script src="/admin/assets/bundles/select2/dist/js/select2.full.min.js"></script>
@endsection
