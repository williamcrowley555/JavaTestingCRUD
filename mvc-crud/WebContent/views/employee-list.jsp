<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.22/datatables.min.css"/>
	<title>Employee List</title>
</head>
<body>
	<%
		String email = (String) session.getAttribute("email");
		if(email == null) {
			response.sendRedirect("index.jsp");
		}
	%>
	<div class="container">
		<div class="float-right">
			<a href="${pageContext.request.contextPath}/logout.jsp">Logout</a>
		</div>
	<p>${message}</p>
	<button class="btn btn-primary" onclick="window.location.href='views/employee-add.jsp'">Add Employee</button>
		<table class="table table-striped table-bordered" id="datatable">
			<thead class="thead-dark">
				<tr>
					<th>Name</th>
					<th>Department</th>
					<th>Date of birth</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="employee">
					<tr>
						<td>${employee.name}</td>
						<td>${employee.department}</td>
						<td>${employee.dob}</td>
						<td>
							<a href="${pageContext.request.contextPath}/EmployeeController?action=EDIT&id=${employee.id}">Edit</a> | 
							<a href="${pageContext.request.contextPath}/EmployeeController?action=DELETE&id=${employee.id}" onclick="return confirm('Are you sure you want to delete?');">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	<script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.22/datatables.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#datatable").DataTable();
		});
	</script>
</body>
</html>