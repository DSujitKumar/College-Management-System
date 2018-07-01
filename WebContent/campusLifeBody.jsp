<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
* {box-sizing: border-box}

/* Set height of body and the document to 100% */
body{
    height:600px; ;
    margin: 0;
    font-family: Arial;
}

/* Style tab links */
.tablink {
    background-color: #555;
    color: white;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    font-size: 17px;
    width: 25%;
}

.tablink:hover {
    background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
    color: white;
    display: none;
    padding: 10px 20px;
    height: 100%;
    overflow: hidden;
}

h3{
color: black;}
#sanctity {background-color: blue;}
#Academic {background-color: green;}
#Hostel {background-color: red;}
#Sports {background-color: orange;}



/* Style the tab */
.taba {
    float: left;
    border: 1px solid #ccc;
    background-color: #eef946;
    width: 30%;
    height: 100%;
    
}

/* Style the buttons inside the tab */
.taba button {
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
.taba button:hover {
    background-color: #ddd;
}

/* Create an active/current "tab button" class */
.taba button.active {
    background-color: #f3b612;
}

/* Style the tab content */
.tabconten {
    float: left;
    padding: 0px 12px;
    border: 1px solid #ccc;
    width: 70%;
    border-left: none;
    height: 100%;
}
</style>
</head>
<body>

<button class="tablink" onclick="openPage('sanctity', this, 'blue')">Sanctity</button>
<button class="tablink" onclick="openPage('Academic', this, 'green')" id="defaultOpen">Academic InfraStructure</button>
<button class="tablink" onclick="openPage('Hostel', this, 'red')"> Hostel & Gust Room</button>
<button class="tablink" onclick="openPage('Sports', this, 'orange')">Sports & Fitness</button>

<div id="sanctity" class="tabcontent">
 <jsp:include page="sanctity.jsp"></jsp:include>
</div>

<div id="Academic" class="tabcontent">
				 <div style="overflow: hidden;height: 100%; width: 100%;">				 
				 <div class="taba">
				  <button class="tablink" onclick="openCity(event, 'Campus')" id="defaultOpen">Campus</button>
				  <button class="tablink" onclick="openCity(event, 'Classroom')">Classroom</button>
				  <button class="tablink" onclick="openCity(event, 'Laboratories')">Laboratories </button>
				  <button class="tablink" onclick="openCity(event, 'Library')">Library </button>
				</div>
				
				<div id="Campus" class="tabconten">
				  <jsp:include page="academicCaampus.jsp"></jsp:include>
				  
				</div>
				
				<div id="Classroom" class="tabconten">
				  <jsp:include page="class.jsp"></jsp:include>
				  
				</div>
				
				<div id="Laboratories" class="tabconten">
				  <jsp:include page="lab.jsp"></jsp:include>
				 
				</div>
				<div id="Library" class="tabconten">
				  <jsp:include page="library.jsp"></jsp:include>
				
				</div>
				
				<script>
				function openCity(evt, cityName) {
				    var i, tabcontent, tablink;
				    tabcontent = document.getElementsByClassName("tabconten");
				    for (i = 0; i < tabcontent.length; i++) {
				        tabcontent[i].style.display = "none";
				    }
				    tablinks = document.getElementsByClassName("tablink");
				    for (i = 0; i < tablinks.length; i++) {
				        tablinks[i].className = tablinks[i].className.replace(" active", "");
				    }
				    document.getElementById(cityName).style.display = "block";
				    evt.currentTarget.className += " active";
				}
				
				// Get the element with id="defaultOpen" and click on it
				document.getElementById("defaultOpen").click();
				</script>
 </div>
 
</div>

<div id="Hostel" class="tabcontent">
 <jsp:include page="hostel.jsp"></jsp:include>
</div>

<div id="Sports" class="tabcontent">
  <jsp:include page="sports.jsp"></jsp:include>
  
</div>

<script>
function openPage(pageName,elmnt,color) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
    }
    document.getElementById(pageName).style.display = "block";
    elmnt.style.backgroundColor = color;

}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
     
</body>
</html> 
    