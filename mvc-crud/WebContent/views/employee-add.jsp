<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Edit Employee</title>
</head>
<body>
	<div class="container">
		<form action="${pageContext.request.contextPath}/EmployeeController" method="post">
			Enter name: <input type="text" name="fullName" value="${employee.name}"><br/>
			Enter date of birth: <input type="date" name="dob" value="${employee.dob}"><br/>
			Enter department: <input type="text" name="department" value="${employee.department}"><br/>
			<input type="hidden" name="id" value="${employee.id}"/>
			<button type="submit" class="btn btn-primary">Save</button>
		</form>
	</div>
</body>
</html>