<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url value="/users/register" var="register"/>

	<div class="container">
		<div class="account">
			<h2 class="account-in">Đăng Ký</h2>
			<p style="color: red">${msg}</p>
			<form:form modelAttribute="users" action="${register}" method="POST">				
				<div>
					<span>First Name*</span>
					<form:input path="firstname" required="required"/>
				</div> 	
				<div>			
					<span class="name-in">Last Name*</span>
					<form:input path="lastname" required="required"/>
				</div>			
				<div> 	
					<span class="mail">Username*</span>
					<form:input path="username" required="required"/>
					<p style="color:red"><form:errors path="username"/></p>
				</div>
				<div> 
					<span class="word">Password*</span>
					<form:password path="password" required="required"/>
					<p style="color:red"><form:errors path="password"/></p>
					<form:hidden path="role" value="ROLE_USER"/>
					
				</div>
				   <input type="submit" value="Login" />				
			</form:form>
		</div>
	</div>