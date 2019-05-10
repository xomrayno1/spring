<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<div class="container">
	<div class="check-out">
		
			
		
			<h4 class="title">Lịch sử Đặt hàng</h4>
			<div class="example">
				<div class="container">
					<div class="row">

						<table class="table table-striped">
							<thead>
								<tr>
									<th>STT</th>								
									<th>DATE</th>
									<th>Tổng Tiền</th>
									<th>Tình trạng</th>
									<th>Xem Chi tiết</th>
									<th>+</th>
								</tr>
							</thead>
							<tbody>
							<c:set value="1" var="detail" />
							<c:forEach items="${order}" var="order"> 
									 <tr>
									    <td>${detail}</td>
										<td>${order.date}</td>
										<td>${order.price}</td>
										<td>
										<c:if test="${order.status == 0}"> Chưa Xử lý</c:if>
										<c:if test="${order.status == 1}"> Đã Xử lý</c:if>										
										</td>
										<td><a href="/user/chi-tiet-don-hang/${order.id}"><img title="Xem Chi Tiết" alt="" src='<c:url value="/images/detailicon.png"/>'></a></td>
										<td>
										<c:if test="${order.status == 0}"><a href="/user/huy-don-hang/${order.id}"><img title="Hủy Đơn Hàng" alt="" src='<c:url value="/images/closeicon.png"/>'></a></c:if></td>
										<c:set var="detail" value="${detail=detail+1}"/>																		
									</tr>
							 </c:forEach>		
								
							</tbody>
						</table>
					</div>
				</div>

			</div>
			
			 <a class="hvr-shutter-in-vertical cart-to" href="/home">Về Trang Chủ</a>
			

		






	</div>

</div>
