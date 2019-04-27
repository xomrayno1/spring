<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


 <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Tables
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
                        <h2>Đã Xử Lý</h2>
                        
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Thời Gian</th>
                                        <th>Tổng Hóa Đơn</th>
                                        <th>Chi Tiết</th> 
                                                                            
                                      
                                    </tr>
                                </thead>
                                <tbody>
                                <c:set value="1" var="detail" />
                                <c:forEach items="${orders}" var="ord">  
                                    <tr>
                                        <td>${detail}</td>
                                        <td>${ord.date}</td>
                                        <td>${ord.price}</td>                                 
                                        <td><a href="/admin/detail-order/${ord.id}"><img title="Xem Chi Tiết" alt="" src='<c:url value="/images/detailicon.png"/>'></a></td>
                                                                                                                  
                                    </tr>
                                    <c:set var="detail" value="${detail=detail+1}"/>
                                </c:forEach> 
                                    
                                </tbody>
                            </table>
                        </div>
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