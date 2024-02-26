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
   <title>Search For User By Neighborhood</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!----CSS link----->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="/SafeSeattle/Style/Findusers.css" />
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
        <a class="nav-link selected" href="findusers" style = "color: black;">Search For User</a>
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
	<form action="findusers" method="post">
	
	<main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
      <div class="container">
        <div class="card login-card">
         
      
              <div class="card-body">
                
                <p class="login-card-description">Search For User By Neighborhood</p>
               <div class="form-group">
				<div class = "neighborhood">
				
				<label style=" font-size:15px; "for="neighborhood">Neighborhood</label>
				<input class="input-box" id="neighborhood" name="neighborhood" value="${fn:escapeXml(param.neighborhood)}" placeholder = "e.g ballard">
               
          
                
              <div ><input style="width:300px; font-size: 14px" class="btn btn-block login-btn mb-4" type="submit" value="Search For User"></div>
                  
             
			<div class = "successmessage">
			<span id="successMessage"><b>${messages.success}</b></span>
			</div>
			 </div>
		
		
        <table class = "table">
            <tr>
                <th>UserName</th>
                <th>FirstName</th>
                <th>LastName</th>
                <th>Neighborhood</th>
                <th>Posts</th>
            </tr>
            <c:forEach items="${users}" var="user" >
                <tr>
                    <td><c:out value="${user.getUsername()}" /></td>
                    <td><c:out value="${user.getFirstName()}" /></td>
                    <td><c:out value="${user.getLastName()}" /></td>
                    <td><c:out value="${user.getNeighborhood()}" /></td>
                    <td><a href="userposts?userId=<c:out value="${user.getUserId()}"/>">Posts</a></td>
                </tr>
            </c:forEach>
       		</table>
			 </div>
		</div>
		</div>
		</main>
		</form>
		
		
		
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>		



</body>
</html>
