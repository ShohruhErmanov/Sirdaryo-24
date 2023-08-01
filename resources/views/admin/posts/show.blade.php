@extends('layouts.admin')

@section('title')
    Post show
@endsection
@section('content')
    <div class="main-content">
        <div class="section">
            <div class="col-12 col-md-6 col-lg-12">
                <div class="card">

                    <div class="card-header">
                        <h4>Post Show</h4>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-md">
                                <tbody>
                                    <tr>
                                        <th>Id</th>
                                        <th>Title</th>
                                        <th>Body</th>
                                        <th>Image</th>
                                        <th>Category</th>
                                        <th>Tags</th>
                                        <th>Slug</th>
                                        <th>View</th>
                                        <th>Meta title</th>
                                        <th>Meta description</th>
                                        <th>Meta keywords</th>
                                    </tr>

                                        <tr>
                                            <td>{{  $post->id }}</td>

                                            <td>{{  $post->title_uz }}</td>
                                            <td>{!!  $post->body_uz !!}</td>
                                            <td>
                                                <img src="/images/{{ $post->image }}" alt="" width="150">
                                            </td>
                                            <td>{{  $post->category->name_uz }}</td>
                                             @foreach ( $post->tags as $tag)
                                             <td>{{  $tag->name_uz }}</td>
                                             @endforeach
                                            <td>{{  $post->slug }}</td>
                                            <td>{{  $post->view }}</td>
                                            <td>{{  $post->meta_title }}</td>
                                            <td>{{  $post->meta_description }}</td>
                                            <td>{{  $post->meta_keywords }}</td>
                                        </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection
