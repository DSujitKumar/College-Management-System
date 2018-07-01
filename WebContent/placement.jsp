<jsp:include page="mainHeader.jsp"></jsp:include>
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
     border-top: 15px solid #6fdfe3;
       border-right: 15px solid #6fdfe3;
       border-bottom: 15px solid #6fdfe3;
       border-bottom-right-radius: 30px;
       background-color: #152538;
       overflow: scroll;
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
  <button class="tablinks" onclick="openCity(event, 'a')" id="defaultOpen" style="border-top-left-radius: 15px;">Training</button>
  <button class="tablinks" onclick="openCity(event, 'b')">Placement</button>
  <button class="tablinks" onclick="openCity(event, 'c')">Placement Cell</button>
  
  
</div>

<div id="a" class="tabcontent" style="background-color: #152538">
  <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tbody><tr>
                            <td><h3 class="homebold">Training</h3>
                              <hr size="1px" color="#CCCCCC"></td>
                          </tr>
                          <tr>
                            <td><span class="homegray2">Introduction</span><br>
                              GHITM have developed a well-organized and structured Training and Placement Cell that facilitates the students professionally for the future. The training and placement cell gives emphasis on :<br>
                              <img src="images/bullett.png" width="14" height="11"> Summer Training &amp; On-the-job-Training.<br>
                              <img src="images/bullett.png" width="14" height="11"> Industrial Linkage.<br>
                              <img src="images/bullett.png" width="14" height="11"> Personal Grooming Program<br>
                              <img src="images/bullett.png" width="14" height="11"> Industrial visit compulsory for each student as well as submission of reports.<br>
                              <img src="images/bullett.png" width="14" height="11"> Lectures by various Eminent Industrialists<br>
                              <img src="images/bullett.png" width="14" height="11"> Our Oracle Academy is the first of its kind and the only Oracle Academy in Orissa. Use of the Oracle Academy Curriculum will introduce the students to the requirements and rigor of Oracle certification pathway towards to engaging the Oracle Certified Associate (OCA) and Oracle Certified Professional (OCP) designations.<br>
<br>
<span class="homegray2">TRAINING A NECCACITY</span><br>
It is a well-recognized and acknowledged fact that there is a mismatch between the current pattern of education and the components required by the industry. To overcome this mismatch and to ensure that the students are able to secure employment and become responsible citizens, training activities are initiated to cater to the needs of students of different courses and streams.<br>
<br>
<span class="homegray2">TRAINING METHODOLOGY</span><br>
It is a well-recognized and acknowledged fact that there is a mismatch between the current pattern of education and the components required by the industry. To overcome this mismatch and to ensure that the students are able to secure employment and become responsible citizens, training activities are initiated to cater to the needs of students of different courses and streams.<br>
<img src="images/bullett.png" width="14" height="11"> Class room lectures for imparting formal and theoretical knowledge.<br>
<img src="images/bullett.png" width="14" height="11"> Group discussions.<br>
<img src="images/bullett.png" width="14" height="11"> elf-learning techniques like public speaking through extempore, group activities, presentations and icebreakers.<br>
<img src="images/bullett.png" width="14" height="11"> On-job training.<br>
<img src="images/bullett.png" width="14" height="11"> One to one counseling.<br>
The training methodology so adopted creates step by step environment for all round development of skills and knowledge of the students.</td>
                          </tr>
                        </tbody></table></td>
</div>

