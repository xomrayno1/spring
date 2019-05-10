<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



	<div class="container">
			<div class="content">
				<div class="content-top">
					<h3 class="future">Đang Phát Triển</h3>
					<div class="content-top-in">
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="single.html"><img  src="images/pi.jpg" alt="" /></a>	
								<div class="top-content">
									<h5><a href="single.html">Mascot Kitty - White</a></h5>
									<div class="white">
										<a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">ADD TO CART</a>
										<p class="dollar"><span class="in-dollar">$</span><span>2</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>

								</div>							
							</div>
						</div>
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="single.html"><img  src="images/pi1.jpg" alt="" />	</a>
								<div class="top-content">
									<h5><a href="single.html">Bite Me</a></h5>
									<div class="white">
										<a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
										<p class="dollar"><span class="in-dollar">$</span><span>3</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="single.html"><img  src="images/pi2.jpg" alt="" /></a>	
								<div class="top-content">
									<h5><a href="single.html">Little Fella</a></h5>
									<div class="white">
										<a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
										<p class="dollar"><span class="in-dollar">$</span><span>5</span><span>0</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
						<div class="col-md-3 md-col">
							<div class="col-md">
								<a href="single.html"><img  src="images/pi3.jpg" alt="" /></a>	
								<div class="top-content">
									<h5><a href="single.html">Astral Cruise</a></h5>
									<div class="white">
										<a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
										<p class="dollar"><span class="in-dollar">$</span><span>4</span><span>5</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
					<div class="clearfix"></div>
					</div>
				</div>
				<!---->
				<div class="content-middle">
					<h3 class="future">BRANDS</h3>
					<div class="content-middle-in">
					<ul id="flexiselDemo1">			
						<li><img src="images/ap.png"/></li>
						<li><img src="images/ap1.png"/></li>
						<li><img src="images/ap2.png"/></li>
						<li><img src="images/ap3.png"/></li>
					
					</ul>
            		<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo1").flexisel({
				visibleItems: 4,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		    
		});
	</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>

					</div>
				</div>
				<!---->
				<div class="content-bottom">
					<h3 class="future">LATEST</h3>
					<div class="content-bottom-in">
					<ul id="flexiselDemo2">
					<c:forEach items="${list}" var="book">  	
						<li><div class="col-md men">
								<a href="/${book.url}" class="compare-in "><img  src='<c:url value="/${book.image}"></c:url>' alt="" />
								<div class="compare in-compare">
									<span>Add to Compare</span>
									<span>Add to Whislist</span>
								</div></a>
								<div class="top-content bag">
									<h5><a href="/${book.url}">${book.name}</a></h5>
									<div class="white">
										<a href="/add-to-cart/${book.id}" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD TO CART</a>
										<p class="dollar"><span class="in-dollar">$</span><span>${book.price}</span><span>đ</span></p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div></li>
					
					</c:forEach>		
						
					
					</ul>
					<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo2").flexisel({
				visibleItems: 4,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		    
		});
	</script>
					</div>
				</div>
				
			</div>
		</div>