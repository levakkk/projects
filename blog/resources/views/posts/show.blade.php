@extends('layouts.app')

@section('content')
<a href="/posts" class="btn btn-default">Povratak</a>
    <h1>{{ $post->title }}</h1>    
    <div class="card card-body bg-light">
        {!!$post->body!!}
    </div>
    <hr>
    <small>Objavljeno {{ $post->created_at }} od {{ $post->user->name }}</small>
    <hr>
    <a href="/posts/{{$post->id}}/edit" class="btn btn-default">Edit</a>

    {!! Form::open(['action' => ['PostsController@destroy', $post->id], 'method' => 'POST', 'class' => 'pull-right']) !!}
        {{ Form::hidden('_method', 'DELETE')}}
        {{ Form::submit('Delete', ['class' => 'btn btn-danger'])}}
    {!! Form::close() !!}

@endsection