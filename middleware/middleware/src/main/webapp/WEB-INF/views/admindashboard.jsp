<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->
</head>
<body> 
	<div class="limiter">
		<div>
			<!-- <div class="wrap-login100" style="padding-top: 557px;padding-right: 300px;padding-left: 300px;"> -->
			<h3 style="text-align:center;padding-top: 30px;color:#006600;">Add Connector</h3>
			<form  action="saveconnectorsForDomain" method="post">

				<table id="example1" class="table table-bordered table-striped">
				<tr>
					<td style="padding-right: 8px; width: 225px;">Organization <span
						style="color: red">*</span> :
					</td>
					
					<td>
					<input type="text" name="organizationId" placeholder="organization"
							style="margin-bottom: 63px; width: 253px; margin-top: 28px; 
							height: 43px; padding-left: 31px; border: 1px solid #000000;">
						</td>
					
					</tr>
					<tr>
					
					<td style="padding-right: 8px; width: 225px;">Connectors <span
						style="color: red">*</span> :
					</td>

				<td>
				
				<%-- <c:forEach items="${connectors}" var="connectors">
					<input type="checkbox" id="${connectors.connectorInfoId}" name="${connectors.connectorInfoName}" value="${connectors.connectorInfoName}">
					<label for="${connectors.connectorInfoId}"> ${connectors.connectorInfoName}</label><br>
				</c:forEach>
				 --%>
				
				
				<input type="checkbox" id="jira" name="connectors" value="Jira">
					<label for="jira"> Jira</label><br>
					<input type="checkbox" id="d42" name="connectors" value="Device42">
					<label for="d42"> Device42</label><br>
					<input type="checkbox" id="salesforce" name="connectors" value="Salesforce">
					<label for="salesforce"> Salesforce</label><br>
					<input type="checkbox" id="mongodb" name="connectors" value="Mongodb">
					<label for="mongodb"> Mongodb</label><br>
				</td>
				</tr>
				
				<tr>
				<td>
				<button class="login100-form-btn"
					style="margin-top: 98px;width: 250px;">ADD</button>
				<br>
				</td>
				<td>
				  <h5 style="color:#006600;">${message}</h5>
				</td>
				</tr>
				

				</table>
	</form>
	<!-- </div> -->
	</div>
	</div>
</body>
</html>
