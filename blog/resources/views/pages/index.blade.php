@extends('layouts.app')

@section('content')
    <div class="jumbotron text-center">
        <h1>Dobrodošli na blog!</h1>
        <p>Ovo je testna aplikacija za Revoloop</p>
        <hr>
        <h4>Legenda</h4>
        <p>Home - prikaz objava od korisnika</p>
        <p>About - o meni</p>
        <p>Services</p>
        <p>Blog - prikaz svih objava</p>
        <p>Changelog - popis izmjena na projektu</p>
        <hr>
        <p><a class="btn btn-primary btn-lg" href="/login" role="button">Prijava</a> <a class="btn btn-success btn-lg" href="/register" role="button">Registacija</a></p>
    </div>
@endsection

