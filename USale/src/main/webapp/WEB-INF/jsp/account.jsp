<<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
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
      height: 100%;
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
    h2{
      color: #FFCC00;
    }
    h5{
      color: #FFCC00;
    }
    hr{
        border-bottom: 1px solid #FFCC00;
    }
    .hide {
			display: none;
		}
    li{
      color: #FFCC00;
    }
    .btn{
      background-color: #FFCC00;
			border: #FFCC00;
    }
    .container{
      font-family: Alata;
    }
		@media(max-width: 767px){
				h1{
					font-size: 10em;
				}
		}


	</style>
</head>
<body>
	<%@ include file = "navbar.jsp" %>

  <div id="background-text">
    <h1>USale.</h1>
  </div>

		<style>
			<%@ include file = "template.css" %>
			<%@ include file = "style.css" %>
			
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
      
	    <!--                      Add your code HERE                               -->
	    <h2 class="col-12 text-center"><br></br>My Account.</h2>
      <div class="tasks col-8 text-center">
  		</div>

      <!-- <h2 class="col-12 text-center">Items Found</h2> -->
      <!-- <div class="tasks col-12 text-center"></div>
      <br><br> -->
    		<h5 class = "list col-12"><hr></h5>
    			
    		
    			
    			<div class = "tasks col-7 text-left">

	    			<h5 class = "list">
	    				<div class = "items">
		    				<h8>name: ${Info.userName}</h8>
		    				<br>
		    				<br>
		    				<h8>phone: ${Info.phoneNumber}</h8>
		    				<br>
		    				<br>
		    				<h8>location: ${Info.address}</h8>
		    			</div>
		    		</h5>

    				<br></br>
    				<a class="btn btn-primary mx-auto" href="edit_my_account.html" role="button">Edit Account Information</a>
    			</div>

    			<div class = "picture col-5 text-left">
    				<img style="max-height: 100%; max-width: 100%" src="2.png" alt="IMAGE HERE">
    			</div>

  		</div>
  		
      <br></br>


	</div>
	</div> <!-- .container -->
	<%@ include file = "footer.jsp" %>
<!-- 

	<footer class="page-footer font-small blue">

	  <div class="footer-copyright text-center py-3">© 2020 Copyright:
	     <a id = "footlink" href=""> usale.com</a>
	  </div>

	</footer>

  <script>
		let t = document.querySelectorAll(".list");
		for(let i=0;i<t.length;i++){
			t[i].onclick = function(){
				if(this.nextElementSibling.classList.contains("hide")){
					this.nextElementSibling.classList.remove("hide");
				}
				else{
					this.nextElementSibling.classList.add("hide");
				}
			}
		}
	</script>

</body>
</html> -->
