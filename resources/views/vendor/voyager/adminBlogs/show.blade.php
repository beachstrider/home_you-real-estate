@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
@stop

@section('page_title', 'Viewing Blog')

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-edit"></i>
        Viewing Blog
    </h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-bordered">
                    <!-- form start -->
                    <form role="form"  
                            class="form-edit-add">

                        <div class="panel-body">
                            <div class="form-group">
                                <label for="usr">Title:</label>
                                <input type="text" class="form-control" name="title" value="{{ $blog->title }}" disabled>
                            </div>
                            <div class="form-group">
                                <label for="usr">Sub Title:</label>
                                <input type="text" class="form-control" name="subtitle" value="{{ $blog->title }}" disabled>
                            </div>
                            <div class="row">
                            <div class="form-group col-md-5">
                                <label class="control-label" for="usr">Banner:</label>
                                <img src="/storage/{{ $blog->banner }}" style="width: 100%;">
                            </div>
                            <div class="form-group col-md-3">
                                <label class="control-label" for="usr">Thumbnail:</label><br>
                                <img src="/storage/{{ $blog->thumbnail }}" style="width: 100%;">
                            </div>
                            </div>

                            <div class="form-group">
                                <label for="cont">Content:</label>
                                <div class="cont-cont-div" style="overflow: auto;">{!! $blog->content !!}</div>
                            </div>
                            <button type="button" class="btn btn-primary" onclick="history.back(0);">Back</button>
                        </div>
                        
                    </form>

                </div>
            </div>
        </div>
    </div>
@stop