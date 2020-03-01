<%-- 
    Document   : user_register
    Created on : Mar 1, 2020, 12:18:41 AM
    Author     : Siddharth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>User Register</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="background.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
</head>


<div class="container">
  <h2>User Registration</h2>
  <form action="controller.jsp" method="post">
      <input type ="hidden" name="page" value="usersignup">
    <div class="form-group">
      <label for="firstname">First Name:</label>
      <input type="text" class="form-control" id="firstname" placeholder="Enter first name" name="firstname" required>
    </div>
    <div class="form-group">
      <label for="lastname">Last Name:</label>
      <input type="text" class="form-control" id="lastnamename" placeholder="Enter last name" name="lastname" required>
    </div>
    
    
    <div class="form-group">
      <label for="emailid">Email:</label>
      <input type="Email" class="form-control" id="emailid" placeholder="Enter email address" name="emailid" required>
    </div>
      <label>Gender</label>
                 <select name="gender">
                     <option value = "Male">Male</option>
                     <option value = "Female">Female</option>
                 </select>
                 <br>
    
   <div class="form-group">
      <label for="contactno">contact number:</label>
      <input type="number" class="form-control" id="contactno" placeholder="Enter password" name="contactno" required>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required>
    </div>
    <div class="form-group">
      <label for="repwd">Re-enter password:</label>
      <input type="password" class="form-control" id="repwd" placeholder="Re-enter password" name="repwd" onblur="chkpswd()" required>
    </div><br>
              <script >
                function chkpswd(){
                var a = document.getElementById("password");
                var b = document.getElementById("repwd");

                if(a.value!=b.value)
                 { //b.style.borderColor='red';
                    b.setCustomValidity("Passwords Don't Match");
                    b.style.borderColor='red';

                  }
                else
                  {b.setCustomValidity("");
                    b.style.borderColor='';}
                }
              </script>
    
    <button type="submit" class="btn btn-primary" value="SignUp">Submit</button>
    <button type="reset" class="btn btn-primary" >Reset </button>
  </form>
</div>

</body>
</html>
