<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Source CSS -->
    @yield('css')
    {{-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous"> --}}


    <title>ATIGA MOVIES</title>
</head>
<body>
    {{-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script> --}}
    <section class="container">
        <!-- Area input dan Button -->
        <form action="list.php" method="post">
        <div class="searchGrouping">
            @yield('link')
            <div class="space">
                <input type="text" placeholder="   Searching..." class="txt-search" name="search" id="search">
            </div>

            <div class="space">
                <button type="submit" class="btn-search" name="btn-search" id="btn-search" >Search</button>
            </div>
        </div>
        </form>
        <!-- End Area input dan Button -->
    </section>

    @yield('container')

    
</body>
</html>