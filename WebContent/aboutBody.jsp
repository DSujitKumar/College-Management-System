<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

/* Style the tab */
.tab {
    float: left;
	
    background-color: #477087;
    width: 30%;
    height: 600px;
    margin-top: 50px;
    margin-bottom: 50px;
    border-top: 15px solid #fef6c0;
    border-bottom: 15px solid #fef6c0;
    border-left: 15px solid #fef6c0;
    border-top-left-radius: 30px;
}

/* Style the buttons inside the tab */
.tab button {
    display: block;
    background-color: inherit;
    color: black;
    padding: 22px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}
#btn{
height: 50px;
width: 200px;
text-align: center;
background-color: #c5c9d2;
border-radius: 10px;
margin-left: 10px;
font-size: 20px;
-webkit-transition-duration: 0.4s;
box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}
#btn:hover {
cursor :pointer;
box-shadow: none;
}

/* Create an active/current "tab button" class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    float: left;
    padding: 0px 12px;
    border: 1px solid #ccc;
    width: 70%;
    border-left: none;
    height: 600px;
    margin-top: 50px;
    margin-bottom: 50px;
     border-top: 15px solid #fef6c0;
       border-right: 15px solid #fef6c0;
       border-bottom: 15px solid #fef6c0;
       border-bottom-right-radius: 30px;
       background-color: #030001;
}
</style>
</head>
<body>
<div>
<a href="campusLife.jsp"><button id="btn" style="margin-left: 100px;">Campus Life</button></a>
<a href="proud.jsp"><button id="btn">Proud Of</button></a>
<a href="placement.jsp"><button id="btn">Placements</button></a>
<a href="faculties.jsp"><button id="btn">Faculties</button></a>
</div>
<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'a')" id="defaultOpen" style="border-top-left-radius: 15px;">Who We Are...</button>
  <button class="tablinks" onclick="openCity(event, 'b')">Mission...</button>
  <button class="tablinks" onclick="openCity(event, 'c')">Vision & Motto...</button>
  <button class="tablinks" onclick="openCity(event, 'd')">Chairman...</button>
  <button class="tablinks" onclick="openCity(event, 'e')">Principal...</button>
  
</div>

<div id="a" class="tabcontent">
  <h3>Who We Are</h3>
</div>

<div id="b" class="tabcontent">
  <h3>Mission</h3>
  
</div>

<div id="c" class="tabcontent">
  <h3>Vision & Motto</h3>
  
</div>
<div id="d" class="tabcontent">
  <h3>Sri Ghanashayam Jena</h3>
  <div style="overflow: scroll; max-height: 450px;">
  <div style="float: left; width: 85%; height: 100px; margin: 10px;" ><p style="text-align: justify;">An incomparable leader, visionary and a pioneer of a plethora of trade union movements across India, Sri Ghanashayam Jena has carved out a specific niche for himself in the field of human resource industry as well as national labour scene. Well known as an architect of a radical and revolutionary trade unionism in India .Sri Jena has been a lifelong fighter against imperial apathy towards the workers pleading for their basic rights and dignity.</p></div>
  <div style="float: right; width: 10%; height: 100px; background-image: url('images/newimages/chairman.jpg'); border: 5px solid black; margin-right: 5px;"></div>
  <div 	style="float: left; width: 98%; margin: 10px;"><p style="text-align: justify;">Sri Jena has been the founding father of a multi trade of trade unions including "All India Food Corporation of India Workers Union" ,"Paradeep Dock Majdoor Union" ,"All India Food and Allied Workers Union", to mention only a few . Sri Jena has been the founding chair man of the "FCI Workers Co-operative Society "and "Ghanashyam Hemalata Vidya Mandir Society" that has launched a series of educational programmes to nurture and develop talents.
</p><p style="text-align: justify;">
Sri Jena, because of his close association with the workers community could visualize that the lack of proper education is the root of all their flight and misery. He thought of engineering education as an 'open sesame 'for their children to explore new horizons in their attempt to become professionals and as such builders of the nation.
</p><p style="text-align: justify;">
Now in his 70's Sri Jena has become a legend for being a perennial source of inspiration and encouragement for all those people who try to emulate him in their works and principles.</p></div>
<div style="float: left; width: 98%; height: 100px; margin: 10px; margin-bottom: 20px;"  >
<h6 style="padding-left: 10px;">ChairMan's Message</h6>
<p style="text-align: justify;">I extend a very warm welcome to those who have chosen the Ghanashyam Hemalata Institute of Technology & Management as the place their study and research. The Institute will try its best to give them scope and opportunity for their dreams and aspirations to come true.</p>
<p style="text-align: justify;">The Institute has been founded on a structure where students pursue not only academic excellence but learn about some uncompromising human virtues. The idyllic location and tranquil Gurukul atmosphere, in which it stands, helps them to combine scholarship with ethics and leadership with vision.</p>
<p style="text-align: justify;">I  am sure, all the students of the Ghanashyam Hemalata Institute of Technology & Management would prove their mettles in scratching out a new map of their career on their march to become world-class professionals and inspiring leaders of the future.</p>
<p style="text-align: justify;">I wish them all a grand success.</p>
<p style="text-align: justify;"><b>Ghanashyam Jena </b><br> Chairman<br>Ghanashyam Hemalata Vidyamandir Society<br>Puri</p>
</div>
</div>
</div>
<div id="e" class="tabcontent">
  <h3>Vision & Motto</h3>
  
</div>
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
     
</body>
</html> 
