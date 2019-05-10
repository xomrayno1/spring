<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>

<c:url value="/login" var="login"/>
	<div class="container">
		<div class="account">
			<h2 class="account-in">Đăng Nhập</h2>
			<p style="color: red">${msg}</p>
				<form action="${login}" method="POST">	
				<div> 	
					<span class="mail">Email*</span>
					<input type="text" name="username" required="required"> 
				</div>
				<div> 
					<span class="word">Password*</span>
					<input type="password" name="password" required="required">
				</div>				
					<input type="submit" value="Login"> 
				</form>
				<span><a href="/dang-ky">Đăng Ký</a></span>
		</div>
		
	</div>