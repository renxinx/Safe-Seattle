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
    <link rel="stylesheet" href="/SafeSeattle/Style/FindOffense.css" />
  </head>
<title>FindOffensesByReportId</title>
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


<form action="findoffensesbyreportid" method="post">
	<main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
      <div class="container">
        <div class="card login-card">
          <div class="row no-gutters">
      
              <div class="card-body">
                <div class="form-group">
                <p class="login-card-description">Search For Offenses by ReportId</p>
                <form action="#!">
                  
                  	
						<label for="reportId" class = report-id>ReportId</label>
								<input class="input-box" id="reportId" name="reportId" value="${fn:escapeXml(param.reportId)}" placeholder="2020-044620">
					
						</form>
						</div>
						<p class ="matchingoffenses">Matching Offenses</p>
						</div>
						
					
						<div class = table>
						
					        <table  >
					            <tr>
					                <th>OffenseId</th>
					                <th>ReportId</th>
					                <th>OffenseDate</th>
					                <th>OffenseCode</th>
					                <th>BlockAddress</th>
					                <th>MCPP</th>
					                <th>Longitude</th>
					                <th>Latitude</th>
					            </tr>
					            <c:forEach items="${offenses}" var="offense" >
					                <tr>
					                    <td><c:out value="${offense.getOffenseId()}" /></td>
					                    <td><c:out value="${offense.getReportId()}" /></td>
					                    
					                    <td><fmt:formatDate value="${offense.getOffenseDate()}" pattern="yyyy-MM-dd"/></td>
					                    <td><c:out value="${offense.getOffenseCode()}" /></td>
					                    <td><c:out value="${offense.getBlockAddress()}" /></td>
					                    <td><c:out value="${offense.getMcpp()}" /></td>
					                    <td><c:out value="${offense.getLongitude()}" /></td>
					                    <td><c:out value="${offense.getLatitude()}" /></td>
					                </tr>
					            </c:forEach>
					             
					       </table>
					      </div>
					    
                   			</div>

                  			<div class = "button">
							<input type="submit"class="btn btn-block login-btn mb-4" style="width: 200px; font-size: 15px;" type="button" value = "Search for Offenses">
							
							</div>
							<span class="successmessage" id="successMessage">${messages.success}</span>
	
              </div>
            </div>
          </div>
        </div>

    </main>
		
</body>
</html>

