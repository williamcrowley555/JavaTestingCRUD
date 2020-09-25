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
		<h1>Employee Directory</h1>
		<hr/>
		<div class="row">
			<div class="col-md-4">
				<form action="${pageContext.request.contextPath}/EmployeeController" method="post">
					<div class="form-group">
						<input type="text" name="fullName" value="${employee.name}" placeholder="Enter Name" class="form-control"><br/>
					</div>
					<div class="form-group">
						<input type="date" name="dob" value="${employee.dob}" placeholder="Enter Date of Birth" class="form-control"><br/>
					</div>
					<div class="form-group">
						<input type="text" name="department" value="${employee.department}" placeholder="Enter Name" class="form-control"><br/>
					</div>
					<input type="hidden" name="id" value="${employee.id}"/>
					<button type="submit" class="btn btn-primary">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>