@extends('layouts.app')

@section('content')
    <h1>Uređivanje objave</h1>
    {!! Form::open(['action' => ['PostsController@update', $post->id], 'method' => 'POST']) !!}
        <div class="form-group">
            {{ Form::label('title', 'Naslov')}}
            {{ Form::text('title', $post->title, ['class' => 'form-control', 'placeholder' => 'Naslov'])}}
        </div>
        <div class="form-group">
            {{ Form::label('body', 'Sadržaj')}}
            {{ Form::textarea('body', $post->body, ['class' => 'form-control', 'placeholder' => 'Sardžaj objave'])}}
        </div>
        {{ Form::hidden('_method', 'PUT') }}
        {{ Form::submit('Objavi', ['class' => 'btn btn-primary'])}}
    {!! Form::close() !!}
@endsection