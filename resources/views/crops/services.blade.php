@extends('layouts.admin')
@section('content')
<div class="section-title-01 honmob">
	<div class="bg_parallax image_01_parallax"></div>
	<div class="opacy_bg_02">
		<div class="container">
			<h1>iGrowers Services</h1>
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
	<div class="container">
		<div class="row" style="margin-top: -30px;">
			<div class="titles">
				<h2><span>Services</span></h2>
				<hr class="tall">
			</div>
		</div>
	</div>
	<div class="content_info" style="margin-top: -70px;">
		<div>
			<div class="container">
				<div class="portfolioContainer">
					@foreach ($services as $service)
					@if ($service->status == "approved")
					<div class="col-xs-6 col-sm-4 col-md-3 nature hsgrids"
					style="padding-right: 5px;padding-left: 5px;">
					<a class="g-list" href="service-details/ac-wet-servicing.html">
						<div class="img-hover">
							<img src="/image/{{ $service->image }}" alt=""
							class="img-responsive">
						</div>
						<div class="info-gallery">
							<h3>{{$service->name}}</h3>
							<hr class="separator">
							<p>{{$service->location}}</p>
							<div class="row">
								<div class="col-md-4 col-md-offset-2">
									<div class="content-btn"><a href="#" onclick="showDetails('{{$service->id}}')"
								class="btn btn-primary">Details</a></div>
							</div>
								<div class="col-md-4">
									<div class="content-btn"><a href="#" onclick="showBooking('{{$service->id}}')"
								class="btn btn-info">Book</a></div>
							</div>
								</div>
							</div>
						</a>
					</div>                        		
					@endif
					@endforeach
				</div>
			</div>
		</div>
	</div> 

</section>
	<!-- Modal 1 -->

			<div class="modal fade" id="details_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Services Details</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p id="name"></p>
							<p id="details"></p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
			<!-- End Modal --> 

			<!-- Modal 1 -->

			<div class="modal fade" id="orderdetails_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Order Services</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							@csrf
							<div hidden>
						<div class="row form-group">
							<label for="" class="col-md-3">Id</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="bid"  name ="bid">
							</div>
						</div>
						<div class="row form-group">
							<label for="" class="col-md-3">Service</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="sname"  name ="sname">
							</div>
						</div>
						<div class="row form-group">
							<label for="" class="col-md-3">Service Provider Id</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="spid"  name ="spid">
							</div>
						</div>
					</div>
						<div class="row form-group">
							<label for="" class="col-md-3">Your Name</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="fname"  name ="fname">
							</div>
						</div>
						<div class="row form-group">
							<label for="" class="col-md-3">Your Phone</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="fphone"  name ="fphone">
							</div>
						</div>
						<div class="row form-group">
							<label for="" class="col-md-3">Your Location</label>
							<div class="col-md-9">
								<input type="text" class="form-control" id="flocation"  name ="flocation">
							</div>
						</div>
						<div class="row form-group">
							<label for="" class="col-md-3">Book Date</label>
							<div class="col-md-9">
								<input type="date" class="form-control" id="date"  name ="date">
							</div>
						</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							<button type="button" id="footer_order_action" data-dismiss="modal" class="btn btn-flat btn-success"><i class="fa fa-check-circle"></i> Submit</button>
						</div>
					</div>
				</div>
			</div>
			<!-- End Modal -->           
@endsection
@push('scripts')
<script>
	function showDetails(id) {
		$.ajax({
			url: "{{ url('services') }}" + '/' + id,
			type: 'GET',
			dataType: 'JSON',
			success: function(data) {
				// console.log(data);
				$('#details_modal').modal('show')
				$('#name').text(data.name);
				$('#details').text(data.details);

			},
			error: function(error){
				alert('error')
			}
		})
	};

	function showBooking(id) {
		$.ajax({
			url: "{{ url('services') }}" + '/' + id,
			type: 'GET',
			dataType: 'JSON',
			success: function(data) {
				// console.log(data);
				$('#orderdetails_modal').modal('show')
				$('#bid').val(data.id);
				$('#sname').val(data.name);
				$('#spid').val(data.user_id);

			},
			error: function(error){
				alert('error')
			}
		})
	};

	$(document).on('click', '#footer_order_action', function() {
			$.ajax({
				url: "{{ url('/create_orders') }}",
				type: 'post',
				dataType: 'JSON', 
				data: {
					'_token' : $('input[name = _token]').val(),
					'id': $('#id').val(),
					'bid': $('#bid').val(),
					'sname':  $('#sname').val(),
					'spid':  $('#spid').val(),
					'fname': $('#fname').val(),
					'fphone':  $('#fphone').val(),
					'flocation': $('#flocation').val(),
					'date':  $('#date').val(),
				},
			}).then(function(response){
				window.location.reload(); 
			})
		});
</script>
@endpush