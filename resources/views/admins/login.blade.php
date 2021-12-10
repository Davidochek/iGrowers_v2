@extends('layouts.admin')
@section('content')
<div class="section-title-01 honmob">
	<div class="bg_parallax image_01_parallax"></div>
	<div class="opacy_bg_02">
		<div class="container">
			<h1>Admins Login</h1>
		</div>
	</div>
</div>
<section class="content-central">
	<div class="content_info">
		<div class="paddings-mini">
			<div class="container">
				<div class="row portfolioContainer">
					<div class="col-xs-12 col-sm-3 col-md-3 profile1">
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6 profile1" style="min-height: 300px;">
						<div class="thinborder-ontop">
							@if (Session::get('fail'))
							<div class="alert alert-danger alert-dismissible">
								<button type="button" class="close" data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								{{Session::get('fail')}}
							</div>
							@endif	
							<h3>Login Info</h3>
							<form id="userloginform" action="{{ route('admins.check') }}" method="post">                 @csrf                       
								<div class="form-group row">
									<label for="email" class="col-sm-4 col-form-label text-md-right">E-Mail Address</label>
									<div class="col-md-6">
										<input id="email" type="email" class="form-control" name="email" value="{{old('email')}}">
										<span class="text-danger">@error('email'){{$message}}@enderror</span>
									</div>
								</div>
								<div class="form-group row">
									<label for="password"
									class="col-md-4 col-form-label text-md-right">Password</label>
									<div class="col-md-6">
										<input id="password" type="password" class="form-control" name="password" value="{{old('password')}}">
										<span class="text-danger">@error('passwordl'){{$message}}@enderror</span>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-md-6">
										<div class="checkbox">
											<label>
												<input type="checkbox" name="remember"> Remember Me </label>
											</div>
										</div>
										<div class="col-md-4">
											<button type="submit" class="btn btn-primary pull-right">Login</button>
										</div>
									</div>
									<div class="form-group row mb-0">
										<div class="col-md-10">
											<a class="" href="password/reset.html">Forgot Your Password?</a>
										</div>
									</div>
								</form>
							</div>                                
						</div>
						<div class="col-xs-12 col-sm-3 col-md-3 profile1">
						</div>
					</div>
				</div>
			</div>
		</div>           
	</section>
	@endsection