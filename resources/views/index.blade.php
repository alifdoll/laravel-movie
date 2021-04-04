@extends('/layout/main')

@section('css')
<link type="text/css" rel="stylesheet" href="{{URL::to('css/list.css')}}">
@endsection

@section('link')
<a href="/grid"><img src="https://img.icons8.com/metro/26/000000/activity-grid-2.png" class="img-place"></a>
@endsection

@section('container')
<section class="container">
    <div class="item" id="item-movie">
        @foreach($movies as $movie)
        <div class="list-item">
            <img src="{{$movie->extension}}" alt="" class="img-select">
            <div class="deskripsi">
                <div class="caption">
                    <h3>{{$movie->title}}</h3>
                    <hr>
                    <p>{{$movie->synopsis}}</p>
                </div>
                <a style="text-decoration: none;" href="/movies/{{ $movie->id }}"><button type="button" class="btn-detail">Detail</button></a>
            </div>
        </div>
        @endforeach
    </div>
</section>
@endsection