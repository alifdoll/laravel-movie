<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Source css -->
    <link type="text/css" rel="stylesheet" href="{{URL::to('css/detail.css')}}">

    <title>ATIGA MOVIES</title>
</head>
<body>
    <section class="container">
        <div class="group">
            <img src="{{$movie->extension}}" alt="" class="img-select">
            <h1>{{$movie->title}}</h1>
            <hr>
            <div class="caption">
                <p><span>Genre : </span>
                    <span>-</span>
                    <!-- ISI GENRE -->
                </p>
                <p><span>Score : </span>
                    <!-- ISI SKOR -->
                    {{$movie->score}}
                </p>
                <P><span>Release Date : </span>    
                    <!-- ISI RELEASE -->
                    {{$movie->release}}
                </P>
                <p><span>Sinopsis : </span>
                <!-- ISI SINOPSIS -->
                {{$movie->synopsis}}
                </p>
            </div>
        </div>
    </section>
</body>
</html>