<%@ include file = "header_no_navbar.jsp" %>
		<div class="container">
			<div class="row">
				<hr class = "placeholder col-12">
				<hr class = "placeholder col-12">
				<div class = "text-center col-12" id = "title"> <h2>sign up.</h2> </div>
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
						<form:input path="phoneNumber" type="text" value="123"/>
						<form:input path="address" type="text" value="123"/>
						<form:input path="balance" type="text" value="0"/>
						<form:input path="id" type="text" value="6"/>
						
					</p>
					<form:button type="submit" class = "text-center" id = "title"> <h2>yes.</h2> </form:button>
				</form:form>
				
				<div class="starter-template">
		            <h3>Message: ${message}</h3>
		        </div>
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