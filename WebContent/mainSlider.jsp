<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
				.logo1{
			max-height: 100px;
			width: 100%;
			font-size: 37px;
			text-align: left:;
    text-transform: uppercase;
    color: #4CAF50;
		}
		.holder1{
			width: 100%;
			max-height:100px;
			margin-left:20%;
			margin-top: 20px;
			margin-bottom: 30px;
			position: relative;
		}
		.menu1{
			float: left;	
			height: 20px;
			width: 130px;
			margin-top: 10px;
			font-size: 18px;
			font-family:Arial Black; 
			color: #93999c;
		}
		.menu1:hover{
			color: black;
		}
body {font-family: Verdana,sans-serif;
background-color: #fff;}
.mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 1600px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 45px;
  padding: 8px 12px;
  position: absolute;
  bottom: 40px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 2s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 0.3s;
  animation-name: fade;
  animation-duration: 0.3s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
#foot{

			float:left;
			max-height: 300px;
			min-height: 300px;
			border-radius: 20%;
		}
		#address{
			float: left;
			width: 400px;	
			margin-top: 50px;
			margin-left: 50px;
			height:280px;
		}
		.links{
			float: left;
			width: 400px;	
			margin-top: 45px;
			margin-left: 60px;
			height:280px;
		}
		div footer div table tr td{
			font-size: 15px;
			padding: 0px;
			text-shadow: 1px 0px #a4becc;
			font-family: Century;
		}
		div footer div table tr th{
			font-size: 20px;
			padding: 0px;
			text-shadow: 1px 0px #a4becc;
			font-family: Times New Roman;
		}
		div footer div div table tr th{
		}
		div footer div div table tr td{
			padding-left: 25px;
		}
		 div footer div div table tr td:hover{
			text-shadow :1px 2px 1px green ;
			padding-left: 32px;
		}
		.socialss{
			float: left;
			margin-top: 21px;
		}
		.socialss div{
		float: left;
		opacity: 0.8;
		width:49px;height: 49px;
		}
		.socialss div:hover{
		opacity: 1;
		
		}
		.latestannouncement{
		height: 300px;
		width: 100%;
		overflow: hidden;
		background-color: #f4eeb1;
		border-top-left-radius: 30px;
		border-top-right-radius: 30px;
		border-bottom-left-radius: 30px;
		border-bottom-right-radius: 30px;
		}
		.latestnews{
		float: left;
		height: 300px;
		width: 40%;
		overflow: hidden;
		background-color: #fbc532;
		border-top-left-radius: 30px;
		border-top-right-radius: 30px;
		}
	</style>
</head>
<body>
<header>

</header>
<div class="slideshow-container">
<center>
	<div class="logo1">
	<a href="index.jsp"><img alt="ghitm" src="images/newimages/logo.PNG"></a>
	
	</div>
	<div class="holder1">
		<a href="index.jsp"><div class="menu1" style="padding-bottom: 20px;">Home</div></a>
		<a href="studentLogin.jsp"><div class="menu1">Registration</div></a>
		<a href="login.jsp"><div class="menu1" >Login</div></a>
		<a href="gallery.jsp"><div class="menu1" style="padding-left: 6px;">Gallery</div></a>
		<a href="about.jsp"><div class="menu1">AboutUs</div></a>
		<a href="contact.jsp"><div class="menu1">Contact</div></a>
		
	</div>
</center>	
<div style="margin-top: 20px;">
<div class="mySlides fade" style="margin-top: 50px;">
  <div class="numbertext">1 / 6</div>
  <img src="images/newimages/1.png" style="width:100%">
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/newimages/2.png" style="width:100%">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/newimages/4.png" style="width:100%">
  <div class="text">Caption Three</div>
</div>
<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/newimages/3.png" style="width:100%">
  <div class="text">Caption four</div>
</div>
<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/newimages/5.png" style="width:100%">
  <div class="text">Caption four</div>
</div>
<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/newimages/6.png" style="width:100%">
  <div class="text">Caption four</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
