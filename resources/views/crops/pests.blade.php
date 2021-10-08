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
                    <li data-transition="slidehorizontal" data-slotamount="1" data-masterspeed="1000"
                        data-saveperformance="off" data-title="Slide">
                        <img src="{{asset('assets/img/slide/2.jpg')}}" alt="fullslide1" data-bgposition="top center"
                            data-kenburns="on" data-duration="6000" data-ease="Linear.easeNone" data-bgfit="130"
                            data-bgfitend="100" data-bgpositionend="right center">
                    </li>
                </ul>
                <div class="tp-bannertimer"></div>
            </div>
            <div class="filter-title">
                <div class="title-header">
                    <h2 style="color:#fff;">iGrowers Infohub</h2>
                    <p class="lead">For what crop do you seek the services </p>
                </div>
                <div class="filter-header">
                    <form id="sform" action="{{ route('searchPest') }}" method="post">
                        @csrf
                        <input type="text" id="q" name="q" required="required" placeholder="Start typing name to find crops"
                            class="input-large typeahead" autocomplete="off">
                        <input type="submit" name="submit" value="Search">
                    </form>
                </div>
            </div>
        </section>

@endsection

@push('scripts')
<script type="text/javascript">
  var path = "{{ route('autocomplete') }}";
  $('input.typeahead').typeahead({
    source: function(query, process){
        return $.get(path, {query:query}, function(data){
            return process(data);
        });
    }
  });  
</script>
@endpush