<div id="b" class="tabcontent">
 <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tbody><tr>
                            <td><h3 class="homebold">Placement</h3>
                              <hr size="1px" color="#CCCCCC"></td>
                          </tr>
                          <tr>
                            <td><table width="100%"cellpadding="5" cellspacing="1"style="background-color: white;">
                              <tbody><tr>
                                <th height="30" colspan="4" bgcolor="#101723" style="font-size: 25px; color: Black;">Our Recruiter</th>
                                </tr>
                              <tr>
                                <td><img src="placement-photo/r1.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r2.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r3.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r4.jpg" width="130" height="46" border="0"></td>
                                </tr>
                              <tr>
                                <td><img src="placement-photo/r5.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r6.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r7.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r8.jpg" width="130" height="46" border="0"></td>
                                </tr>
                              <tr>
                                <td><img src="placement-photo/r9.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r10.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r11.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r12.jpg" width="130" height="46" border="0"></td>
                                </tr>
                              <tr>
                                <td><img src="placement-photo/r13.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r14.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r15.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r16.jpg" width="130" height="46" border="0"></td>
                              </tr>
                              <tr>
                                <td><img src="placement-photo/r17.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r18.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r19.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r20.jpg" width="130" height="46" border="0"></td>
                              </tr>
                              <tr>
                                <td><img src="placement-photo/r21.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r22.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r23.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r27.jpg" width="130" height="46" border="0"></td>
                              </tr>
                              <tr>
                                <td><img src="placement-photo/r25.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r28.jpg" width="130" height="46" border="0"></td>
                                <td><img src="placement-photo/r29.jpg" width="130" height="46" border="0"></td>
                                <td>&nbsp;</td>
                              </tr>
                            </tbody></table></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                          </tr>
                          
                          <tr>
                            <td><table width="100%" border="1" cellpadding="2" cellspacing="1" bordercolor="#CCCCCC">
                              <tbody><tr>
                                <th width="34%" height="30" align="left" bgcolor="#101723" class="homegray" style="font-size: 25px; color: Black; background-color: #8d9cb7;">Name </th>
                                <th width="28%" align="left" bgcolor="#101723" class="homegray" style="font-size: 25px; color: Black;background-color: #8d9cb7;">Branch </th>
                                <th width="25%" align="left" bgcolor="#101723" class="homegray" style="font-size: 25px; color: Black;background-color: #8d9cb7;">Company </th>
                                <th width="13%" bgcolor="#101723" class="homegray" style="font-size: 25px; color: Black;background-color: #8d9cb7;">Photo</th>
                              </tr>
                              <tr>
                                <td align="left">DEEPIKA KUMARI<br>
                                  JHARKHAND</td>
                                <td align="left">ELECTRICAL ENGINEERING</td>
                                <td align="left">NEELAKANTHA ELECTROMECH PVT LTD</td>
                                <td align="center"><img src="placement-photo/13-1.jpg" width="50" height="58" border="1"></td>
                              </tr>
                              <tr>
                                <td align="left">ANKIT KUMAR TARWAY<br>
                                  GIRIDIH (JHARKHAND)</td>
                                <td align="left">ELECTRICAL ENGINEERING</td>
                                <td align="left">NEELAKANTHA ELECTROMECH PVT LTD</td>
                                <td align="center"><img src="placement-photo/13-2.jpg" width="50" height="58" border="1"></td>
                              </tr>
                              <tr>
                                <td align="left">SUDHANSU SEKHER SETHI<br>
                                  JAJPUR</td>
                                <td align="left">ELECTRICAL ENGINEERING</td>
                                <td align="left">NEELAKANTHA ELECTROMECH PVT LTD</td>
                                <td align="center"><img src="placement-photo/13-3.jpg" width="50" height="58" border="1"></td>
                              </tr>
                              <tr>
                                <td align="left">SHASHI PANDEY<br>
                                  RAMGARH (JHARKHAND)</td>
                                <td align="left">ELECTRICAL ENGINEERING</td>
                                <td align="left">NEELAKANTHA ELECTROMECH PVT LTD</td>
                                <td align="center"><img src="placement-photo/13-4.jpg" width="50" height="58" border="1"></td>
                              </tr>
                              <tr>
                                <td align="left">KOUSHIK KUMAR PATRA<br>
                                  BALASORE</td>
                                <td align="left">ELECTRICAL ENGINEERING</td>
                                <td align="left">NEELAKANTHA ELECTROMECH PVT LTD</td>
                                <td align="center"><img src="placement-photo/13-5.jpg" width="50" height="58" border="1"></td>
                              </tr>
                              <tr>
                                <td align="left">AKASH PATEL<br>
                                  JHARSUGUDA</td>
                                <td align="left">ELECTRICAL ENGINEERING</td>
                                <td align="left">NEELAKANTHA ELECTROMECH PVT LTD</td>
                                <td align="center"><img src="placement-photo/13-6.jpg" width="50" height="58" border="1"></td>
                              </tr>
                              <tr>
                                <td align="left">VIKRAM VIJAYANT RANA<br>
                                  JEHANBAD, BIHAR</td>
                                <td align="left">MECHANICAL ENGINEERING</td>
                                <td align="left">HYMA PLATES &amp; VESSELS PVT. LTD.</td>
                                <td align="center"><img src="placement-photo/13-7.jpg" width="50" height="58" border="1"></td>
                              </tr>
                              <tr>
                                <td align="left">BISHNU PRASAD MAHARANA<br>
                                  PURI</td>
                                <td align="left">MECHANICAL ENGINEERING</td>
                                <td align="left">HYMA PLATES &amp; VESSELS PVT. LTD.</td>
                                <td align="center"><img src="placement-photo/13-8.jpg" width="50" height="58" border="1"></td>
                              </tr>
                              <tr>
                                <td align="left">PS. MANORANJAN JENA<br>
                                  BHADRAK</td>
                                <td align="left">MECHANICAL ENGINEERING</td>
                                <td align="left">HYMA PLATES &amp; VESSELS PVT. LTD.</td>
                                <td align="center"><img src="placement-photo/13-9.jpg" width="50" height="58" border="1"></td>
                              </tr>
                              <tr>
                                <td align="left">DURGA PRASAD MISHRA<br>
                                  PURI</td>
                                <td align="left">MECHANICAL ENGINEERING</td>
                                <td align="left">HYMA PLATES &amp; VESSELS PVT. LTD.</td>
                                <td align="center"><img src="placement-photo/13-10.jpg" width="50" height="58" border="1"></td>
                              </tr>
                              
                            </tbody></table></td>
                          </tr>
                        </tbody></table></td>
  
