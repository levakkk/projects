@extends('layouts.app')

@section('content')
    <h1>Nova objava</h1>
    {!! Form::open(['action' => 'PostsController@store', 'method' => 'POST']) !!}
        <div class="form-group">
            {{ Form::label('title', 'Naslov')}}
            {{ Form::text('title', '', ['class' => 'form-control', 'placeholder' => 'Naslov'])}}
        </div>
        <div class="form-group">
            {{ Form::label('body', 'Sadržaj')}}
            {{ Form::textarea('body', '', ['class' => 'form-control', 'placeholder' => 'Sardžaj objave'])}}
        </div>
        {{ Form::submit('Objavi', ['class' => 'btn btn-primary'])}}
    {!! Form::close() !!}
@endsection