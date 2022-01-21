@extends('layouts.admin')
@section('content')

<div class="section-title-01 honmob">
	<div class="bg_parallax image_01_parallax"></div>
	<div class="opacy_bg_02">
		<div class="container">
			<h1>Market</h1>
		</div>
	</div>
</div>
<section class="content-central">
	@if ($errors->any())
	<div class="alert alert-dismissible alert-danger">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
		<strong>Whoops!</strong> There was a problem with you input. <br>
		<ul>
			@foreach ($errors->all() as $error)
				<li>{{$error}}</li>
			@endforeach
		</ul>
	</div>
	@elseif($message = Session::get('success'))
	<div class="alert alert-success alert-dismissible">
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
		<p>{{$message}}</p>
	</div>
@endif
	 <div class="content_info">
                <div class="paddings">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <h3>Farmer Crop for Marketing</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id neque ultrices, pretium mauris id, pharetra lacus. Suspendisse elementum et felis in mollis.</p>
                                <h3>To be registered you will be requested to share the following details</h3>
                                <div class="row">
                                    <div class="col-md-12">
                                        <ul class="list-styles">
                                            <li><i class="fa fa-check"></i> <a href="#">Variety to be planted</a></li>
                                            <li><i class="fa fa-check"></i> <a href="#">Expected start harvest </a></li>
                                            <li><i class="fa fa-check"></i> <a href="#">Planted acreage</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="thinborder-ontop">
                                <h3>Please Register Here</h3>
                                <form id="userregisterationform" action="{{ route('market.store') }}" method="POST">        @csrf               
                                    <div class="form-group row">
                                        <label for="name" class="col-md-4 col-form-label text-md-right">Name</label>
                                        <div class="col-md-6">
                                            <input id="name" type="text" class="form-control" name="name" value="" required="" autofocus="">
                                        </div>
                                    </div>
                                    <div class="form-group row" hidden>
                                        <label for="email" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
                                        <div class="col-md-6">
                                            <input id="email" type="email" class="form-control" name="email">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="phone" class="col-md-4 col-form-label text-md-right">Phone</label>
                                        <div class="col-md-6">
                                            <input id="phone" type="text" class="form-control" name="phone" value="" required="" autofocus="">
                                        </div>
                                    </div>

                                     <div class="form-group row">
                                        <label for="crop" class="col-md-4 col-form-label text-md-right">Crop Planted</label>
                                        <div class="col-md-6">
                                            <select id="crop" type="text" class="form-control" name="crop">
                                                <option></option>
                                                <option>Beans</option>
                                                <option>Avocado</option>
                                                <option>Tomatoes</option>
                                                <option>French Beans</option>
                                            </select>

                                        </div>
                                    </div>


                                    <div class="form-group row mb-0">
                                        <div class="col-md-10">
                                            <button type="submit" class="btn btn-primary pull-right">Register</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="opacy_bg_02 padding-bottom">
                    <div class="container wow fadeInUp">
                        <div class="row text-center">
                            <div class="col-md-12">
                                <div class="container">
                                    <div class="row">
                                        <div class="titles">
                                            <h2>Market Reports</h2>
                                        </div>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut id neque ultrices, pretium mauris id, pharetra lacus. Suspendisse elementum et felis in mollis. Quisque nec porttitor diam, sed tincidunt quam. Aliquam lacinia nisl non lobortis ornare. Nam dapibus dui id lacus condimentum facilisis. Sed bibendum mi at ornare venenatis. </p>
                                <div class="row text-center padding-top-mini">
                                    <a href="{{ route('marketdetails') }}" class="btn btn-primary">View Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</section>

@endsection