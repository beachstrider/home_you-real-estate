<?php

namespace App\Http\Controllers;

use App\Blog;
use Illuminate\Http\Request;
use TCG\Voyager\Http\Controllers\VoyagerBaseController;

class AdminBlogsController extends VoyagerBaseController
{
    public function create(Request $request)
    {
        return view('vendor.voyager.adminBlogs.create');
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'subtitle' => 'required|max:255',
            'banner' => 'required|image|mimes:jpeg,png,jpg,gif|max:10000|dimensions:max_width=3000,max_height=3000',
            'thumbnail' => 'required|image|mimes:jpeg,png,jpg,gif|max:10000|dimensions:max_width=3000,max_height=3000',
            'content' => 'required',
        ]);

        $blog = new Blog;

        $blog->title = $request->title;
        $blog->subtitle = $request->subtitle;

        $banner_path = $request->file('banner')->store('blogs/banners');
        $thumbnail_path = $request->file('thumbnail')->store('blogs/thumbnails');

        $blog->banner = $banner_path;
        $blog->thumbnail = $thumbnail_path;
        $blog->content = $request->content;

        $blog->save();

        return redirect('admin/blogs');
    }

    public function show(Request $request, $id)
    {
        $blog = Blog::find($id);

        return view('vendor.voyager.adminBlogs.show', ['blog'=> $blog]);
    }

    public function edit(Request $request, $id)
    {
        $blog = Blog::find($id);

        return view('vendor.voyager.adminBlogs.edit', ['blog'=> $blog]);
    }

    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'subtitle' => 'required|max:255',
            'banner' => 'image|mimes:jpeg,png,jpg,gif|max:10000|dimensions:max_width=3000,max_height=3000',
            'thumbnail' => 'image|mimes:jpeg,png,jpg,gif|max:10000|dimensions:max_width=3000,max_height=3000',
            'content' => 'required',
        ]);

        $blog = Blog::find($id);

        $blog->title = $request->title;
        $blog->subtitle = $request->subtitle;

        if($request->file('banner')!=null){
            $banner_path = $request->file('banner')->store('blogs/banners');
            $blog->banner = $banner_path;
        }

        if($request->file('thumbnail')!=null){
            $thumbnail_path = $request->file('thumbnail')->store('blogs/thumbnails');
            $blog->thumbnail = $thumbnail_path;
        }

        $blog->content = $request->content;

        $blog->save();

        return redirect('admin/blogs');
    }

    public function imageUpload(Request $request){
        $path = $request->file('content_image')->store('blogs/content');
        echo $path;
    }
}
