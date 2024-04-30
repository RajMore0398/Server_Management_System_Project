<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All Servers</title>
</head>
<body>

	<h1>List of Servers</h1>


	<c:if test="${!empty servers}">
		<table align="left" border="1">
			<tr>
				<th>Server ID</th>
				<th>Server Name</th>
				<th>IP Address</th>
				<th>Server Type(Normal/WIP/Load Balancer)</th>
				<th>Port Number</th>
				<th>Commissioned Date</th>
				<th>isActive</th>
				<th>Usage Capacity</th>
				<th>Operating System</th>
				<th>Team</th>
				<th>Environment</th>
				<th>Application</th>
			</tr>

			<c:forEach items="${servers}" var="server">
				<tr>
					<td>${server.serverId}</td>
					<td>${server.serverName}</td>
					<td>${server.ipAddress}</td>
					<td>${server.serverType}</td>
					<td>${server.portNumber}</td>
					<td>${server.commissionedDate}</td>
					<td>${server.isActive}</td>
					<td>${server.usageCapacity}</td>
					<td>${server.operatingSystem}</td>
					<td>${server.team}</td>
					<td>${server.env}</td>
					<td>${server.application}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	
	<h2>Host Management System-> Filter Management</h2>
	
	<select class="form-select" aria-label="Default select example">
		<option selected>Open this to select filter</option>
		<option value="1">Team</option>
		<option value="2">Application</option>
		<option value="3">Environment</option>
		<option value="4">IsActive</option>
	</select>
	
	
	<select class="form-select" aria-label="Default select example">
		<option selected>Environment</option>
		<option value="1">Devlopment</option>
		<option value="2">SIT</option>
		<option value="3">UAT</option>
		<option value="4">PROD</option>
	</select>
	
	<select class="form-select" aria-label="Default select example">
		<option selected>Team</option>
		<option value="1">Team A</option>
		<option value="2">Team B</option>
		<option value="3">Team C</option>
		<option value="4">Team D</option>
	</select>
	
	<select class="form-select" aria-label="Default select example">
		<option selected>Operating System</option>
		<option value="1">Windows</option>
		<option value="2">Mac</option>
		<option value="3">Android</option>
		<option value="4">Linux</option>
	</select>
	
	<select class="form-select" aria-label="Default select example">
		<option selected>Departments</option>
		<option value="1">HR</option>
		<option value="2">IT</option>
		<option value="3">Acc & Finance</option>
		<option value="4">R&D</option>
		<option value="5">Production</option>
	</select>
	
	<select class="form-select" aria-label="Default select example">
		<option selected>Client</option>
		<option value="1">Credit Suisse</option>
		<option value="2">Bloomberg Media</option>
		<option value="3">Dow Jones</option>
		<option value="4">Siemens</option>
		<option value="5">Deutsche Bank</option>
	</select>
	
	<select class="form-select" aria-label="Default select example">
		<option selected>Status</option>
		<option value="1">Active</option>
		<option value="2">Expired</option>
	</select>
	
	<a href="addd.html"><p>Add More Servers</p></a>

</body>
</html>