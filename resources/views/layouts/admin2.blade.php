<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Language" content="en">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>iGrowers - iGrowers Information Hub</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
	<meta name="description" content="This is an example dashboard created using build-in elements and components.">
	<meta name="msapplication-tap-highlight" content="no">
	<link href="{{ asset('./main.css') }}" rel="stylesheet">
</head>
<body>
	<div class="app-container app-theme-white body-tabs-shadow fixed-header">
		<div class="app-header header-shadow">
			<div class="app-header__logo">
				<a href="index.php.html"><img src="{{ asset('images/image.png') }}" style="width:100px;height:50px;"></a>
			</div>    
			<div class="app-header__content">
				<div class="app-header-right">
					{{-- Header Right --}}     
				</div>
			</div>
		</div>     
		<div class="app-main">    
			@yield('content')
				<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
			</div>
			   <div class="app-wrapper-footer">
                        <div class="app-footer">
                            <div class="app-footer__inner">
                                <div class="app-footer-left">
                                    <ul class="nav">
                                        <li class="nav-item">
                                            <p class="text-xs-center crtext">&copy; 2021 iGrowers. All Rights Reserved.</p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
		</div>
		<script type="text/javascript" src="{{ asset('./assets2/scripts/main.js') }}"></script>
	</body>
	</html>