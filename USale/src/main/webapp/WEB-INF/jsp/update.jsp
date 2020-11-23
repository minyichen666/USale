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
    
    html{
    	overflow: scroll;
    }
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
      
	    <!--                      Add your code HERE                               -->
	    <h2 class="col-12 text-center"><br></br>Edit My Account.</h2>
      <div class="tasks col-12 text-center">
  		</div>

      <!-- <div class="tasks col-12 text-center"></div>
      <br><br> -->

    		<h5 class = "list col-12"><hr></h5>

    			<h5 class = "list">
    					<div class="container searchbar">
    									
    					
    					<form:form action="/user/account" method="POST" modelAttribute="user" id="form">
         
			
			                    <div class="input-group mb-4">
			                      <h8>name: </h8>
			                       <form:input path="userName" type="text" aria-describedby="button-addon5" class="form-control bar" value="updated"/>${Info.userName}
			                     </div>
			              <br>
			              <br>
			                <div class="input-group mb-4">
			                 <h8>phone: </h8>
			                        <form:input path="phoneNumber" type="text" aria-describedby="button-addon5" class="form-control bar" value="666"/>${Info.phoneNumber}
			                      </div>
			              <br>
			              <br>
			                <div class="input-group mb-4">
			                 <h8>address: </h8>
			                       <form:input path="address" type="text" aria-describedby="button-addon5" class="form-control bar" value="666"/>${Info.address}
			                </div>
			              <br>
			              <br> 
			                <div class="input-group mb-4">
			                 <h8>password: </h8>
			                 <form:input path="password" type="password" aria-describedby="button-addon5" class="form-control bar" value = "666"/>${Info.password}
			             </div>
			           <br>
			           <br>
			             <div class="input-group mb-4">
			                 <h8>balance: Äù</h8>
			                 <form:input path="balance" type="text" aria-describedby="button-addon5" class="form-control bar" value="666"/>${Info.address}
			                </div>
			           <br>
			           <br> 
			              
			                <form:button class="btn btn-info my-4 btn-primary mx-auto text-center" type="submit">Edit Account Information</form:button>
			      </form:form>

    				<br></br>
    				

    			</div>

    		</h5>

  		</div>
  		


	</div>
	</div> <!-- .container -->
<%@ include file = "footer.jsp" %>
<!-- 
	<footer class="page-footer font-small blue">

	  <div class="footer-copyright text-center py-3">¬© 2020 Copyright:
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
