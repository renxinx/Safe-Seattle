<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Safe Seattle</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!----CSS link----->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="/SafeSeattle/Style/PostComments.css" />
  </head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PostComments</title>
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
                
                <h3 >${messages.title}</h3>
					<div class = "container">
				        <table >
				            <tr>
				                <th>Post ID</th>
				                <th>Comment ID</th>
				                <th>User ID</th>  
				                <th>Content</th>              
				                <th>Created</th>
				                <th>Delete Comment</th>
				            </tr>
				            <c:forEach items="${postComments}" var="postComments">
			
  
				            
				                <tr>
				                    <td style="text-align: left;font-size:13px; padding: 5px; width:20px;white-space: nowrap;"><c:out value="${postComments.getPost().getPostId()}" /></td>
				                    <td style="text-align: left;font-size:13px; padding: 5px; width:20px;white-space: nowrap;" ><c:out value="${postComments.getCommentId()}" /></td>
				                    <td style="text-align: left;font-size:13px; padding: 5px; width:20px;white-space: nowrap;"><c:out value="${postComments.getUser().getUserId()}" /></td>
				                    <td style="text-align: left;font-size:13px; padding: 5px; width:20px;white-space: nowrap;"><c:out value="${postComments.getContent()}" /></td>                    
				                    <td style="text-align: left;font-size:13px; padding: 5px; width:20px;white-space: nowrap;"><fmt:formatDate value="${postComments.getCreated()}" pattern="MM-dd-yyyy hh:mm:sa"/></td>
				                    <td style="text-align: center;font-size:13px; padding: 5px; width:20px;white-space: nowrap;"><a href="deletecomments?commentId=<c:out value="${postComments.getCommentId()}"/>">Delete</a></td>
				                </tr>
				            </c:forEach>
				       </table>
				       </div>
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
