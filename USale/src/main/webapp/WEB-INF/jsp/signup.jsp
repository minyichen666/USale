<%@ include file = "header_no_navbar.jsp" %>

		<style>
			.hidden{
				display: none;
			}
			#form{
				margin: auto;
			}
		</style>
		<div class="container">
			<div class="row">
				<hr class = "placeholder col-12">
				<hr class = "placeholder col-12">
				<div class = "text-center col-12" id = "title"> <h2>sign up.</h2> </div>
				<a class="text-center col-12" href="/user/login">click here to log in.</a>
				<a class="text-center col-12" href="/product/search">click here to continue as guest.</a>
				<div class = "text-center col-12" id = "title"> <p><p/> </div>
				<p>${error}</p>
				
			<%-- 	<form:form action="/user/login" method="post" modelAttribute="userLogin">
				
					<div class="input-group mb-3">
						<form:input path="userName" type="text" class="form-control" placeholder="username..." id = "input-bar" value = ""/>
					</div>
					<div class="input-group mb-3">
						<form:input type="password" class="form-control" placeholder="password..." id = "input-bar"/>
					</div>
					<form:button type="submit" class = "text-center" id = "title"> <h2>yes.</h2> </form:button>
				</form:form> --%>
				
				
    
    
				<form:form action="/user/signup" method="post" modelAttribute="user" id="form">
				
					<p>
						<form:input path="userName" type="text" class="form-control" placeholder="username..." id = "input-bar" value = ""/>
						<%-- <form:input type = "text" path="userName" /> --%>
					</p>
					<p>
						
						<form:input path="password" type="password" class="form-control" placeholder="password..." id = "input-bar" value = ""/>
						<form:input path="phoneNumber" type="text" class="hidden" value="0000000000"/>
						<form:input path="address" type="text" class="hidden" value="placeholder address, please update"/>
						<form:input path="balance" type="text" class="hidden" value="0"/>
						<!--<form:input path="id" type="text" value="6"/>-->
						
					</p>
					<a class="text-center col-12" href="/user/signup">${message}<br></a>
					<form:button type="submit" class = "text-center col-12" id = "title"> <h2>yes.</h2> </form:button>
				</form:form>
				
<!-- 				<div class="starter-template"> -->
				
		           <%--  <h3>Message: ${message}</h3> --%>
		       <!--  --> </div>
<%-- <%-- 			   
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
	        </form> --%>
			</div>
		</div>
		<%@ include file = "footer.jsp" %></html> -->