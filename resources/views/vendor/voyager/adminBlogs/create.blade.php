@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
@stop

@section('page_title', 'Add Blog')

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-edit"></i>
        Add Blog
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
                            id="add-blog-form" 
                            class="form-edit-add"
                            action="{{ route('voyager.blogs.store') }}"
                            method="POST" enctype="multipart/form-data">

                        @csrf
                        @method('POST')

                        <div class="panel-body">
                            <div class="form-group">
                                <label for="usr">Title:</label>
                                <input type="text" class="form-control" name="title" required>
                                @error('title')
                                    <p class="form-error-feedback" >{{ $message }}</p>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="usr">Sub Title:</label>
                                <input type="text" class="form-control" name="subtitle" required>
                                @error('subtitle')
                                    <p class="form-error-feedback" >{{ $message }}</p>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="usr">Banner:</label>
                                <input type="file" name="banner" accept="image/*" required>
                                @error('banner')
                                    <p class="form-error-feedback" >{{ $message }}</p>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="usr">Thumbnail:</label><br>
                                <input type="file" name="thumbnail" accept="image/*" required>
                                @error('thumbnail')
                                    <p class="form-error-feedback" >{{ $message }}</p>
                                @enderror
                            </div>

                            <div class="form-group">
                                <label for="cont">Content:</label>
                                <div class="form-control summernote" required></div>
                                @error('content')
                                    <p class="form-error-feedback" >{{ $message }}</p>
                                @enderror
                            </div>
                            <textarea name="content" id="text-area-content" style="display: none;"></textarea>
                            <button type="button" class="btn btn-primary" onclick="save();">Submit</button>
                        </div>
                        
                    </form>

                </div>
            </div>
        </div>
    </div>

    <style>
        .form-error-feedback{
            color: #ef1c1c;
        }
    </style>
@stop

@section('javascript')
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>

<script>
    
    $('.summernote').summernote({
        height: ($(window).height() - 300),
        callbacks: {
            onImageUpload: function(image) {
                uploadImage(image[0]);
            }
        }
    });
    
    function uploadImage(image) {
        var data = new FormData();
        data.append("content_image", image);
        $.ajax({
            url: '/admin/blogImageUpload',
            cache: false,
            contentType: false,
            processData: false,
            data: data,
            type: "post",
            success: function(url) {
                $('.summernote').summernote("insertImage", '/storage/' + url);
            },
            error: function(data) {
                alert("Something went wrong.");
            }
        });
    }

    var save = function() {
        var form = $('#add-blog-form');
        var markup = $('.summernote').summernote('code');
        var blog_content = $('#text-area-content');
        blog_content.text(markup);
        form.submit();
    };

</script>
@stop