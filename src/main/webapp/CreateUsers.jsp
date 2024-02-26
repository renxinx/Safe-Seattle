
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>Create a User</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!----CSS link----->
  
    <link rel="stylesheet" href="/SafeSeattle/Style/CreateUser.css" />
   
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark">
  <a class="navbar-brand" href="findusers" style="color: black;">Safe Seattle</a>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="createusers" style= "color: black;">Create User</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="findusers" style = "color: black;">Search For User</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="userposts" style= "color: black;">User Posts</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="findoffensesbyreportid" style= "color: black;">Search for Offense</a>
      </li>
    </ul>
    </form>
  </div>
</nav>
  
	<form action="createusers" method="post">
    <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
      <div class="container">
        <div class="card login-card">
          <div class="row no-gutters">
      
              <div class="card-body">
                
                <p class="login-card-description">Create a New User</p>
                <form action="#!">
                  <div class="form-group">
                   
					<input  id="username" name="username" value="" class ="input-box" placeholder="Jane01">
					
                    <input type="password" name="password" id="password" class ="input-box" placeholder="**********">

                    <input type="firstname" name="firstname" id="firstname" class ="input-box" placeholder="Jane">
 
                    <input type="lastname" name="lastname" id="lastname" class ="input-box" placeholder="Doe">

                    <input type="phoneNumber" name="phoneNumber" id="phoneNumber" class ="input-box" placeholder="XXX-XXX-XXXX">

                    <input type="email" name="email" id="email" class ="input-box" placeholder="JaneDoe@gmail.com">

                    <input type="address" name="address" id="address" class ="input-box" placeholder="123 10th st">

                    <input type="neighborhood" name="neighborhood" id="neighborhood" class ="input-box" placeholder="e.g Capitol Hill">

                    <input type="UserType" name="UserType" id="UserType" class ="input-box" placeholder="e.g basic or premium">

                  <input style="width:500px;"name="login" id="login" class="btn btn-block login-btn mb-4" type="submit" value="Create New User">
                </form>
           
               
                <nav class="login-card-footer-nav">
	</form>
			<div class="successmessage">
                
				<span id="successMessage" style="padding-left: 190px;">
				<b style="padding-right: 70px;">${messages.success}</b>
				</span>
			
				</div>
                  <a href="#!">Terms of use.</a>
                  <a href="#!">Privacy policy</a>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
