@extends('layouts.masteradmin')


@section('tit')

    مدیریت
@stop

@section('nav')
    <?php
        $role=Auth::user()->role;


    if($role==1)
    {
    ?>

    <li><a href="/1212/main">مدیریت</a> </li>
    <li class="menu-active">اخبار </li>
    <li><a href="/1212/maghale"> مقالات   </a></li>
    <li><a href="/1212/service">خدمات</a> </li>
    <li><a href="/1212/mahsul">محصولات</a> </li>
    <li><a href="/1212/about">درباره ما</a> </li>
    <li><a href="/1212/client">مشتریان</a> </li>
    <li><a href="/1212/general">تنظیمات </a> </li>
    <li><a href="/1212/slider">اسلایدر</a> </li>
    <li><a href="/1212/upload"> آپلود فایل </a></li>



    <?php
    }
            else{

            }
    ?>
@stop



@section('content-tit')

    اخبار


@stop



@section('content-main')




@stop

@section('custom-script')


@stop
