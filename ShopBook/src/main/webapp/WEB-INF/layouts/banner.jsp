<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<div class="banner-mat">
		<div class="container">
			<div class="banner">
	
				<!-- Slideshow 4 -->
			   <div class="slider">
			<ul class="rslides" id="slider1">
			
			  <c:forEach items="${banner}" var="banner">  
			  <li><a href="/news/${banner.news.url}"><img src='<c:url value="/${banner.img}"></c:url>' alt=""></a>
			  </li>
			 </c:forEach>
			  
			</ul>
		</div>

				<div class="banner-bottom">
					<div class="banner-matter">
						<p>Nhanh tay nhanh tay $9.99</p> 
						<a href="#" class="hvr-shutter-in-vertical ">Purchase</a>
					</div>
					
				<!--	<div class="purchase">
						<a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">Purchase</a>
					</div>
				-->	
				
					<div class="clearfix"></div>
				</div>
			</div>				
			<!-- //slider-->
		</div>
	</div>