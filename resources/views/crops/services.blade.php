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
							<div class="content-btn"><a href="#" onclick="showDetails('{{$service->id}}')"
								class="btn btn-primary">Details</a></div>
							</div>
						</a>
					</div>                        		
					@endforeach
				</div>
			</div>

			<!-- Modal -->

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
							<p id="details"></p>
							<div class="row">
								<div class="col-md-6"><p id="phone"></p></div>
								<div class="col-md-6"><p id="email"></p></div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>            
</section>
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
				$('#details').text(data.details);
				$('#phone').text(data.phone);
				$('#email').text(data.email);

			},
			error: function(error){
				alert('error')
			}
		})
	};
</script>
@endpush