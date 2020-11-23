<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>USale.</title>
	<style>
    h1{
      width: 100%;
      heght: 100%;
      font-size: 20em;
      text-align:center;
    }
		a{
      color: #FFCC00;
    }
		footer{
			position:fixed;
      width: 100%;
			bottom:0;
		}
		#footlink{
			font-size:1em;
		}
    form{
      width: 60%;
      margin: auto;
      color: #FFCC00;
      font-family: Alata;
    }
		@media(max-width: 767px){
				h1{
					font-size: 10em;
				}

		}
		.hidden{
			display: none;
		}
		.btn{
			background-color:#FFCC00;
		}

	<%@ include file = "template.css" %>
	</style>
</head>
<body>
<%@ include file = "navbar.jsp" %>

  <div id="background-text">
    <h1>USale.</h1>
  </div>


	<div class="container">
		<div class="row">
			<hr class = "placeholder col-12">
      <hr class = "placeholder col-12">
	    <!--                      Add your code HERE                               -->
      <form:form action="/user/create-product" method="post" modelAttribute="product" id="form">
        <h2 class="col-12 text-center"><br></br>LIST AN ITEM.</h2>

				<div class="form-group row">
					<label for="label-id" class="col-4 text-right">NAME OF ITEM: </label>
					<div class="col-8">
						<form:input path="name" type="text" class="form-control" value = ""/>
					</div>
          <br></br>
					<label for="label-id" class="col-lg-4 text-right">PRICE: </label>
					<div class="col-8">
						<form:input path="price" type="text" class="form-control" value = ""/>
					</div>
          <br></br>
          <label for="label-id" class="col-4 text-right">CATEGORY: </label>
					<div class="col-8">
						<%-- <form:input path="category" type="text" class="form-control"  value = ""/> --%>
						<form:select path="category" name = "identity" class="form-control" id="identity"  value = "">
					      <option selected value="lifestyle" >lifestyle</option>
					      <option value="education">education</option>  
					      <option value="entertainment">entertainment</option>  
					      <option value="business">business</option>  
					      <option value="others">others</option>  
					     </form:select>
					</div>
          <br></br>
					<label for="label-id" class="col-4 text-right">Description:</label>
					<div class="col-8">
						<form:input path="descr" type="text" class="form-control" value = ""/> 
						
					</div>
          <br></br>
					<div class="col-8">
						<form:input path="userId" type="text" class="form-control hidden"  value = "${user.getId()}"/>
					</div>
          <br></br>
					<form:button type="submit" class = "text-center btn btn-primary col-sm-2" >Submit </form:button>
				</div>


			</form:form>
 
	</div>
	</div> <!-- .container -->
<%@ include file = "footer.jsp" %>

<!-- 	<footer class="page-footer font-small blue">

	  <div class="footer-copyright text-center py-3">© 2020 Copyright:
	     <a id = "footlink" href=""> usale.com</a>
	  </div>

	</footer>
</body>
</html>
 -->