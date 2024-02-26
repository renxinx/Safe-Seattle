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
   <title>User Posts by User Id</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!----CSS link----->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="/SafeSeattle/Style/UserPosts.css" />
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


<form action="userposts" method="post">
	<main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
      <div class="container">
        <div class="card login-card">
          <div class="row no-gutters">

	           <div class="card-body">
					<div class="form-group">
		                <p class="login-card-description">Search For Posts By User Id</p>		
						<label style=" font-size:15px; "for="userId">User Id</label>
						<input class="input-box" id="userId" name="userId" value="${fn:escapeXml(param.userId)}" placeholder = "e.g 1">
		  	            <div ><input style="width:300px; font-size: 14px" class="btn btn-block login-btn mb-4" type="submit" value="Search For Posts"></div>   
						<div class = "successmessage"></div>
						<span id="successMessage"><b>${messages.success}</b></span>
					</div>
				</div>
					
					<div class = table>		
				        <table class = "table" style="width: 900px;">
				            <tr>
				                <th>PostId</th>
				                <th>UserId</th>
				                <th>Username</th>
				                <th>ReportId</th>  
				                <th>Report</th>  
				                <th>Title</th>              
				                <th>Content</th>
				                <th>Created</th>
				                <th>Comments</th>
				                <th>Update Post</th>
				            </tr>
				            <c:forEach items="${userPosts}" var="userPosts" >
				                <tr>
				                    <td><c:out value="${userPosts.getPostId()}" /></td>
				                    <td><c:out value="${userPosts.getUser().getUserId()}" /></td>
				                    <td><c:out value="${userPosts.getUser().getUsername()}s" /></td>
				                    <td><c:out value="${userPosts.getReport().getReportId()}" /></td>
				                    <td><a href="findoffensesbyreportid?reportId=<c:out value="${userPosts.getReport().getReportId()}"/>">Report</a></td>
				                    <td><c:out value="${userPosts.getTitle()}" /></td>                    
				                    <td><c:out value="${userPosts.getContent()}" /></td>
				                    <td><fmt:formatDate value="${userPosts.getCreated()}" pattern="MM-dd-yyyy hh:mm:sa"/></td>
				                    <td><a href="postcomments?postId=<c:out value="${userPosts.getPostId()}"/>">Comments</a></td>
									<td><a href="postupdate?postId=<c:out value="${userPosts.getPostId()}"/>">Update</a></td>
				                </tr>
				            </c:forEach>
				       </table>
				       <div class="card-body">
					       <div class="form-group">
						       <div style="width:300px; font-size: 14px; margin:auto">
									<a href="postcreate"class="btn btn-block login-btn mb-4" > Create a Post </a>
								</div>
							</div>
						</div>  
				   	</div>
				</div>   
		   </div>
		  </div>
		</form>
		
		
		
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>		



</body>
</html>
