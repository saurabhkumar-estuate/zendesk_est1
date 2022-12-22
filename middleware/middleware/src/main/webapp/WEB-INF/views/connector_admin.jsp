<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
 <head>
    <meta charset="utf-8">
    <title>Estuate - Add Connectors - Modify Connectors</title>
	<link rel="icon" href="https://www.estuate.com/wp-content/uploads/2020/07/favicon.ico" sizes="32x32" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="canonical" href="https://www.bootstrapcdn.com/fontawesome/">
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
			<div class="d-flex align-items-end">
				<a href="logout" class="btn btn-primary btn-sm"><i class="fa fa-sign-out"></i> Log out</a> 
				</a>    				  
			</div>
			
		</nav>
	</header>

	<main role="main" class="container col-8 pl-0 pr-0">
		<nav class="nav nav-pills nav-justified">
			<a class="nav-item nav-link active pt-3 pb-3" id="nav-admin-page1-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-admin-page1" aria-selected="true">Add Connectors</a>
				<a class="nav-item nav-link pt-3 pb-3" id="nav-admin-page2-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-admin-page2" aria-selected="false">Modify Connectors</a> 		
		  </nav> 
		<div class="tab-content pl-5 pr-5 mt-1" id="nav-tabContent">			
				<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
					<form class="col-12 p-5" action="saveconnectorsForDomain" method="post">
					<div class="form-group">
						<input class="form-control col-12" type="text" name="organizationId" placeholder="Domain Address">
					</div>
					<h5>Connectors</h5>
					<div class="est-form-border est-form-box p-3">
					
					<c:forEach items="${connectors}" var="con">
					<div class="form-check">
						<input type="checkbox" class="form-check-input"	id="${con.connectorInfoId}"	name="connectors"	value="${con.connectorInfoId}"> 
							<label class="form-check-label" for="${con.connectorInfoId}">${con.connectorInfoName} <img src="resources/images/${con.connectorInfoName}.png" alt="${con.connectorInfoName}" class="ml-3" style="width: 26%;"> </label><br>
					</div>
				</c:forEach>
					
					
					<!-- 	<div class="form-check">
							<input type="checkbox" class="form-check-input" id="exampleCheck1">
							<label class="form-check-label" for="exampleCheck1">Jira <img src="resources/images/jira.png" alt="jira" class="ml-3" style="width: 25px;">  </label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input" id="exampleCheck2">
							<label class="form-check-label" for="exampleCheck2">Device42 <img src="resources/images/device42.png" alt="device42" class="ml-3" style="width: 100px;">  </label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input" id="exampleCheck3">
							<label class="form-check-label" for="exampleCheck3">Salesforce <img src="resources/images/salesforce.png" alt="salesforce" class="ml-3" style="width: 30px;">  </label>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input" id="exampleCheck4">
							<label class="form-check-label" for="exampleCheck4">MongoDB <img src="resources/images/mongodb.png" alt="mongodb" class="ml-3" style="width: 100px;">  </label>
						</div>	 -->
					</div>									
					<button type="submit" class="btn btn-primary col-lg-6 mt-3 d-flex justify-content-center est-cetner-btn">CREATE</button>
					<span style="color:#3358FF;">${message}</span>
					</form>
				</div>

			<div class="tab-pane fade justify-content-start" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
				<div class="col-12 p-5"	>
				<form action="getConnectorsForDomain" method="get">
					<div class="form-group form-inline mb-2">
						<label for="searchdomain" class="sr-only">Search Domain</label>
						<input type="text" class="form-control col-lg-10" id="organizationId" name="organizationId" placeholder="Search Domain">					
						<button type="submit" id="search11" class="btn btn-primary btn-sm btn-block col-lg-1 mt-2 mb-2"><i class="fa fa-search" aria-hidden="true"></i></button>	
						<span style="color:#3358FF;">${searchmessage}</span>			
					</div>
					</form>
					<form id="saveDomainForm" action="updateConnectorsForDomain" method="post"> 
					<div class="form-inline">
						<h5 class="text-left">Connectors</h5>
						<div class="d-flex justify-content-right col-10 text-right">
							<p class="searchdomain col-12"><span style="color: #707070;">Domain</span>
							<input type="hidden" id="organizationId" name="organizationId" value="${organizationId}">
								<span class="search-border-est col-12 ml-2" >${organizationId}</span>
							</p>
						</div>	
					</div>
					<div class="row col-12 m-0 p-0 est-form-border">
					<div class="col-5 p-3">
							
							<c:forEach items="${connectors}" var="con">
								<%
									boolean fag = true;
								%>
								<c:forEach items="${domainConnectors}" var="domainCon">

									<c:if
										test="${con.connectorInfoName == domainCon.connectorName}">
										<div class="form-check">
										<input type="checkbox" class="form-check-input"	id="${con.connectorInfoId}" name="connectors" value="${con.connectorInfoId}" checked>
										<label class="form-check-label" for="${con.connectorInfoId}">${con.connectorInfoName}
											<img src="resources/images/${con.connectorInfoName}.png" alt="${con.connectorInfoName}" class="ml-3"
											style="width: 26%;">
										</label>
										</div>
										<%
											fag = false;
										%>
									</c:if>

								</c:forEach>
								<%
									if (fag) {
								%>
	                          <div class="form-check">
								<input type="checkbox" class="form-check-input"	id="${con.connectorInfoId}" name="connectors" value="${con.connectorInfoId}">
										<label class="form-check-label" for="${con.connectorInfoId}">${con.connectorInfoName}
											<img src="resources/images/${con.connectorInfoName}.png" alt="${con.connectorInfoName}" class="ml-3"
											style="width: 26%;">
										</label>
										</div>
								<%
									}
								%>

							</c:forEach>

				
					</div>
					<!--status message 
					<div class="col-4 m-0 est-highlight">
						<div class="form-check p-0 m-0">
							<div class="d-flex p-2 bd-highlight">I'm a flexbox container!</div>
						</div>						
						<div class="form-check p-0 m-0">
							<div class="d-flex p-2 bd-highlight">I'm a flexbox container!</div>
						</div>
						<div class="form-check p-0 m-0">
							<div class="d-flex p-2 bd-highlight">I'm a flexbox container!</div>
						</div>
						<div class="form-check p-0 m-0">
							<div class="d-flex p-2 bd-highlight">I'm a flexbox container!</div>
						</div>	
					</div>	-->
				</div>
				</div>
					<button type="submit"  class="btn btn-primary col-lg-6 mt-3 d-flex justify-content-center est-cetner-btn">UPDATE DOMAIN</button>
				</form>      
			</div>
		</div>
	</main><!-- /.container -->
	<!-- <script>
                function myFunction() {
            // Get the checkbox
            var checkBox = document.getElementById("myCheck");
            // Get the output text
            var text = document.getElementById("text");

            // If the checkbox is checked, display the output text
            if (checkBox.checked == true){
                text.style.display = "block";
            } else {
                text.style.display = "none";
            }
            }
    </script> -->
</body>
</html>