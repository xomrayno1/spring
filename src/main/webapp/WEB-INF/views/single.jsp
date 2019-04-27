<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>		
		
<c:url value="/add-to-cart" var="url" />		
		<div class="container">
			<div class="single">
				<div class="col-md-9 top-in-single">
					<div class="col-md-5 single-top">	
						<ul id="etalage">
							<li>
								<a href="/${book.url}">
									<img class="etalage_thumb_image img-responsive" src="<c:url value="/${book.image}"/>" alt="" >									
								</a>
							</li>
					</ul>

					</div>	
					<div class="col-md-7 single-top-in">
					<form action="${url}" method="POST">  
						<div class="single-para">
							<h4>${book.name}</h4>
							<div class="para-grid">
								<span  class="add-to">$${book.price} đ</span>
								<c:if test="${book.quantity > 0}">
							    <br>
								<input  class="hvr-shutter-in-vertical cart-to" type="submit" value="Add to Cart">
														
								</c:if>
								<c:if test="${book.quantity == 0}">
								
								<p style="color: red">Hết hàng</p>								
								</c:if>				
								<div class="clearfix"></div>
							 </div>
							<h5>${book.quantity}  items in stock</h5>
							<c:if test="${book.quantity > 0}">
								<p style="color: blue">Còn Hàng</p>								
								</c:if>
							<c:if test="${book.quantity == 0}">								
								<p style="color: red">Hết hàng</p>								
							</c:if>	
							<div class="available">
								<h6>Available Options :</h6>
								<ul>									
								<li>Quality:<input name="quantity" type="number" id="quantity" min="1" value="1" >
								<input type="hidden" value="${book.id}" name="id">
								
							</ul>
						</div>
							<p>${book.description}</p>
							
								<a href="#" class="hvr-shutter-in-vertical ">More details</a>							
						</div>
						</form>
					</div>
				<div class="clearfix"> </div>
				<div class="content-top-in">
						<div class="col-md-4 top-single">
							<div class="col-md">
								<img  src="images/pic8.jpg" alt="" />	
								<div class="top-content">
									<h5>Mascot Kitty - White</h5>
									<div class="white">
										<a href="#" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
										<p class="dollar"><span class="in-dollar">$</span><span>2</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
						<div class="col-md-4 top-single">
							<div class="col-md">
								<img  src="images/pic9.jpg" alt="" />	
								<div class="top-content">
									<h5>Mascot Kitty - White</h5>
									<div class="white">
										<a href="#" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
										<p class="dollar"><span class="in-dollar">$</span><span>2</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
						<div class="col-md-4 top-single-in">
							<div class="col-md">
								<img  src="images/pic10.jpg" alt="" />	
								<div class="top-content">
									<h5>Mascot Kitty - White</h5>
									<div class="white">
										<a href="#" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
										<p class="dollar"><span class="in-dollar">$</span><span>2</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
						
					<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="single-bottom">
						<h4>Categories</h4>
						<ul>
						<c:forEach items="${bookcate}" var="cate">
						<li><a href="/danh-muc/${cate.id}"><i> </i>${cate.name}</a></li>
						</c:forEach>
						</ul>
					</div>
					<div class="single-bottom">
						<h4>Product Categories</h4>
						<ul>
						<li><a href="#"><i> </i>feugiat(5)</a></li>
						<li><a href="#"><i> </i>Fusce (4)</a></li>
						<li><a href="#"><i> </i> feugiat (4)</a></li>
						<li><a href="#"><i> </i>Fusce (4)</a></li>
						<li><a href="#"><i> </i> feugiat(2)</a></li>
						</ul>
					</div>
					<div class="single-bottom">
						<h4>Product Categories</h4>
							<div class="product">
								<img class="img-responsive fashion" src="images/st1.jpg" alt="">
							<div class="grid-product">
								<a href="#" class="elit">Consectetuer adipiscing elit</a>
								<span class="price price-in"><small>$500.00</small> $400.00</span>
							</div>
							<div class="clearfix"> </div>
							</div>
							<div class="product">
								<img class="img-responsive fashion" src="images/st2.jpg" alt="">
							<div class="grid-product">
								<a href="#" class="elit">Consectetuer adipiscing elit</a>
								<span class="price price-in"><small>$500.00</small> $400.00</span>
							</div>
							<div class="clearfix"> </div>
							</div>
							<div class="product">
								<img class="img-responsive fashion" src="images/st3.jpg" alt="">
							<div class="grid-product">
								<a href="#" class="elit">Consectetuer adipiscing elit</a>
								<span class="price price-in"><small>$500.00</small> $400.00</span>
							</div>
							<div class="clearfix"> </div>
							</div>
				</div>
				</div>
				<div class="clearfix"> </div>
				<script type="text/javascript">
				
				$(document).ready(function(){
					//alert("helloword");
					$("#quantity").change(function(){
						$.ajax({
							type : "GET",
				            url : "${pageContext.request.contextPath}/API/quantity_product_api/"+${book.id},
				            contentType: "application/json",
				           // data : data,
				            success: function(data){					            	
				                var value = $("#quantity").val();
				                console.log(data);
				                if(value > data){
				                	alert("Số lượng còn lại không đủ");
				                	$("#quantity").val("1");
				                } 
				            }
							
						});
					});
					//////
					
					
					
					
					
					
				});
				
				</script>
		</div>
	</div>
	