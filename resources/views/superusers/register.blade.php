@extends('layouts.admin')
@section('content')
<div class="section-title-01 honmob">
	<div class="bg_parallax image_01_parallax"></div>
	<div class="opacy_bg_02">
		<div class="container">
			<h1>Super User Registration</h1>
		</div>
	</div>
</div>
<section class="content-central">
	<div class="semiboxshadow text-center">
	</div>
	<div class="content_info">
		<div class="paddings-mini">
			<div class="container">
				<div class="col-xs-12 col-sm-6 col-md-6 col-md-offset-3 profile1" style="padding-bottom:40px;">
					<div class="thinborder-ontop">
						@if (Session::get('success'))
						<div class="alert alert-success alert-dismissible">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							{{session::get('success')}}
						</div>
						@endif
						@if (Session::get('fail'))
						<div class="alert alert-danger alert-dismissible">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							{{session::get('fail')}}
						</div>
						@endif
						<h3>User Info</h3>
						<form id="userregisterationform" action="{{ route('superusers.create') }}" method="post">                                    
							@csrf
							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">Name</label>
								<div class="col-md-6">
									<input id="name" type="text" class="form-control" name="name" value="" required="" autofocus="">
									<span class="text-danger">@error('name'){{$message}}@enderror</span>
								</div>
							</div>
							<div class="form-group row">
								<label for="email" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
								<div class="col-md-6">
									<input id="email" type="email" class="form-control" name="email" value="" required="">
									<span class="text-danger">@error('email'){{$message}}@enderror</span>
								</div>
							</div>

							<div class="form-group row">
								<label for="phone" class="col-md-4 col-form-label text-md-right">Phone</label>
								<div class="col-md-6">
									<input id="phone" type="text" class="form-control" name="phone" value="" required="" autofocus="">
									<span class="text-danger">@error('phone'){{$message}}@enderror</span>
								</div>
							</div>

							<div class="form-group row">
								<label for="group" class="col-md-4 col-form-label text-md-right">Group</label>
								<div class="col-md-6">
									<input id="group" type="text" class="form-control" name="group" value="">
									<span class="text-danger">@error('group'){{$message}}@enderror</span>
								</div>
							</div>

							<div class="form-group row">
								<label for="password"
								class="col-md-4 col-form-label text-md-right">Password</label>
								<div class="col-md-6">
									<input id="password" type="password" class="form-control" name="password" required="">
									<span class="text-danger">@error('password'){{$message}}@enderror</span>
								</div>
							</div>
							<div class="form-group row">
								<label for="password-confirm"
								class="col-md-4 col-form-label text-md-right">Confirm Password</label>
								<div class="col-md-6">
									<input id="password-confirm" type="password" class="form-control" name="password_confirmation" required="">
									<span class="text-danger">@error('password_confirmation'){{$message}}@enderror</span>
								</div>
							</div>
							<div class="form-group row mb-0">
								<div class="col-md-10">
									<span style="font-size: 14px;">If you have already registered <a
										href="{{ route('superusers.login') }}" title="Login">click here</a> to login</span>
										<button type="submit" class="btn btn-primary pull-right">Register</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>             
	</section>
	@endsection