</div>

<div id="c" class="tabcontent">
  <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tbody><tr>
                            <td><h3 class="homebold">Placement Cell </h3>
                              <hr size="1px" color="#CCCCCC"></td>
                          </tr>
                          <tr>
                            <td><p align="justify"><span class="homegray2">PLACEMENT VISION</span><br>
                              GHITM placement department which has a very important and significant role in getting the students get rightly placed in an organization was put to test this year.</p>
                              <p>BTECH students hit ratio was 90% in getting a job and we must remember that this year we are facing a real tuff situation in the job scenario . students have got exposure already to 14 companies in different verticals.</p>
                              <p align="justify">The initial work for the 2012 batch has already begun and it makes the work all the more difficult as the expectation of the students has to be matched and the graph have to show anupwardtrend.</p>
                              <p align="justify">The placement cell of any institute has a very significant role to play in providing the end point to its BE/MCA/MBA studies, acting as the bridge between Institute and Corporate life. This is a very delicate transformation and this makes the role of the department all the more critical.</p>
                            <p align="justify">We are trying our best to get organizations from all verticals i.e. IT/ITES/Core Sector for the Engineering . We are confident of achieving a bright career for our students.</p>
                            <p align="justify"><span class="homegray2">PLACEMENT POLICY</span><br>
                              <img src="images/bullett.png" width="14" height="11"> Minimum marks for eligibility is 55% or as stated specific as per the policy of the organization for which the campus is being held.<br>
                              <img src="images/bullett.png" width="14" height="11"> As per the rules of T &amp; P department, one student can get offer from one organization only for BTECH<br>
                              <img src="images/bullett.png" width="14" height="11"> The decision of the placement cell regarding matters relating to organization lies with the concerned organization and the placement cell and no interference of any sort will be entertained.<br>
                              <img src="images/bullett.png" width="14" height="11"> Open campus policy for campuses in other - decisions regarding the same will be at the discretion of the Placement cell.<br>
                              <img src="images/bullett.png" width="14" height="11"> The data furnished by the students are taken as authentic information and any discrepancy found will be held responsible and very strict action will be initiated which may bar her/him for any future participation in campuses.<br>
  <br>
                              <span class="homegray2">DRESS CODE</span><br>
                              <img src="images/bullett.png" width="14" height="11"> Institute uniform- Properly ironed.<br>
                              <img src="images/bullett.png" width="14" height="11"> Tie- Should be worn properly.<br>
                              <img src="images/bullett.png" width="14" height="11"> Shoe- Well polished.<br>
                              <img src="images/bullett.png" width="14" height="11"> Well groomed.<br>
                              If institute uniform is not worn please ensure that the dress code should be (This is only in exceptional cases and students should have proper reason for not wearing the Institute uniform).</p>
                            <p> <img src="images/bullett.png" width="14" height="11"> Formals, i.e. light formal shirts and dark colour trousers.<br>
                              <img src="images/bullett.png" width="14" height="11"> Formal shoes. Polished.<br>
                              <img src="images/bullett.png" width="14" height="11"> Belt colour should match the colour of the shoes.<br>
                              <img src="images/bullett.png" width="14" height="11"> Girls should wear salwar kameez.<br>
  <br>
                              <span class="homegray2">THINGS TO CARRY</span><br>
                              <img src="images/bullett.png" width="14" height="11"> Four passport size colour photographs.<br>
                              <img src="images/bullett.png" width="14" height="11"> Photocopy of mark sheets from class X onwards.<br>
                              <img src="images/bullett.png" width="14" height="11"> Hall Tickets with all the formalities completed<br>
                              <img src="images/bullett.png" width="14" height="11"> Pen and other writing materials.<br>
                              <img src="images/bullett.png" width="14" height="11"> Three copies of Resume<br>
                              <img src="images/bullett.png" width="14" height="11"> Identity cards<br>
  <br>
                              <span class="homegray2">DONT'S</span><br>
                              <img src="images/bullett.png" width="14" height="11"> Informal shirts<br>
                              <img src="images/bullett.png" width="14" height="11"> Jeans.<br>
                              <img src="images/bullett.png" width="14" height="11"> Casual shoes<br>
                              <img src="images/bullett.png" width="14" height="11"> Improper documents<br>
  <br>
                              <span class="homegray2">Placement</span><br>
                              The Training and Placement Cell of the Institute arranges placement drive for the students. A continuous endeavor made to place the students in the companies of repute has proved to be highly effective. The following shows a partial list of some companies who have been recruiting the students of the students for the last three years.<br>
                              <img src="images/bullett.png" width="14" height="11"> Infosys Technologies<br>
                              <img src="images/bullett.png" width="14" height="11"> Wipro Infotech <br>
                              <img src="images/bullett.png" width="14" height="11"> IBM <br>
                              <img src="images/bullett.png" width="14" height="11"> L&amp;T Infotech <br>
                              <img src="images/bullett.png" width="14" height="11"> Accenture <br>
                              <img src="images/bullett.png" width="14" height="11"> Capgemeni <br>
                              <img src="images/bullett.png" width="14" height="11"> Tech Mahindra <br>
                              <img src="images/bullett.png" width="14" height="11"> Torry Haris <br>
                              <img src="images/bullett.png" width="14" height="11"> KPIT Cummins<br>
                              <img src="images/bullett.png" width="14" height="11"> TVS MOTOR <br>
                              <img src="images/bullett.png" width="14" height="11"> VEDANTA ALUMINA <br>
                              <img src="images/bullett.png" width="14" height="11"> VISA STEEL <br>
                              <img src="images/bullett.png" width="14" height="11"> JK Group <br>
                              <img src="images/bullett.png" width="14" height="11"> Satyam <br>
                              <img src="images/bullett.png" width="14" height="11"> LIESUX <br>
                              <img src="images/bullett.png" width="14" height="11"> PENTAWARE <br>
                              <img src="images/bullett.png" width="14" height="11"> Sematic Space <br>
                              <img src="images/bullett.png" width="14" height="11"> Apps asosciat</p>                            
                            </td>
                          </tr>
                        </tbody></table></td>
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
<jsp:include page="mainFooter.jsp"></jsp:include>