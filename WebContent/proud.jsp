<jsp:include page="mainHeader.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<style>
* {
    box-sizing: border-box;
}

body {
    background-color: #f1f1f1;
    font-family: Arial;
}

/* Center website */
.main {
    max-width: 98%;
    margin: auto;
}

h3 {
    font-size: 45px;
    color :white;
    word-break: break-all;
}
p{
color: cyan;
}
.row {
    margin: 8px -16px;
}

/* Add padding BETWEEN each column */
.row,
.row > .column {
    padding: 8px;
}

/* Create four equal columns that floats next to each other */
.column {
    float: left;
    width: 25%;
}

/* Clear floats after rows */ 
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Content */
.content {
    background-color:#2f2b12;
    padding: 10px;
}

/* Responsive layout - makes a two column-layout instead of four columns */
@media (max-width: 900px) {
    .column {
        width: 50%;
    }
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media (max-width: 600px) {
    .column {
        width: 100%;
    }
}
</style>
</head>
<body>

<!-- MAIN (Center website) -->
<div class="main">
<!-- Portfolio Gallery Grid -->
<div class="row">
  <div class="column">
    <div class="content">
      <img src="images/campusLife/AC1.JPG" alt="Mountains" style="width:100%">
      <h3>My Work</h3>
      <p>Got the best coder award from the honorable cheef minister Nabina. On the Republic day 2016.</p>
      </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/campusLife/AC2.JPG" alt="Lights" style="width:100%">
      <h3>My Work</h3>
      <p>Got the best coder award from the honorable cheef minister Nabina. On the Republic day 2016.</p>
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/campusLife/AC3.JPG" alt="Nature" style="width:100%">
      <h3>My Work</h3>
     <p>Got the best coder award from the honorable cheef minister Nabina. On the Republic day 2016.</p>
      </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/campusLife/AC4.JPG" alt="Mountains" style="width:100%">
      <h3>My Work</h3>
     <p> Got the best coder award from the honorable cheef minister Nabina. On the Republic day 2016.</p>
       </div>
  </div>
  <div class="row">
  <div class="column">
    <div class="content">
      <img src="images/campusLife/AC5.JPG" alt="Mountains" style="width:100%">
      <h3>My Work</h3>
     <p>Got the best coder award from the honorable cheef minister Nabina. On the Republic day 2016.</p>
       </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/campusLife/AC6.JPG" alt="Lights" style="width:100%">
      <h3>My Work</h3>
      <p>Got the best coder award from the honorable cheef minister Nabina. On the Republic day 2016.</p>
      </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/campusLife/AC1.JPG" alt="Nature" style="width:100%">
      <h3>My Work</h3>
      <p>Got the best coder award from the honorable cheef minister Nabina. On the Republic day 2016.</p>
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/campusLife/AC2.JPG" alt="Mountains" style="width:100%">
      <h3>My Work</h3>
      <p>Got the best coder award from the honorable cheef minister Nabina. On the Republic day 2016.</p>
    </div>
  </div>
<!-- END GRID -->
</div>



<!-- END MAIN -->
</div>
<jsp:include page="mainFooter.jsp"></jsp:include>
</body>
</html>
