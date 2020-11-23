<%@ include file = "header_no_navbar.jsp" %>
		<div class="container">
			<div class="row">
				<hr class = "placeholder col-12">
				<hr class = "placeholder col-12">
				<div class = "text-center col-12" id = "title"> <h2>log in.</h2> </div>
				<a class="text-center col-12" href="/user/signup">click here to sign up.</a>
				<a class="text-center col-12" href="/product/search">click here to continue as guest.</a>
				<div class = "text-center col-12" id = "title"> <p><p/> </div>
				<p>${error}</p>
				<form:form action="/user/login" method="post" modelAttribute="userLogin" id="form">
				
					<p>
						<form:input path="userName" type="text" class="form-control" placeholder="username..." id = "input-bar" value = ""/>
					</p>
					<p>
						
						<form:input path="password" type="password" class="form-control" placeholder="password..." id = "input-bar" value = ""/>
					</p>
					<form:button type="submit" class = "text-center" id = "title"> <h2>yes.</h2> </form:button>
				</form:form>
<%-- 			    
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
<%@ include file = "footer.jsp" %>