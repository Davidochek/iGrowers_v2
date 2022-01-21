@extends('layouts.admin')

@section('content')

 <section class="tp-banner-container">
            <div class="tp-banner">
                <ul>
                    <li data-transition="slidevertical" data-slotamount="1" data-masterspeed="2000"
                        data-saveperformance="off" data-title="Slide">
                        <img src="{{asset('assets/img/crops/1.jpg')}}" alt="fullslide1" data-bgposition="center center"
                            data-kenburns="on" data-duration="8000" data-ease="Linear.easeNone" data-bgfit="130"
                            data-bgfitend="100" data-bgpositionend="right center">
                    </li>
                    <li data-transition="slidehorizontal" data-slotamount="1" data-masterspeed="2000"
                        data-saveperformance="off" data-title="Slide">
                        <img src="{{asset('assets/img/crops/2.jpg')}}" alt="fullslide1" data-bgposition="top center"
                            data-kenburns="on" data-duration="8000" data-ease="Linear.easeNone" data-bgfit="130"
                            data-bgfitend="100" data-bgpositionend="right center">
                    </li>
                    <li data-transition="slidehorizontal" data-slotamount="1" data-masterspeed="2000"
                        data-saveperformance="off" data-title="Slide">
                        <img src="{{asset('assets/img/crops/3.jpg')}}" alt="fullslide1" data-bgposition="top center"
                            data-kenburns="on" data-duration="8000" data-ease="Linear.easeNone" data-bgfit="130"
                            data-bgfitend="100" data-bgpositionend="right center">
                    </li>
                    <li data-transition="slidehorizontal" data-slotamount="1" data-masterspeed="2000"
                        data-saveperformance="off" data-title="Slide">
                        <img src="{{asset('assets/img/crops/peas.jpg')}}" alt="fullslide1" data-bgposition="top center"
                            data-kenburns="on" data-duration="8000" data-ease="Linear.easeNone" data-bgfit="130"
                            data-bgfitend="100" data-bgpositionend="right center">
                    </li>
                </ul>
                <div class="tp-bannertimer"></div>
            </div>
            <div class="filter-title">
                <div class="title-header">
                    <h2 style="color:#fff;">iGrowers Farmers Information Hub</h2>
                    <p class="lead">Lorem Ipsum is simply dummy text of the printing and typesetting industry.  </p>
                    <a href="{{ route('home') }}" class="btn btn-primary">Get Started</a>
                </div>
            </div>
        </section>
@endsection