
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Source CSS -->
    <link type="text/css" rel="stylesheet" href="{{URL::to('css/list.css')}}">

   

    <title>ATIGA MOVIES</title>
</head>
<body>
    <section class="container">
        <!-- Area input dan Button -->
        <form action="list.php" method="post">
        <div class="searchGrouping">
        <a href="grid.php"><img src="https://img.icons8.com/metro/26/000000/activity-grid-2.png" class="img-place"></a>
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