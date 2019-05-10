<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<div class="container">
	<div class="check-out">
		
			
		
			<h4 class="title">Chi Tiết Đơn hàng</h4>
			<div class="example">
				<div class="container">
					<div class="row">

						<table class="table table-striped">
							<thead>
								<tr>
									<th>STT</th>								
									<th>Tên Sản Phẩm</th>
									<th>Giá tiền</th>
									<th>Số Lượng</th>
									<th>Total</th>
									
								</tr>
							</thead>
							<tbody>
							<c:set value="1" var="detail" />
							<c:forEach items="${order.list}" var="items">  
									 <tr>
									    <td>${detail}</td>	
									    <td>${items.book.name}</td>
									    <td>${items.book.price}</td>							
										<td>${items.quantity}</td>
										<td>${items.price}</td>																							
										<c:set var="detail" value="${detail=detail+1}"/>																		
									</tr>
							</c:forEach>
								
							</tbody>
						</table>
					</div>
				</div>

			</div>
			
			 <a class="hvr-shutter-in-vertical cart-to" href="/home">Về Trang Chủ</a>
             <a class="hvr-shutter-in-vertical cart-to" href="/user/lich-su-dat-hang">Lịch Sử Đặt hàng</a>
		






	</div>

</div>
