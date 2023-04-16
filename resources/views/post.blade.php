@extends('layout.main')

@section('container')
	<h3>Selamat Datang di Dashboard Post</h3>
	<br>

	<div class="container">
		<div class="row justify-content-center mb-5">
			<div class="col-md-8">
				<h2 class="mb-3">{{ $post['title'] }}</h2>
				<h5>Author: <a href="/blog?user={{ $post->user->username }}" class="text-decoration-none">{{ $post->user->name }}</a> in <a href="/blog?category={{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a></h5>
				<img src="https://source.unsplash.com/1200x400?{{$post->category->name}}" alt="" class="img-fluid">
				<article class="my-3 fs-5">
					{!! $post->body !!}
				</article>
				<a href="/blog" class="d-block">Back</a>
			</div>
		</div>
	</div>	
@endsection
		
