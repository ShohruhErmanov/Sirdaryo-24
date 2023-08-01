@extends('layouts.admin')

@section('title')
    Tag show
@endsection
@section('content')
    <div class="main-content">
        <div class="section">
            <div class="col-12 col-md-6 col-lg-12">
                <div class="card">

                    <div class="card-header">
                        <h4>Tag Show</h4>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-md">
                                <tbody>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name (UZ)</th>
                                        <th>Name (RU)</th>
                                        <th>Slug</th>
                                    </tr>

                                        <tr>
                                            <td>{{  $tag->id}}</td>
                                            <td>{{  $tag->name_uz}}</td>
                                            <td>{{  $tag->name_ru}}</td>
                                            <td>{{  $tag->slug}}</td>
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
