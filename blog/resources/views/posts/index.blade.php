@extends('layouts.app')

@section('content')
    <h1>Objave</h1>
    @if(count($posts) > 0)
        @foreach($posts as $post)
            <div class="card card-body bg-light">
                <h3><a href="/posts/{{$post->id}}"> {{ $post->title }}</a></h3>
                <small>Objavljeno {{ $post->created_at }} od {{ $post->user->name }}</small>
            </div>
        @endforeach
        {{ $posts->links() }}
    @else
        <p>Nema objava</p>
    @endif
@endsection