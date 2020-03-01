<%-- 
    Document   : index
    Created on : Feb 29, 2020, 9:11:26 PM
    Author     : Siddharth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<style>

body {
  font-family: Arial;
  color: blacks;
  background-image: url(http://www.mgheewala.com/blogs/wp-content/uploads/2016/11/job-opening-752x440.jpg);
  background-repeat: no-repeat;
  background-position: center center;
  background-attachment: fixed;
  background-size: cover;
	
}

.navbar.transparent.navbar-inverse .navbar-inner {
  border-width: 200;
  -webkit-box-shadow: 0px 0px;
  box-shadow: 0px 0px;
  background-color: rgba(0,0,0,0.0);
  background-image: -webkit-gradient(linear, 50.00% 0.00%, 50.00% 100.00%, color-stop( 0% , rgba(0,0,0,0.00)),color-stop( 100% , rgba(0,0,0,0.00)));
  background-image: -webkit-linear-gradient(270deg,rgba(0,0,0,0.00) 0%,rgba(0,0,0,0.00) 100%);
  background-image: linear-gradient(180deg,rgba(0,0,0,0.00) 0%,rgba(0,0,0,0.00) 100%);
		}

.split {
  height: 75%;
  width: 50%;
  position: fixed;
  z-index: 1;
  overflow-x: hidden;
  padding-top: 20px;
}

toped{
  top=0;
}

.left {
  left: 0;
  color: black;
}

.right {
  right: 0;
  color: black;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.centered img {
  width: 150px;
  border-radius: 50%;
}

.bottomed{
  bottom: 0;
  height: 50%;
}

</style>
</head>

<body>

<div align="center">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">College Job Portal</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="first.html">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Our Companies</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Fresher</a>
          <a class="dropdown-item" href="#">Experienceds</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Internshiip</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
</div><br><br>

<div class="split left" align="center" >
<div >
<a href="recruitersignup.jsp"> <img src="adminlg.jpg" alt="i2" width="200" height="200"></img></a><br><br>
</div>
<div >
<a href="usersignup.jsp"><img src="userlg.jpg" alt="i4" width="200" height="200"></a></img><br>
</div>
</div>

<div class="split right" align="center">
<div class="imagecontainer" align="center">
<img src="lg.jpg" alt="image here" class="imge" width="100" height="100"><br><br>
</div>
<div class="container" align="center">
<table>
<form action="controller.jsp" method="post">
    <input type="hidden" name="page" value="userlogin">
<label for="emailid"><b>Username</b></label>
<input type="text" placeholder="Enter Username" name="emailid" required><br><br>
<label for="password"><b>Password</b></label>
<input type="password" placeholder="Enter Password" name="password" required><br><br>
<input type="checkbox" checked="checked" name="remember"> Remember Me</label><br>
<button type="submit"> Login</button>
</form>
</table>
</div>
</table>

</body>
</html>
