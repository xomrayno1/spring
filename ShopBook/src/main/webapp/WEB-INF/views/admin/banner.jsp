<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


 <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Banner
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-table"></i> Tables
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">
                        <h2>Bordered Table</h2>
                        <p style="color: red">${msg}</p>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                             
                           
                          <c:forEach items="${banner}" var="banner">
                           
                           ${banner.name}
                            <img alt="" src='<c:url value="/${banner.img}"></c:url>'>
                            
                          </c:forEach>
                            
                                
                            
                        </div>
                        <script type="text/javascript">
                        $(document).ready(function(){
                        	$('#click').click(function(){
                        		alert("click");
                        	});
                        });
                        </script>
                    </div>
                </div>
                <!-- /.row -->

               
                <!-- /.row -->

                
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <ul class="start">
					<li ><a href="#"><i></i></a></li>
					<li><span>1</span></li>
					<li class="arrow"><a href="#">2</a></li>
					<li class="arrow"><a href="#">3</a></li>
					<li class="arrow"><a href="#">4</a></li>
					<li class="arrow"><a href="#">5</a></li>
					<li ><a href="#"><i  class="next"> </i></a></li>
	      </ul>
	      
        <!-- /#page-wrapper -->