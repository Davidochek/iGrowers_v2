@extends('layouts.admin')
@section('content')

         <section class="tp-banner-container">
            <div class="tp-banner">
                <ul>
                    <li data-transition="slidevertical" data-slotamount="1" data-masterspeed="1000"
                        data-saveperformance="off" data-title="Slide">
                        <img src="{{asset('assets/img/slide/1.jpg')}}" alt="fullslide1" data-bgposition="center center"
                            data-kenburns="on" data-duration="6000" data-ease="Linear.easeNone" data-bgfit="130"
                            data-bgfitend="100" data-bgpositionend="right center">
                    </li>
                </ul>
                <div class="tp-bannertimer"></div>
            </div>
            <div class="filter-title">
                <div class="title-header">
                    <h2 style="color:#fff;">{{$pests->name}} Pests</h2>
                    <p class="lead">For what {{$pests->name}} pests do you seek the services </p>
                </div>
                <div class="filter-header">
                    <form id="sform" action="pests" method="post">
                        @csrf
                        <input type="text" id="q" name="q" required="required" placeholder="Start typing name to find pest"
                            class="input-large typeahead" autocomplete="off">
                        <input type="submit" name="submit" value="Search">
                    </form>
                </div>
            </div>
        </section>
        <section class="content-central">
            <div class="content_info" style="margin-top: -70px;">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="services-lines full-services">
                        	@foreach ($pests->pests as $pest)
                            <li>
                                <div class="item-service-line">
                                    <i class="fa"><a href="{{ url('/showPestDetails/' .$pest->id) }}"><img class="icon-img img-responsive" style="height: 100px;" 
                                                src="{{asset ($pest->image1)}}" alt="AC"></a></i>
                                    <h5>{{$pest->name}}</h5>
                                </div>
                            </li>
                        	@endforeach
                        </ul>
                    </div>
                </div>
            </div>
            <div class="content_info content_resalt">
                <div class="container">
                    <div class="row">
                        <div class="titles">
                        </div>
                    </div>
                </div>
            </div>
        </section>
@endsection