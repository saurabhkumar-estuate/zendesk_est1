<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<!-- <head>
<meta charset="ISO-8859-1">
<title>Insert title here</title> -->
 <head>
    <meta charset="ISO-8859-1">
    <title>Estuate - Admin page</title>
	<link rel="icon" href="https://www.estuate.com/wp-content/uploads/2020/07/favicon.ico" sizes="32x32" />
    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/starter-template/">
    <!-- Bootstrap core CSS -->
		<!-- CSS only -->
	<link rel="stylesheet" href="resources/css/starter-template.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <!-- JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </head>
  <body> 
	<header class="text-left">
		<nav class="navbar">
			<div class="d-flex align-items-start">
				<a href="#" >
					<img src="https://www.estuate.com/wp-content/uploads/2020/02/estuate-logo.png" class="navbar-brand">
				</a>    				  
			</div>
		</nav>
	</header>
	<main role="main" class="container col-8 pl-0 pr-0">	 
		<div class="row col-12 m-0 p-0">
				<div class="col-lg-6 pr-5 pl-5 pt-5 pb-5 est">
                    <h4>Welcome to Estuate ITSM IP</h4>
                    <div class="c-line-center-white"></div>	
                    <p>Platform to integrate several ITSM modules with one installation.</p>
                    
                      <p>--- Asset management</p>
                       <p>--- Approval process</p>
                       <p>--- Zira Integration</p>
                       <p>--- Salesforce Integration</p>
                        <p>___________________________________________________</p>
                       
                      
                       
                    <button class="est-btn btn btn-outline-light btn-md col-lg-8 btn-block mt-5">Know more</button>                                    
				</div>
                <div class="col-lg-5 d-flex align-items-center">
                        <form action="validateLogin" method="post" class="pl-5 pt-5 pb-5 col-12"> 
                                <h3>Login</h3>
                                    <div class="c-line-center"></div>				
                                        <div class="form-group">
                                            <input class="form-control col-lg-12" type="text" name="emailId" value="testuser@estuate.com" placeholder="Email-ID">
                                        </div>                                
                                    <div class="form-group">
                                        <input class="form-control col-lg-12" type="password" name="password" value="est" placeholder="Password">
                                    </div>										
                                <button type="submit" class="est-btn btn btn-primary btn-md col-lg-12 btn-block mt-5">LOGIN</button>                
                                <div class="frgt-link mt-3 text-center">
                                    <a href="#">Forgot Password?</a>    
                                </div>      
                                <div class="create-link mt-5 pt-2 text-center">
                                    <a href="#">CREATE ACCOUNT</a>    
                                </div>
                        </form>               
                </div>
                <div class="col-lg-1 est-1">
                </div>
		</div>
	</main><!-- /.container -->
	</body>
</html>