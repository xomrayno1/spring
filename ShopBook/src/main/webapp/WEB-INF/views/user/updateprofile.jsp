<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url value="/user/update-profile" var="url"/>

	<div class="container">
		<div class="account">
			<h2 class="account-in">Cập Nhật Thông tin</h2>
			
			<form:form modelAttribute="users" action="${url}" method="POST">				
				<div>
					<span>First Name*</span>
					<form:input path="firstname" required="required"/>
				</div> 	
				<div>			
					<span class="name-in">Last Name*</span>
					<form:input path="lastname" required="required"/>
				</div>
				<div>			
					<span class="name-in">Phone*</span>
					<form:input path="phone" required="required"/>
				</div>
				<div>			
					<span class="name-in">Địa Chỉ*</span>
					<form:input path="address" required="required"/>
				</div>
				
				<form:hidden path="password"/>	
				<form:hidden path="username"/>
				<form:hidden path="role"/>
				<form:hidden path="id"/>
				   <input type="submit" value="Cập Nhật" />				
			</form:form>
		</div>
	</div>