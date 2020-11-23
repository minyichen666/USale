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
	#info{
		margin:auto;
	}
	tr.spaceUnder>td {
	  padding-bottom: 1em;
	}
	.padding-table-columns td
	{
	    padding:0 15px;
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
      <h2 class="col-12 text-center"><br></br>ITEM MANAGEMENT</h2>
    		<h5 class = "list col-12"><hr></h5>
    		<div class = "tasks col-7 text-center" id="info">
				<a class="btn btn-primary mx-auto" href="/user/create-product" role="button">LIST AN ITEM</a>
			</div>
    		<div class = "tasks col-7 text-center" id="info">
	    	<form action="/product/search" class="form-inline">
	    		<input type="text" placeholder="name" name="name">
	    		<input type="text" placeholder="category" names="category">          
			    <input type="submit" value="Submit">
			</form>
			</div>
			<br></br>
			<div class = "tasks col-7 text-center" id="info">
    		<table style="color: #FFCC00;" className="padding-table-columns">
    		<tbody>
    			<c:forEach items="${productList}" var="product" >
		   			<!-- <div class = "picture col-6 text-left">
		   				<img style="max-height: 100%; max-width: 100%;" src="1.png" alt="IMAGE HERE">
		   			</div> -->
				     <tr class="spaceUnder">
				      <td >${product.name}</td>
				      <td>${product.category}</td>
				      <td>${product.descr}</td>
				      <td>${product.price}</td>
				      <td><a class="btn btn-primary mx-auto" href="/user/delete-product?id=${product.id}" role="button" >Delete</a></td>
				     	
				     </tr>
				     <c:if test="${error != null}">
					 ${error}
					</c:if>
				 </c:forEach>
  			</tbody>
  			</table>
  			</div>
      <br></br>


	</div>
	</div> <!-- .container -->
<%@ include file = "footer.jsp" %>

<!-- 	<footer class="page-footer font-small blue">

	  <div class="footer-copyright text-center py-3">Â© 2020 Copyright:
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
 -->

<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
    .tagColor{
      color: #FFCC00;
    }
    .nameAndPrice{
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
	.smallsearchbar {
		box-sizing: border-box;
		padding-left: 1.5%;
		padding-right: 1.5%;
	}
	.itemsfound {
		padding: 2%;
		box-sizing: border-box;
	}
	.item {
		padding: 10px;
		box-sizing: border-box;
	}
	</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg">
	  <button class="navbar-toggler navbar-dark" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">

      <span class="navbar-toggler-icon"> <p class="nav-brand-icon">   USale.</p></span>
	  </button>

	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto container">
	      <li class="nav-item col-lg-2 col-md-3 text-left">
	        <a class="nav-link" href="">HOME</a>
	      </li>
	      <li class="nav-item col-lg-2 col-md-3 text-left">
	        <a class="nav-link" href="">ABOUT US</a>
	      </li>
	      <li class="d-none d-lg-block col-lg-4 col-md-0 col-sm-0 col-xs-0 nav-brand text-center">
	        <a class="nav-link " href="">USale.</a>
	      </li>
        <li class="nav-item col-lg-1 col-md-3 text-right">
	        <a class="nav-link" href="my_account.html">ACCOUNT</a>
	      </li>
        <li class="nav-item col-lg-3 col-md-3 text-right">
	        <a class="nav-link" href="item_management.html">ITEM MANAGEMENT</a>
	      </li>
	    </ul>
	  </div>
	</nav>

  <div id="background-text">
    <h1>USale.</h1>
  </div>

	<div class="container">
		<div class="row">
			<hr class = "placeholder col-12">
      
	    <!--                      Add your code HERE                               -->
	    <h2 class="col-12 text-center"><br></br>USale.</h2>
      <div class="tasks col-12 text-center">
  		</div>

      <h2 class="col-12 text-center">Items Found</h2>
      <!-- <div class="tasks col-12 text-center"></div>
      <br><br> -->
    	
    	<h5 class = "list col-12"><hr></h5>



	    <div class = "tags col-3 text-left">
			<!-- public String listProduct(@RequestParam(name = "name", required=false) String name, @RequestParam(name = "category", required=false) String category, Model model) {
				List<Product> products = productService.searchProduct(name, category);
				model.addAttribute("products", products);
				return "search";
			} -->
			
			
			
			
			
			
			
			
			
			
	    	<form method="GET" action="item_search.html">

		    	<div class="filterbutton">
					<input class="btn btn-info my-0 btn-primary mx-auto" href="item_search.html" type="submit" value="Filter by a Tag">
			    </div>

    			<br>

    			<fieldset>
	    			<!-- <INPUT TYPE="radio" NAME="bev" VALUE="no" CHECKED>No beverage<BR>
					<INPUT TYPE="radio" NAME="bev" VALUE="tea">Tea<BR>
					<INPUT TYPE="radio" NAME="bev" VALUE="cof">Coffee<BR>
					<INPUT TYPE="radio" NAME="bev" VALUE="lem">Lemonade<BR> -->

					<input type="radio" name="tag" value="tag1">
						<div class="tagColor">tag1</div>
					<br>
					<br>
					<input type="radio" name="tag" value="tag2">
						<div class="tagColor">tag2</div>
					<br>
					<br>
					<input type="radio" name="tag" value="tag2">
						<div class="tagColor">tag3</div>
					<br>
					<br>

    			</fieldset>
    		</form>

    		</div>



    	<div class="col-9">

	    	<div class="smallsearchbar">
				<form method="GET" action="item_search.html">
		          <div class="input-group mb-4">
		            <input type="search" placeholder="Search..." aria-describedby="button-addon5" class="form-control bar">
		            <div class="input-group-append">
		              <button id="button-addon5" type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
		            </div>
		          </div>
		        </form>
		    </div>
	    
    			


    		<div class = "itemsfound row">
					<c:forEach items="${productList}" var="product">
						<div class = "item col-4">
	    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
	    					<div class="nameAndPrice">${product.getName()} | $${product.getPrice()}</div>
	    					<p>${product.getDescr()}</p>
	    					<a class="btn btn-primary mx-auto" href="/user/buy" role="button">Buy Item</a >
	    				</div>
					</c:forEach>
    				<!-- <div class = "item col-4">
    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
    					<div class="nameAndPrice">NAME | $12345</div>
    					<a class="btn btn-primary mx-auto" href="/user/buy" role="button">Buy Item</a >
    				</div>
    				<div class = "item col-4">
    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
    					<div class="nameAndPrice">NAME | $12345</div>
    					<a class="btn btn-primary mx-auto" href="/user/buy" role="button">Buy Item</a >
    				</div>
    				<div class = "item col-4">
    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
    					<div class="nameAndPrice">NAME | $12345</div>
    					<a class="btn btn-primary mx-auto" href="/user/buy" role="button">Buy Item</a >
    				</div>
    				<div class = "item col-4">
    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
    					<div class="nameAndPrice">NAME | $12345</div>
    					<a class="btn btn-primary mx-auto" href="/user/buy" role="button">Buy Item</a >
    				</div>
    				<div class = "item col-4">
    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
    					<div class="nameAndPrice">NAME | $12345</div>
    					<a class="btn btn-primary mx-auto" href="/user/buy" role="button">Buy Item</a >
    				</div>
    				<div class = "item col-4">
    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
    					<div class="nameAndPrice">NAME | $12345</div>
    					<a class="btn btn-primary mx-auto" href="/user/buy" role="button">Buy Item</a >
    				</div>
    				<div class = "item col-4">
    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
    					<div class="nameAndPrice">NAME | $12345</div>
    					<a class="btn btn-primary mx-auto" href="/user/buy" role="button">Buy Item</a >
    				</div> -->

    				

    			</div>

    		</div>
  		
      <br></br>


	</div>
	</div> <!-- .container -->

	<br></br>
	<br></br>


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
</html> --%>



<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<%@ include file = "footer.jsp" %>

<!-- 	<footer class="page-footer font-small blue">

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
 --> --%>