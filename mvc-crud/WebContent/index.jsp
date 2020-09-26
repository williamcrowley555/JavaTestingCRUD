<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Login</title>
</head>
<body>
	<div class="container">
		<form action="LoginController" method="post">
			<div class="card">
				<div class="card-header">
					Login
				</div>
				<div class="card-body">
					<%
						String email = (String) session.getAttribute("email");
						if(email != null) {
							response.sendRedirect("EmployeeController?action=LIST");
						}
					
						String status = request.getParameter("status");
						if(status != null) {
							String message = null;
							if(status.equals("false")) {
								message = "Login Failed!";
							}
							else if(status.equals("error")) {
								message = "An authentication exception occurred!";
							}
							out.println("<p class='text-danger'>" +  message + "</p>");
						}
					%>
					<div class="form-group">
						<input type="text" name="email" placeholder="Enter Email" class="form-control"><br/>
					</div>
					<div class="form-group">
						<input type="password" name="password" placeholder="Enter Password" class="form-control"><br/>
					</div>
				</div>
				<div class="card-footer">
					<input type="submit" value="Login" class="btn btn-primary">
				</div>
			</div>
		</form>
	</div>
</body>
</html>