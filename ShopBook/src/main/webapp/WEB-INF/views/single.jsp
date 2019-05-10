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
				
				</div>
				<div class="clearfix"> </div>
				
			<div class="card my-4">
          <h5 class="card-header">Leave a Comment:</h5>
          <div class="card-body">
            <form >
            
              <div class="form-group">
                <textarea class="form-control" rows="3" id="comment" required="required"></textarea>
              </div>
             
              <a class="btn btn-primary" id="submit" >Submit</a>
            </form>
          </div>
        </div>

        <!-- Single Comment -->
        <div class="media mb-4" id="content">
          
              
        </div>

        <!-- Comment with nested comments -->
        

      </div>	
				
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
					$("#submit").click(function(e){
					var content = $("#comment").val();
					if(content.length==0){
						 return false;
					}
					console.log(content);
					var dataContent = JSON.stringify({
						"content" : content ,
					});
					$.ajax({
						type :"GET",
						url : "${pageContext.request.contextPath}/API/check-login",
						contentType: "application/json",
						success : function(data){
							if(data==true){								
								$.ajax({
									type :"POST",
									url : "${pageContext.request.contextPath}/API/add-comment/"+${book.id},
									data : dataContent,
									contentType: "application/json",
									success : function(){
										$("#comment").val(""); //reset text trong input
										 $("#content").empty(); // cho doan van ve empty de ta select het ra
										selectUser(); // select het ra , neu k cho empty thi no se lay những gì nó hiện và cộng thêm 
										// những gì đã select ra
										e.preventDefault(); // dừng 
									}	
								});
								
							}else{								
							  location.replace("http://localhost:8080/dang-nhap");  // nếu chưa đăng nhập đến trang đăng nhập
							}
						}
					});
				            });
									
					selectUser();
					
				});
				function selectUser(){
				     $.get("${pageContext.request.contextPath}/API/All-comment/"+${book.id}, function(data){
				      $.each(data, function(key, value){
				       $("#content").append("<p>Posted on :"+value.date+"</p>"+"<img class="+"d-flex mr-3 rounded-circle"+" src="+" http://placehold.it/50x50>"+" "+"<div class="+"media-body"+">   <h5 class="+"mt-0"+">"+value.users.username+"</h5>"+value.content+"</div>");
				      
			           
				      });
				     });
				    }		
				
				</script>
		</div>
	
	