</div>
</div>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 10000);
}
</script>
<div class="latestannouncement">
<div style="padding-left: 30px;width: 25%;"><h3>Latest Announcement</h3></div>
<div style="background-color: red; height: 250px;width:100%;margin-top: 10px;">
	<marquee scrollamount="5" direction="left">
	<b><p>Celebrating 20 years of quality education to the Nation</p>
	<p>Faculties from IIT & NITs, offering highest standard of teaching.</p>
	<p>Celebrating 20 years of quality education to the Nation</p>
	<p>Faculties from IIT & NITs, offering highest standard of teaching.</p>
	<p>Celebrating 20 years of quality education to the Nation</p>
	<p>Faculties from IIT & NITs, offering highest standard of teaching.</p>
	</b>
	 </marquee>

</div>
</div>
<div class="latestnews">
<div style="padding-left: 30px;width: 25%;"><h3>Latest Announcement</h3></div>
<div style="background-color: #d9c591; height: 250px;width:100%;margin-top: 10px;">
	<marquee scrollamount="5" direction="up">
	<table style="margin-left: 20px;">
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		<tr><th style="background-color: #b99adc;color: white;">15-05-2017</th><th style="padding-left: 15px;">Campus Drive TCS</th></tr>
		
		
	</table>
	 </marquee>

</div>


</div>
<div class="hText">
		<span class="homegray2" style="font-size: 20px; color: #1d1a45; margin-top :30px;padding: 10px; font-weight: bold;">Facilities Available</span><br>
                              <img src="images/bullett.png" width="14" height="11"> 24*7 water ........<br>
                              <img src="images/bullett.png" width="14" height="11"> Indoor Games...<br>
                              <img src="images/bullett.png" width="14" height="11"> Hall Tickets....<br>
                              <img src="images/bullett.png" width="14" height="11"> Pen and other writing materials.<br>
                              <img src="images/bullett.png" width="14" height="11"> Three copies of Resume<br>
                              <img src="images/bullett.png" width="14" height="11"> Identity cards<br>
		</div>

<!--======================================Footer=========================-->
<div>
	<footer id="foot">
		<div id="address">
			<table>
				<tr>
					<th style="text-align: left; padding-bottom: 5px;">Address:</th>
				</tr>
				<tr>
					<th style="text-align: left;">Ghanashayam Hemalata Institute Of Technology And Management</th>
				</tr>
				<tr>
					<td>Rasananda Jena Vihar,</td>
				</tr>
				<tr>
					<td>Bhuan,Chaitana</td>
				</tr>
				<tr>
					<td>Puri-Konark Road,</td>
				</tr>
				<tr>
					<td>PIN-752002,Odisha India</td>
				</tr>
			</table>
		</div>
		<div class="links">
			<div>
				<table>
					<tr>
						<th style="text-align: left; padding-bottom: 5px;">Quick Links</th>
					</tr>
					<tr><td><a href="index.jsp" style="text-decoration: none; color: black;">Home</a></td></tr>
					<tr><td><a href="registration.jsp" style="text-decoration: none; color: black;">Registration</a></td></tr>
					<tr><td><a href="login.jsp" style="text-decoration: none;color: black;">Login</a></td></tr>
					<tr><td><a href="gallery.jsp" style="text-decoration: none;color: black;">Gallery</a></td></tr>
					<tr><td><a href="about.jsp" style="text-decoration: none;color: black;">About Us</a></td></tr>
					<tr><td><a href="contact.jsp" style="text-decoration: none;color: black;">Contact us</a></td></tr>
				</table>
			</div>
		</div>
		<div class="socialss">
				<h4 style="font-size: 25px; font-family: Times New Roman; padding-bottom: 15px;">Socials</h4>
				<a href="#"><div><img src="images/newimages/facebook.png" style="width:49px;height: 49px;"></div></a>
				<a href="#"><div><img src="images/newimages/gp.png" style="width:49px;height: 49px;"></div></a>
				<a href="#"><div><img src="images/newimages/twter.png" style="width:49px;height: 49px;"></div></a>
				<a href="#"><div><img src="images/newimages/insta.png" style="width:49px;height: 49px;"></div></a>
				<a href="#"><div><img src="images/newimages/pin.png" style="width:49px;height: 49px;"></div></a>
				
			</div>
	</footer>
</div>
</body>
</html>