@extends('layouts.admin2')

@section('content')


<div class="app-main__outer">
	<div class="app-main__inner">
		<div class="app-page-title">
			<div class="page-title-wrapper">
				<div class="page-title-heading">
					<div>iGrowers Service Providers
					</div>
				</div>
				<div class="page-title-actions">
					<button type="button" data-toggle="tooltip" title="Logout" data-placement="bottom" class="btn-shadow mr-3 btn btn-dark">
						<a href="{{ route('sproviders.logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
							<i class="fa fa-power-off"></i>
						</a>
						<form action="{{ route('sproviders.logout') }}" method="post" id="logout-form">@csrf</form>  
					</button>
					<div class="d-inline-block dropdown">
					</div>
				</div>    
			</div>
		</div> 
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-body"><h5 class="card-title">Register Service</h5>
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
						<form action="{{ route('sproviders.create_service') }}" method="post" enctype="multipart/form-data">
							@csrf
							<div class="form-row">
								<div class="col-md-6">
									<div class="position-relative form-group"><label for="name" class="">Service</label><input name="name" id="name" type="text" class="form-control"></div>
								</div>
								<div class="col-md-6">
									<div class="position-relative form-group"><label for="image" class="">Image</label><input name="image" type="file" class="form-control-file">
									</div>
								</div>
							</div>
							<div class="position-relative form-group"><label for="details" class="">Details</label><textarea name="details" id="details" type="text" class="form-control"></textarea>
							</div>
							<div class="position-relative form-group"><label for="location" class="">Location</label><input name="location" id="location" type="text" class="form-control"></div>
							<div class="form-row">
								<div class="col-md-4">
									<div class="position-relative form-group"><label for="contact_person" class="">Contact Person</label><input name="contact_person" id="contact_person" type="text" class="form-control">
									</div>
								</div>
								<div class="col-md-4">
									<div class="position-relative form-group"><label for="phone" class="">Phone</label><input name="phone" id="phone" type="text" class="form-control"></div>
								</div>
								<div class="col-md-4">
									<div class="position-relative form-group"><label for="email" class="">Email</label><input name="email" id="email" type="email" class="form-control"></div>
								</div>
							</div>
							<button class="mt-2 btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		
	</div>    
</div>
@endsection