<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<div class="container">
	<div class="check-out">
		
			
		
			<h4 class="title">Thông tin Tài Khoản</h4>
<a class="hvr-shutter-in-vertical cart-to" href="/user/lich-su-dat-hang">Lịch Sử Đặt hàng</a>
			<div class="example">
				<div class="container">
					<div class="row">

						<table class="table table-striped">
							<thead>
								<tr>
									<th>STT</th>
									<th>firstName</th>
									<th>lastName</th>
									<th>SDT</th>
									<th>Địa Chỉ</th>
									
								</tr>
							</thead>
							<tbody>
							
									 <tr>
									    <td>1</td>
										<td>${user.firstname}</td>
										<td>${user.lastname}</td>
										<td>${user.phone}</td>
										<td>${user.address}</td>																		
									</tr>
								
							</tbody>
						</table>
					</div>
				</div>

			</div>
			<a class="hvr-shutter-in-vertical cart-to" href="/user/cap-nhat-thong-tin/${user.id}">Cập Nhật User</a>
			 <a class="hvr-shutter-in-vertical cart-to" href="/home">Về Trang Chủ</a>

		






	</div>

</div>
