@extends('layout/main')


@section('css')
<link type="text/css" rel="stylesheet" href="{{URL::to('css/grid.css')}}">
@endsection

@section('link')
<a href="/"><img src="https://img.icons8.com/material-outlined/24/000000/list.png" class="img-place"></a>
@endsection

@section('container')
 <section class="container">
        <div class="content">
            @foreach($movies as $movie)
            <div class="box">
                <img class="img-selector" src="{{ $movie->extension }}" alt="">
                <div class="caption">
                    <h3>{{ $movie->title }}</h3>
                    <hr>
                    <p>{{ $movie->synopsis }} </p>
                </div>
                 <a style="text-decoration: none;" href="/movies/{{ $movie->id }}"><button type="button" class="btn-detail">Detail</button></a>
            </div>
            @endforeach
        </div>
    </section>
@endsection