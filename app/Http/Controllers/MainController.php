<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Posts;
class MainController extends Controller
{
    public function index()
    {
        $spacialPosts = Posts::where('is_spacial', 1)->limit(6)->latest()->get();
        $latestPosts = Posts::limit(6)->latest()->get();
        $popularPosts = Posts::limit(4)->orderBy('view', 'DESC')->get();
        return view('index', compact('spacialPosts', 'latestPosts', 'popularPosts'));
    }

    public function categoryPosts($slug)
    {
      $category = Category::where('slug', $slug)->first();
      return view('categoryPosts', compact('category'));
    }

    public function postsDetail($slug)
    {
        $popularPosts = Posts::limit(4)->orderBy('view', 'DESC')->get();
        $post = Posts::where('slug', $slug)->first();
        $post->increment('view');
        $post->save();
        $otherPosts = Posts::where('category_id', $post->category_id)->where('id', '!=', $post->id)->limit(3)->get();
        return view('postsDetail', compact('post', 'popularPosts', 'otherPosts'));
    }

    public function contact ()
    {
        return view('contact');
    }


    public function search (Request $request)
    {
        $key = $request->key;
        $popularPosts = Posts::limit(4)->orderBy('view', 'DESC')->get();
        $posts = Posts::where('title_uz', 'like', '%' . $key . '%')->get();
        return view('search', compact('popularPosts', 'key', 'posts'));
    }
}
