<!-- <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org"
      xmlns:sec="https://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="template.css">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

		<title>USale.</title>
		<style>
			
			h1{
				width: 100%;
				height: 100%;
				font-size: 20em;
				text-align: center;
			}
			a{
				color: #FFCC00;
			}
			footer{
				position: fixed;
				width: 100%;
				bottom: 0;
			}
			#footlink{
				font-size:1em;
			}
			@media(max-width: 767px){
				h1{
					font-size: 10em;
				}
			}
			body{
				background-color: #6D0101;
				background-image: linear-gradient(to right, #6D0101, #990001);
			}
			.placeholder{
				opacity: 0;
			}
			#background-text{
				margin: 0;
				position: absolute;
				top: 50%;
				-ms-transform: translateY(-50%);
				transform: translateY(-50%);
				width: 100%;
				height: 50%;
				position: fixed;
				color: rgba(255, 204, 0, 0.1);
				font-family: Playfair Display, serif;
				letter-spacing: -1.015em;
				font-style: italic;
				align-items: center;
				text-align: center;
				margin: auto;
				z-index: -1;
			}
			#title{
				color: rgba(255, 204, 0, 1);
				font-family: Playfair Display, serif;
				margin: auto;
				padding: 0;
				border: none;
				background: none;
				/*-ms-transform: translateY(-50%);
				transform: translateY(-50%);
				-ms-transform: translateX(-50%);
				transform: translateX(-50%);*/
			}
			#yes{
				color: rgba(255, 204, 0, 1);
				font-family: Playfair Display, serif;
			}
			#input-bar{
				background-color: rgba(132, 1, 1, 0);
				background-image: linear-gradient(to left, rgba(132, 1, 1, 0.8), rgba(153, 0, 1, 0.8));
				border-color: rgba(255, 204, 0, 1);
				border-radius: 0;
				font-family: Playfair Display, serif;
			}
			.form-control::placeholder{
				color: rgba(255, 204, 0, 1);
			}
		</style>
	</head>

	<body>
		<div id="background-text"> <h1>USale.</h1> </div>

		<div class="container">
			<div class="row">
				<hr class = "placeholder col-12">
				<hr class = "placeholder col-12">
				<div class = "text-center col-12" id = "title"> <h2>log in.</h2> </div>
				<form>
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="username..." id = "input-bar" value = "">
					</div>
					<div class="input-group mb-3">
						<input type="password" class="form-control" placeholder="password..." id = "input-bar">
					</div>
					<button type="submit" class = "text-center" id = "title"> <h2>yes.</h2> </button>
				</form>
			    
	        <div th:if="${param.error}">
	            Invalid username and password.
	        </div>
	        <div th:if="${param.logout}">
	            You have been logged out.
	        </div>
	        <form th:action="@{/user/login}" method="post">
	            <div><label> User Name : <input type="text" name="username"/> </label></div>
	            <div><label> Password: <input type="password" name="password"/> </label></div>
	            <div><input type="submit" value="Sign In"/></div>
	        </form>
			</div>
		</div> 
		
		<footer class="page-footer font-small blue">
			<div class="footer-copyright text-center py-3">© 2020 Copyright:
				<a id = "footlink" href=""> usale.com</a>
			</div>
		</footer>
	</body>
</html>-->

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
	<h3 style="color: red;">Add New Employee</h3>

	<div id="addEmployee">
		<form:form action="/user/login" method="post"
			modelAttribute="userLogin">
			<p>
				<label>User Name</label>
				<form:input path="userName" />
			</p>
			<p>
				<label>Password</label>
				<form:input path="password" />
			</p>
			<input type="SUBMIT" value="Submit" />
		</form:form>
	</div>
</body>
</html>