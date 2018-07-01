<!DOCTYPE html>
<html lang="en">
	<head>
	<style type="text/css">
	#butn:hover {
		cursor: pointer;
		
	}
	</style>
		<meta charset="utf-8">
		<title>Home</title>
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico">
		<link rel="stylesheet" href="css/camera.css">
		<link rel="stylesheet" href="css/component.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.1.1.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/camera.js"></script>
		<script src="js/snap.svg-min.js"></script>
		<!--[if (gt IE 9)|!(IE)]><!-->
		<script src="js/jquery.mobile.customized.min.js"></script>
		<!--<![endif]-->
		<script>
		$(document).ready(function(){
			jQuery('#camera_wrap').camera({
			loader: false,
			pagination: true ,
			minHeight: '394',
			thumbnails: false,
			height: '40.1875%',
			caption: false,
			navigation: false,
			fx: 'mosaic'
			});
			$().UItoTop({ easingType: 'easeOutQuart' });
		})
		</script>
		<!--[if lt IE 8]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
				<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
			</a>
		</div>
		<![endif]-->
		<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<link rel="stylesheet" media="screen" href="css/ie.css">
		<![endif]-->
		<!--[if lt IE 10]>
		<link rel="stylesheet" media="screen" href="css/ie1.css">
		<![endif]-->

	</head>
	<body class="page1">
<!--==============================header=================================-->
		
		<header>
		<div onclick="window.history.back();" style="float :right; margin-top: 15px; margin-bottom: 2px; height: 20px; width: 100px; border-radius: 20%; background-color: red;margin-right:100px; text-align: center; font-weight: bold; font-size: 15px; color: black;" id="butn">Go Back</div>
			<div class="container_12">
				<div class="grid_12">
					<center><a href="index.jsp"><img alt="GHITM" src="images/newimages/logo.PNG"></a></center>
					<div class="menu_block">
						<nav id="bt-menu" class="bt-menu">
							<a href="#" class="bt-menu-trigger"><span>Menu</span></a>
							<ul>
								<li class="current bt-icon"><a href="index.jsp">Home</a></li>
								<li class="bt-icon"><a href="studentLogin.jsp">Registration</a></li>
								<li class="bt-icon"><a href="login.jsp">Login</a></li>
								<li class="bt-icon"><a href="gallery.jsp">gallery</a></li>
								<li class="bt-icon"><a href="about.jsp">About Us</a></li>
								<li class="bt-icon"><a href="contact.jsp">Contacts Us</a></li>
							</ul>
						</nav>
						<div class="clear">
						
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</header>

		<script>
		
			$(document).ready(function(){
			 $(".bt-menu-trigger").toggle(
				function(){
				$('.bt-menu').addClass('bt-menu-open');
				},
				function(){
				$('.bt-menu').removeClass('bt-menu-open');
				}
			);
			});
			(function() {
			function init() {
				var speed = 250,
				easing = mina.easeinout;
				[].slice.call ( document.querySelectorAll( '#grid > a' ) ).forEach( function( el ) {
				var s = Snap( el.querySelector( 'svg' ) ), path = s.select( 'path' ),
					pathConfig = {
					from : path.attr( 'd' ),
					to : el.getAttribute( 'data-path-hover' )
					};
				el.addEventListener( 'mouseenter', function() {
					path.animate( { 'path' : pathConfig.to }, speed, easing );
				} );
				el.addEventListener( 'mouseleave', function() {
					path.animate( { 'path' : pathConfig.from }, speed, easing );
				} );
				} );
			}
			init();
			})();
		</script>
	