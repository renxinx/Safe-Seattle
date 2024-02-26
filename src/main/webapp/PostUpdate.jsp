<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/SafeSeattle/Style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update a Post</title>
</head>
<body>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Safe Seattle</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!----CSS link----->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="/SafeSeattle/Style/UpdatePost.css" />
  </head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete a Comment</title>
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

    <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
      <div class="container">
        <div class="card login-card">
          <div class="row no-gutters">
      
              <div class="card-body">
              <h2 style="padding-bottom: 10px;padding-left: 0px;">${messages.title}</h2>
				<form action="postupdate" method="post">
				<div class ="inputbox">
					<p>
						<label style="padding-left: 40px;" for="postId">Post ID</label>
						<input id="postId" name="postId"class="input-box" value="${fn:escapeXml(param.postId)}" >
					</p>
					<p>
						<label for="content">New Content</label>
						<input id="content" class="input-box" name="content" value="">
					</p>
					<p>
					<div class = "button" style="padding-left:75px;">
						<input type="submit"class="btn btn-block login-btn mb-4" style="width: 200px; font-size: 15px;" type="button" value = "Update">
					<span class="successmessage" id="successMessage">${messages.success}</span>
					<span id="successMessage">
					</div>
					</p>
				</form>
				</div>
				
                
                </nav>
              </div>
            </div>
          </div>
          
      
    </main>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


	





	
</body>
</html>
