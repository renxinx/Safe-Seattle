<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Safe Seattle</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!----CSS link----->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="/SafeSeattle/Style/Login.css" />
  </head>
  <body>
   <nav class="navbar navbar-expand-lg navbar-dark">
  <a class="navbar-brand" href="loginpage" style="color: black;">Safe Seattle</a>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">

      <li class="nav-item">
        <a class="nav-link" href="createusers" style= "color: black;">Create User</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="findusers" style = "color: black;">Search For User</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="postcomments?postId=1" style= "color: black;">User Posts</a>
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
                
                <p class="login-card-description">Sign into your account</p>
                <form action="#!">
                  <div class="form-group">
                    <label for="email" class="sr-only">Email</label>
                    
                    <input type="email" name="email" id="email" class="input-box" placeholder="Email adress">
                  </div>
                  <div class="form-group mb-4">
                    <label for="Password" class="sr-only">Password</label>
                    <input type="password" name="password" id="password" class="input-box" placeholder="**********">
                  </div>
                  <input name="login" id="login" class="btn btn-block login-btn mb-4" type="button" value="Login">
                </form>
                <p class="login-card-footer-text">Don't have an account? <a href="createusers" class="text-reset">Register here</a></p>
                <nav class="login-card-footer-nav">
                  <a href="#!">Terms of use.</a>
                  <a href="#!">Privacy policy</a>
                  <div class="successmessage">
                
				</div>
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
