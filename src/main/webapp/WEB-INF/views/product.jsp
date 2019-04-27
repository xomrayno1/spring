<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>


<div class="container">
			<div class="products">
					<h2 class=" products-in">PRODUCTS</h2>
					<div class=" top-products">
					
					<c:forEach items="${book}" var="book"> 
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="/${book.url}" class="compare-in"><img  src='<c:url value="/${book.image}"></c:url>' alt="" />
								<div class="compare">
									<span>Add to Compare</span>
									<span>Add to Whislist</span>
								</div>
								</a>	
								<div class="top-content">
									<h5><a href="/${book.url}">${book.name}</a></h5>
									<div class="white">
										<a href="/add-to-cart/${book.id}" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
										<p class="dollar"><span class="in-dollar">$</span><span>${book.price}</span><span>đ</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
					  </c:forEach>
					
					
					<div class="clearfix"></div>
					</div>
					
					<c:if test="${size > 1}">
					<c:set var="pre" value="${size-1}" />
					</c:if>
					<c:if test="${size == 1}">
					<c:set var="pre" value="${size}" />
					</c:if>
					
					<ul class="start">
					
					<li ><a href="/danh-muc/${idcategory}/${pre}"><i></i></a></li>
					
					
					<c:forEach begin="1" step="1" end="${totalrow}" var="value">
					
					<c:if test="${size==value}">  <!-- nếu như size == value thì ta đổi màu  đánh dấu trang hiện tại có số bao nhiu -->
					<li><span>${value}</span></li>	<!-- nó in ra số row từ 1 -total , nếu như trang đang đứng = với 1 số từ 1-total thì ta in ra -->				
					</c:if>
					<c:if test="${size!=value}"> <!-- nếu như size != value thì ta không  đổi màu  -->
					<li class="arrow"><a href="/danh-muc/${idcategory}/${value}">${value}</a></li>
					</c:if>
					
					</c:forEach>					
					<c:set var="next" value="${size+1}"  /> <!-- Trang Tiếp Theo là trang hiện tại +1 -->
					
					<c:if test="${next > totalrow}"> <!-- neu nhu so page tiep theo mà lớn hơn tống số page thì thì ta cho nó bằng 
					với trang đang đứng  hiện tại-->
					
					<c:set var="next" value="${size}"/>
					
					</c:if>
					
					
				
					<li ><a href="/danh-muc/${idcategory}/${next}"><i  class="next"> </i></a></li>
				    </ul>
					
					
			
			</div>
		</div>