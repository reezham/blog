@extends('layout.main')

@section('container')
	<h3 class="mb-3 text-center">{{ $title }}</h3>

	<div class="row justify-content-center mb-3">
		<div class="col-md-6">
			<form action="/blog">
				@if (request('category'))
					<input type="hidden" name="category" value="{{ request('category') }}">
				@endif
				@if (request('user'))
					<input type="hidden" name="user" value="{{ request('user') }}">
				@endif
				<div class="input-group mb-3">
  					<input type="text" class="form-control" placeholder="Search" name="search" value="{{ request('search') }}">
  					<button class="btn btn-dark" type="submit" id="">Search</button>
				</div>
			</form>
		</div>
	</div>

	@if ($blogs->count())
		<div class="card mb-3 ">
			<img src="https://source.unsplash.com/1200x400?{{$blogs[0]->category->name}}" class="card-img-top" alt="...">
  			<div class="card-body text-center">
   				<h3 class="card-title"><a href="/blogs/{{ $blogs[0]->slug }}" class="text-decoration-none text-dark">{{ $blogs[0]->title }}</a></h3>
				<p>
					<small class="text-muted">
						Author: <a href="/blog?user={{ $blogs[0]->user->username }}" class="text-decoration-none">{{ $blogs[0]->user->name }}</a> in <a href="/blog?category={{ $blogs[0]->category->slug }}" class="text-decoration-none">{{ $blogs[0]->category->name }}</a> {{$blogs[0]->created_at->diffForHumans()}}</p>
    					<p class="card-text">{{$blogs[0]->excerpt}}</p>
					</small>
				</p>
				<a href="/blogs/{{ $blogs[0]->slug }}" class="text-decoration-none btn btn-primary">Read more</a>
  			</div>
		</div>
	
		<div class="container">
			<div class="row">
				@foreach ($blogs->skip(1) as $blog)
					<div class="col-md-4 mb-3 ">
						<div class="card " >
							<div class="position-absolute px-3 py-2 text-white " style="background-color: rgba(0,0,0,0.7)"><a href="/blog?category={{ $blog->category->slug }}" class="text-decoration-none text-white">{{$blog->category->name}}</a></div>
  							<img src="https://source.unsplash.com/500x500?{{$blog->category->name}}" class="card-img-top" alt="...">
  							<div class="card-body">
  								<h5 class="card-title">{{ $blog->title }}</h5>
  								<p>
									<small class="text-muted">
										Author: <a href="/blog?user={{ $blog->user->username }}" class="text-decoration-none">{{ $blog->user->name }}</a>  {{$blog->created_at->diffForHumans()}}</p>
									</small>
								</p>
    							<p class="card-text">{{ $blog->excerpt }}...</p>
								<a href="/blogs/{{ $blog->slug }}" class="btn btn-primary">Read More</a>
  							</div>
						</div>
					</div>
				@endforeach
			</div>
		</div>
	@else
	<p class="text-center fs4">Tidak Ada Postingan</p>
@endif
<div class="d-flex justify-content-end">
{{ $blogs->links() }}
</div>	
@endsection
		
