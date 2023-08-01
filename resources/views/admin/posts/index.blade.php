@extends('layouts.admin')

@section('title')
    Posts Table
@endsection
@section('css')
    <link rel="stylesheet" href="assets/bundles/datatables/datatables.min.css">
    <link rel="stylesheet" href="assets/bundles/datatables/DataTables-1.10.16/css/dataTables.bootstrap4.min.css">
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
                        <h4>Posts Table</h4>
                        <div class="card-header-form">
                            <a href="{{ route('admin.posts.create') }}" class="btn btn-primary">Create</a>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <div id="table-1_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">

                                    </div>
                                    <div class="col-sm-12 col-md-6">

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-striped dataTable no-footer" id="table-1" role="grid"
                                            aria-describedby="table-1_info">
                                            <thead>
                                                <tr role="row">
                                                    <th class="text-center sorting_asc" tabindex="0"
                                                        aria-controls="table-1" rowspan="1" colspan="1"
                                                        aria-sort="ascending"
                                                        aria-label="
                                #
                              : activate to sort column descending"
                                                        style="width: 61.6562px;">
                                                        Id
                                                    </th>
                                                    <th class="sorting" tabindex="0" aria-controls="table-1"
                                                        rowspan="1" colspan="1"
                                                        aria-label="Task Name: activate to sort column ascending"
                                                        style="width: 256.125px;">Title</th>
                                                    <th class="sorting_disabled" rowspan="1" colspan="1"
                                                        aria-label="Progress" style="width: 136.281px;">Category</th>
                                                        <th class="sorting_disabled" rowspan="1" colspan="1"
                                                        aria-label="Progress" style="width: 136.281px;">Tags</th>
                                                        <th class="sorting_disabled" rowspan="1" colspan="1"
                                                        aria-label="Progress" style="width: 136.281px;">Body</th>
                                                    <th class="sorting_disabled" rowspan="1" colspan="1"
                                                        aria-label="Members" style="width: 338.281px;">Image</th>

                                                    <th class="sorting" tabindex="0" aria-controls="table-1"
                                                        rowspan="1" colspan="1"
                                                        aria-label="Action: activate to sort column ascending"
                                                        style="width: 137.672px;">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>










                                                @foreach ($posts as $post)
                                                    <tr role="row" class="odd">
                                                        <td class="sorting_1">
                                                            {{ $post->id }}
                                                        </td>
                                                        <td>{{ $post->title_uz }}</td>
                                                        <td class="align-middle">
                                                           {{ $post->category->name_uz }}
                                                        </td>
                                                        <td class="align-middle">
                                                            @foreach ($post->tags as $tag)
                                                            {{ $tag->name_uz }}
                                                            @endforeach
                                                         </td>

                                                        <td>{!!$post->body_uz!!}</td>
                                                        <td>
                                                            <img alt="" src="/images/{{ $post->image }}"
                                                            width="150">
                                                        </td>


                                                        <td>
                                                            <a href="{{ route('admin.posts.show', $post->id) }}" class="btn btn-warning">Show</a>
                                                            <a href="{{ route('admin.posts.edit', $post->id) }}" class="btn btn-info">Update</a>
                                                             <form action="{{ route('admin.posts.destroy', $post->id) }}" method="POST">
                                                                @csrf
                                                                @method('DELETE')
                                                                <button type="submit" class="btn btn-danger"  onclick="return confirm('o\'chirishni hohlaysizmi?')">Delete</button>
                                                             </form>
                                                        </td>
                                                    </tr>
                                                @endforeach

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-5">
                                        {{-- <div class="dataTables_info" id="table-1_info" role="status"
                                            aria-live="polite">Showing 1 to 10 of 12 entries</div> --}}
                                    </div>
                                    <div class="col-sm-12 col-md-7">
                                        <div class="dataTables_paginate paging_simple_numbers" id="table-1_paginate">
                                            {{-- <ul class="pagination">
                                                <li class="paginate_button page-item previous disabled"
                                                    id="table-1_previous"><a href="#" aria-controls="table-1"
                                                        data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
                                                </li>
                                                <li class="paginate_button page-item active"><a href="#"
                                                        aria-controls="table-1" data-dt-idx="1" tabindex="0"
                                                        class="page-link">1</a></li>
                                                <li class="paginate_button page-item "><a href="#"
                                                        aria-controls="table-1" data-dt-idx="2" tabindex="0"
                                                        class="page-link">2</a></li>
                                                <li class="paginate_button page-item next" id="table-1_next"><a
                                                        href="#" aria-controls="table-1" data-dt-idx="3"
                                                        tabindex="0" class="page-link">Next</a></li>
                                            </ul> --}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <nav class="d-inline-block">
                            {{-- {{ $categories->links() }} --}}
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

@section('js')
    <script src="assets/bundles/datatables/datatables.min.js"></script>
    <script src="assets/bundles/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js"></script>
    <script src="assets/js/page/datatables.js"></script>
@endsection
