<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="security"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:url value="/tim-kiem"  var="url"/>

<div class="header">
		<div class="header-top">
			<div class="container">	
			<div class="header-top-in">			
				<div class="logo">
					<a href="/home"><img src="/images/logo.png" alt=" " ></a>
				</div>
				<div class="header-in">
					<ul class="icon1 sub-icon1">
							<li  ><a href="#">WISH LIST (0)</a> </li>
							<security:authorize access="hasRole('USER')">
							<security:authentication property="principal" var="user"/> 
							
							<li  ><a href="/user/profile">Xin Chào,${user.username}</a></li>
							<li  ><a href="/dang-xuat">ĐĂNG XUẤT</a></li>
						    				
							</security:authorize>
							
							
							<security:authorize access="hasRole('ADMIN')">
							<li  ><a title=" di Chuyển đến trang admin" href="/admin/home">Xin Chào,Admin</a></li>
							<li  ><a href="/dang-xuat">ĐĂNG XUẤT</a></li>							
							</security:authorize>
						
						
						
		
							<security:authorize access="!isAuthenticated()">																	
							<li  ><a href="/dang-nhap">ĐĂNG NHẬP</a></li>						
							</security:authorize>
							
							
							<li ><a href="#" > SHOPPING CART</a></li>
							<li > <a href="/check-out" >CHECKOUT</a> </li>	
							<li><div class="cart">
									<a href="#" class="cart-in"> </a>
									<span>${fn:length(sessionScope.cart)}  </span>
								</div>
								<ul class="sub-icon1 list">
								
						  <h3>Số Items trong giỏ (${fn:length(sessionScope.cart)})</h3>
						  <div class="shopping_cart">
					
						  <c:forEach items="${sessionScope.cart}" var="items"> 
							  <div class="cart_box">
							   	 <div class="message">
							   	     <div class="alert-close"><a href="/delete-items/${items.book.id}"></a></div>
					                <div class="list_img"><img src='<c:url value="/${items.book.image}"></c:url>' class="img-responsive" alt=""></div>
								    <div class="list_desc"><h4><a href="/${items.book.url}">${items.book.name}</a></h4>${items.quantity} x<span class="actual">
		                             $${items.book.price}</span></div>
		                              <div class="clearfix"></div>
	                              </div>
	                            </div>
	                            <c:set value="${totalprice = totalprice +items.price}" var="totalprice" />	
	                            
	                       </c:forEach>     
	                        </div>
	                        
	                        
	                        <div class="total">
	                        	<div class="total_left">CartSubtotal : </div>
	                        	<div class="total_right">${totalprice}</div>
	                        	<div class="clearfix"> </div>
	                        </div>
                            <div class="login_buttons">
							  <div class="check_button"><a href="/check-out">Check out</a></div>
							  <div class="clearfix"></div>
						    </div>
					      <div class="clearfix"></div>
						</ul>
							</li>
						</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
		</div>
		<div class="header-bottom">
		<div class="container">
			<div class="h_menu4">
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li class="active"><a href="/home"><i> </i>Desktops</a></li>
					<li ><a href="#" >Danh Mục</a>
						<ul class="drop">
						<c:forEach items="${bookcate}" var="cate">
							<li><a href="/danh-muc/${cate.id}"> ${cate.name}</a></li>
						</c:forEach>	
						</ul>
					</li> 																		     					
					<li><a href="#" >Bài Viết</a></li> 
					<li><a href="#" >Liên Hệ</a></li> 
					
				</ul>
				<script type="text/javascript" src="js/nav.js"></script>
			</div>
		</div>
		</div>
		<div class="header-bottom-in">
			<div class="container">
			<div class="header-bottom-on">
			<p class="wel"><a href="#">Welcome visitor you can login or create an account.</a></p>
			<div class="header-can">
				<ul class="social-in">
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i class="facebook"> </i></a></li>
						<li><a href="#"><i class="twitter"> </i></a></li>					
						<li><a href="#"><i class="skype"> </i></a></li>
					</ul>	
					<div class="down-top">		
							<select class="in-drop">
							  <option value="Dollars" class="in-of">Dollars</option>
							  <option value="Euro" class="in-of">Euro</option>
							  <option value="Yen" class="in-of">Yen</option>
							</select>
					 </div>
					<div class="search">
						<form action="${url}" method="get">
							<input type="text" value="Tìm kiếm" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" 
							placeholder="Nhập tên tác giả hoặc tên sách" name="search">
							<input type="submit" value="">
						</form>
					</div>

					<div class="clearfix"> </div>
			</div>
			<div class="clearfix"></div>
		</div>
		</div>
		</div>
	</div>