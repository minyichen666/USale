<!DOCTYPE html>
<html>
<head>
	<meta http-equiv=”refresh” content=”60; item_search.html”>

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

    				<div class = "item col-4">
    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
    					<div class="nameAndPrice">NAME | $12345</div>
    				</div>
    				<div class = "item col-4">
    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
    					<div class="nameAndPrice">NAME | $12345</div>
    				</div>
    				<div class = "item col-4">
    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
    					<div class="nameAndPrice">NAME | $12345</div>
    				</div>
    				<div class = "item col-4">
    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
    					<div class="nameAndPrice">NAME | $12345</div>
    				</div>
    				<div class = "item col-4">
    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
    					<div class="nameAndPrice">NAME | $12345</div>
    				</div>
    				<div class = "item col-4">
    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
    					<div class="nameAndPrice">NAME | $12345</div>
    				</div>
    				<div class = "item col-4">
    					<img style="max-height: 100%; max-width: 100%" src="1.png" alt="IMAGE HERE">
    					<div class="nameAndPrice">NAME | $12345</div>
    				</div>

    				

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
</html>
