<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\post;

class PostController extends Controller
{
    public function index(){

        return view('posts',[
        'title' => 'All Posts',
        'active' => 'blog',
        // 'blogs' => Post::all()
        'blogs' => Post::latest()->filter(request(['search','category','user']))->paginate(7)->withQueryString()
    ]);
    }

    public function show(Post $post){
        return view('post',[
        'title' => 'Single Post',
        'active' => 'blog',
        'post' => $post
    ]);
    }
}
