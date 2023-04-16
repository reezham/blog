<?php

use App\Models\post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\SuratMasukController;
use App\Http\Controllers\SuratKeluarController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardPostController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home', [
        'title' => 'Home',
        'active' => 'home',
    ]);
});

Route::get('/about', function () {
    return view('about',[
        'title' => 'About',
        'active' => 'about',
    ]);
});

Route::get('/login', [LoginController::class,'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class,'auth']);
Route::post('/logout', [LoginController::class,'logout']);

Route::get('/register', [RegisterController::class,'index'])->middleware('guest');
Route::post('/register', [RegisterController::class,'store']);

Route::get('/dashboard/posts/checkSlug',[DashboardPostController::class,'checkSlug'])->middleware('auth');
Route::resource('/dashboard/posts',DashboardPostController::class)->middleware('auth');
Route::resource('/dashboard/surat-masuk',SuratMasukController::class)->middleware('auth');
Route::resource('/dashboard/surat-keluar',SuratKeluarController::class)->middleware('auth');

Route::get('/dashboard', function(){
    return view('dashboard.index');
})->middleware('auth');

Route::get('/categories', function(){
    return view('categories',[
        'title' =>' Laravel',
        'active' => 'category',
        'categories' => Category::all()
    ]);
});

Route::get('/blog', [PostController::class,'index']);


Route::get('blogs/{post:slug}',[PostController::class,'show']);

Route::get('/categories/{category:slug}', function(Category $category){
    return view('posts',[
        'title' => "Post By Category: $category->name",
        'active' => 'category',
        'blogs' => $category->posts->load('category','user'),
    ]);
});

Route::get('/author/{author:username}', function(User $user){
    return view('posts',[
        'title' => "Post By Author : $user->name",
        'active' => 'category',
        'blogs' => $user->posts->load('category','user'),
    ]);
});