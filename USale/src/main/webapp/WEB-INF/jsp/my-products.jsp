<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="template.css">
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

  <div id="background-text">
    <h1>USale.</h1>
  </div>

	<div class="container">
		<div class="row">
			<hr class = "placeholder col-12">
      <hr class = "placeholder col-12">
	    <!--                      Add your code HERE                               -->
      <h2 class="col-12 text-center"><br></br>ITEM MANAGEMENT.</h2>
      <div class="tasks col-12 text-center">
    		<h5 class = "list">ITEMS LISTED<hr class = "col-6"></h5>
    			<div class = "items">
    			<table>
    		<tbody>
    			<c:forEach items="${products}" var="product" >
		   			<div class = "picture col-6 text-left">
		   				<img style="max-height: 100%; max-width: 100%;" src="1.png" alt="IMAGE HERE">
		   			</div>
				     <tr>
				      <td>${product.name}</td>
				      <td>${product.category}</td>
				      <td>${product.descr}</td>
				      <td>${product.price}</td>
				      <td><a class="btn btn-primary mx-auto" href="/user/buy-product?id=${product.id}" role="button">Buy This Item</a></td>
				     </tr>
				 </c:forEach>
  			</tbody>
  			</table>
            <br></br>
    			</div>
  		</div>
      <a class="btn btn-primary mx-auto" href="/user/create-product" role="button">LIST AN ITEM</a>

	</div>
	</div> <!-- .container -->


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
</html>
