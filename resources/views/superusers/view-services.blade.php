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
						<a href="{{ route('superusers.logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
							<i class="fa fa-power-off"></i>
						</a>
						<form action="{{ route('superusers.logout') }}" method="post" id="logout-form">@csrf</form>  
					</button>
					<div class="d-inline-block dropdown">
					</div>
				</div>    
			</div>
		</div> 
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-body"><h5 class="card-title">All Service Providers</h5>
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

						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover" id="dataTables-example">
								<thead>
									<tr>
										<th>No</th>
										<th>Image</th>
										<th>Name</th>
										<th>Details</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									@foreach ($services as $service)
									<tr class="odd gradeX">
										<td>{{$service->id}}</td>
										<td><img src="/image/{{ $service->image }}" alt=""
											class="img-responsive" width="50px"></td>
											<td>{{$service->name}}</td>
											<td>{{$service->details}}</td>
											<td class="center">
												@if (isset($service->status))
												<button class="btn btn-success">Approved</button>
												@else
												<button class="btn btn-warning">Pending</button>
												@endif
											</td>
											<td class="center">
												@if (empty($service->status))
												<a href="#" data-toggle="modal" onclick="showApproveModal({{$service->id}})" class="btn btn-info">Approve</a>
												@endif
											</td>
										</tr>
										@endforeach

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>    
	</div>

	@endsection
	<!-- Modal -->
	<div class="modal fade" id="details_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Approve Service</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p> Are you sure you want to approve this service? Click Ok to continue</p>
					@csrf
					<div id="non-items-container" hidden  >
						<div class="row form-group">
							<label for="" class="col-md-3">id</label>
							<div class="col-md-9">
								<input type="text" name="id" class="form-control" id="id">
							</div>
						</div>

						<div class="row form-group">
							<label for="" class="col-md-3">Approve</label>
							<div class="col-md-9">
								<input type="checkbox" id="status" value="approved" class="toggle-checkbox" name="status" checked>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<button type="button" id="footer_approve_action" data-dismiss="modal" class="btn btn-flat btn-success"><i class="fa fa-check-circle"></i> Ok</button>
				</div>
			</div>
		</div>
	</div>
	<!-- End Modal -->   
	@push('scripts')
	<script>
		function showApproveModal(id) {
			$.ajax({
				url: "{{ url('superuser/preview') }}" + '/' + id,
				type: 'GET',
				dataType: 'JSON',
				success: function(data) {
    // console.log(data);
    $('#details_modal').modal('show');
    $('#id').val(data.id);
},
error: function(error){
	alert('error')
}
})
		};

		$(document).on('click', '#footer_approve_action', function() {
			$.ajax({
				url: "{{ url('superuser/approve') }}" + '/' + id,
				type: 'post',
				dataType: 'JSON', 
				data: {
					'_token' : $('input[name = _token]').val(),
					'id': $('#id').val(),
					'status':  $('#status').val(),
				},
			}).then(function(response){
				window.location.reload(); 
			})
		});
	</script>
	@endpush