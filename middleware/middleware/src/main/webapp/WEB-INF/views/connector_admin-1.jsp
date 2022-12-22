<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <title>Estuate - Admin page</title>
	<link rel="icon" href="https://www.estuate.com/wp-content/uploads/2020/07/favicon.ico" sizes="32x32" />
    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/starter-template/">
    <!-- Bootstrap core CSS -->
	    <!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <!-- JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</head>
<body>
		<main role="main" class="container">
		 <header class="text-center">
			<nav class="navbar navbar-expand-md mb-3">
				<a href="index.html" >
					<img src="https://www.estuate.com/wp-content/uploads/2020/02/estuate-logo.png" class="navbar-brand">
				</a>          
			</nav>
		</header>
		<nav class="text-center col-lg-8">
			<div class="nav nav-tabs mb-2" id="nav-tab" role="tablist">
			<a class="nav-item nav-link active" id="nav-admin-page1-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-admin-page1" aria-selected="true">Add Connector</a>
			<a class="nav-item nav-link" id="nav-admin-page2-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-admin-page2" aria-selected="false">Modify Connector</a> 
			</div>
		</nav>
		<div class="tab-content mt-3" id="nav-tabContent">
			<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
			
				<form action="saveconnectorsForDomain" method="post">
				<div class="form-group">
					<label for="domainaddress">Domain Name</label>
					<input class="form-control col-lg-6" type="text" name="organizationId" placeholder="Domain Name">
				</div>
				<h3>Connectors</h3>

				<c:forEach items="${connectors}" var="con">
					<div class="form-check">
						<input type="checkbox" class="form-check-input"	id="${con.connectorInfoId}"	name="connectors"	value="${con.connectorInfoId}"> 
							<label class="form-check-label" for="${con.connectorInfoId}">${con.connectorInfoName}</label><br>
					</div>
				</c:forEach>

				<button type="submit" class="btn btn-primary btn-sm btn-block col-lg-2 mt-3">Create</button><br>
				<h6 style="color:#006600;">${message}</h6>
				</form>
			</div>

			<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
				
				<form action="getConnectorsForDomain" method="Get"> 
					<div class="form-group mb-2">
					<label for="organizationId" class="sr-only">Search Domain</label>
					<input type="text" class="form-control col-lg-6" id="modCon_orgId_box" name="organizationId" placeholder="Search Domain">					
					<button type="submit" id="searchDomain" class="btn btn-primary btn-sm btn-block col-lg-2 mt-2 mb-2" onclick="tabFocus()">Search Domain</button>
					</div>
				</form>
			
				
				<!-- <form id="saveDomainForm" style="display:none;"> -->
				<form id="saveDomainForm" action="updateConnectorsForDomain" method="post"> 
					<h3>Connectors</h3>
					<input type="text" class="form-control col-lg-6"  name="organizationId" placeholder="domain" value="${organizationId}" readonly="readonly"><br>
					<c:forEach items="${connectors}" var="con">
						 <%
						 boolean fag = true;
						 %>
						<c:forEach items="${domainConnectors}" var="domainCon">
							<div class="form-check" >
									<c:if test="${con.connectorInfoName == domainCon.connectorName}">
										<input type="checkbox" class="form-check-input"	id="${con.connectorInfoId}"	name="connectors"	value="${con.connectorInfoId}" checked> 
											<label class="form-check-label" for="${con.connectorInfoId}">${con.connectorInfoName}</label><br>
										<% fag = false;
										%>
									 </c:if>
							</div>
						 </c:forEach>
						  <%
						  if (fag) {  %>
									   <input type="checkbox" class="form-check-input"	id="${con.connectorInfoId}"	name="connectors"	value="${con.connectorInfoId}"> 
										 <label class="form-check-label" for="${con.connectorInfoId}">${con.connectorInfoName}</label><br>
						<%	  
						  }
						  %>
							            
				    </c:forEach>
					<button type="submit" class="btn btn-primary btn-sm col-lg-2 btn-block mt-3">Save Domain</button><br>
					<h6 style="color:#006600;">${saveMessage}</h6>
				</form>      
				
			</div>
		</div>
		
<form method="get" action="logout">
    <input type="submit" style="text-align: center;" value="Logout"/>
</form>		
	</main><!-- /.container -->
	 <!--===============================================================================================-->
	<script src="resources/js/admin.js"></script>

</body>
</html>