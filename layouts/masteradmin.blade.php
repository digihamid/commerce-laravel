<!DOCTYPE html>
<html>
<head>
    <title>@yield('tit')</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=1150">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

       <link rel="stylesheet" href="{{ URL::asset('css/font-awesome/css/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('css/admin.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('fonts/font.css') }}">


</head>



<body>
<?php
if(Auth::check())
    {
    $username=Auth::user()->username;


    }
else{ return Redirect::to('/1212');}
?>
<div id="top">
    <nav class="navbar navbar-static-top">
<div class="container-fluid">
<header class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <a href="/" class="navbar-brand">
      <img src="/image/osveh.png" width="60" height="40">
    </a>

</header>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
   <!-- .nav -->
    <ul class="nav navbar-nav">
        <li> {{ HTML::link('/1212/logout','خروج') }}  </li>

        <li class="dropdown ">
         <a href="/1212/main">صفحه اصلی</a>
        </li>
    </ul><!-- /.nav -->
</div>

</div>
    </nav>

<div class="head">
<div>

   <i class="fa fa-home"></i>
    اسوه پردازش
</div>
</div>
</div>
<div class="right">

<div class="user-media">
<p>نام کاربری : <?php if(isset($username)) { echo $username; } ?></p>

</div>
<div class="menu-tit">منو ها</div>

    <ul class="menu-list">


@yield('nav')

    </ul>


</div>

<div class="main-content">

<div class="content-tit">@yield('content-tit')</div>

<div class="main-content2">@yield('content-main')</div>



</div>


@yield('custom-script')

 </body>
</html>
