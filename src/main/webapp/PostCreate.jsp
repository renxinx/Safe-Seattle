<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!----CSS link----->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="/SafeSeattle/Style/CreateUser.css" />
<title>Create a Post</title>
</head>
<body>
	
	<form action="postcreate" method="post">
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
  
	<form action="postcreate" method="post">
    <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
      <div class="container">
        <div class="card login-card">
          <div class="row no-gutters">
      
              <div class="card-body">
                
                <p class="login-card-description">Create a New Post</p>
                <form action="#!">
                  <div class="form-group">
                   
					<input  id="postId" name="postId" value="" class ="input-box" placeholder="post ID">
					
                    <input type="userId" name="userId" id="userId" class ="input-box" placeholder="user ID">
 
                    <input type="reportId" name="reportId" id="reportId" class ="input-box" placeholder="2020-0000">

                    <input type="content" name="content" id="content"class ="input-box" placeholder="new content">
              

                  <input style="width:500px;"name="login" id="login" class="btn btn-block login-btn mb-4" type="submit" value="Create New Post">
                </form>
           
               
                <nav class="login-card-footer-nav">
	</form>
			<div class="successmessage">
                 <p>
				<span id="successMessage" style="padding-left: 200px;">
				<b>${messages.success}</b>
				</span>
				</p>
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
	
		
	</p>
</body>
</html>
