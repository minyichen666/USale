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
        <li class="nav-item active col-lg-1 col-md-3 text-right">
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
	    <h2 class="col-12 text-center"><br></br>Edit My Account.</h2>
      <div class="tasks col-12 text-center">
  		</div>

      <!-- <div class="tasks col-12 text-center"></div>
      <br><br> -->

    		<h5 class = "list col-12"><hr></h5>

    			<h5 class = "list">
    					<div class="container searchbar">
    						<form method="POST" action="my_account.html">

	    				

					          <div class="input-group mb-4">
					          		<h8>name—</h8>
					            <input type="name" placeholder="name..." aria-describedby="button-addon5" class="form-control bar">
					            
							
	    				<br>
	    				<br>
	    				
	    						<div class="input-group mb-4">
	    							<h8>phone—</h8>
					            <input type="phone" placeholder="phone..." aria-describedby="button-addon5" class="form-control bar">
	    				<br>
	    				<br>
	    				
	    						<div class="input-group mb-4">
	    							<h8>location—</h8>
					            <input type="location" placeholder="location..." aria-describedby="button-addon5" class="form-control bar">

	    				</div>
					        </form>

    				<br></br>
    				<button class="btn btn-info my-4 btn-primary mx-auto" href="my_account.html" type="submit">Edit Account Information</button>

    			</div>

    		</h5>

  		</div>
  		


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
