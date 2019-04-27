<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<div class="container">
	<div class="check-out">
		<c:if test="${empty sessionScope.cart}">
			<h4 class="title">Shopping cart is empty</h4>
			<p class="cart">
				You have no items in your shopping cart.<br>Click<a
					href="/home"> here</a> to continue shopping
			</p>
		</c:if>
		<c:if test="${not empty sessionScope.cart}">
			<h4 class="title">Shopping cart</h4>

			<div class="example">
				<div class="container">
					<div class="row">
						<h2>Table CartItem</h2>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>STT</th>
									<th>Ảnh</th>
									<th>Name</th>
									<th>Số Lượng</th>
									<th>Giá/1</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
							<c:set value="1" var="stt"/>
							 
								<c:forEach items="${sessionScope.cart}" var="items" >
									<tr>
									<th>${stt}</th>
										<td><a href="/${items.book.url}"><img style="width: 80px; height: 80px" alt=""
											src='<c:url  value="/${items.book.image}"></c:url>'></a></td>
										<td><a href="/${items.book.url}">${items.book.name}</a></td>
										<td>${items.quantity}</td>
										<td>${items.book.price}</td>
										<c:set value="${stt = stt+1}" var="stt"/>
										<td><a href="/delete-items/${items.book.id}">Xóa</a></td>
									</tr>
									<c:set value="${totalprice = totalprice +items.price}" var="totalprice" />	
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

			</div>
			<span style="color: red">Tổng Tiền : ${totalprice}$</span>
			<a class="hvr-shutter-in-vertical cart-to" href="/thanh-toan">Thanh Toán</a>
			 <a class="hvr-shutter-in-vertical cart-to" href="/home">Về Trang Chủ</a>

		</c:if>






	</div>

</div>
