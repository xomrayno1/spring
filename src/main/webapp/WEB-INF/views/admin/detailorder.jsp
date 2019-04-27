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
                                <i class="fa fa-dashboard"></i>  <a href="#">Dashboard</a>
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
                        <h2>Chi Tiết Sản Phẩm</h2>
                        
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
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
                                <c:forEach items="${order.list}" var="ord">  
                                    <tr>
                                        <td>${detail}</td>
                                        <td>${ord.book.name}</td>
                                        <td>${ord.book.price}</td>                                 
                                        <td>${ord.quantity}</td>
                                        <td>${ord.price}</td>
                                                                                                                  
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
        
 <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
          
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">
                        <h2>Người Đặt hàng</h2>
                        
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                    <th>STT</th>								
									<th>firstname </th>
									<th>lastname </th>
									<th>Địa Chỉ</th>
									<th>SDT</th>
									
                                                                         
                                      
                                    </tr>
                                </thead>
                                <tbody>                                                              
                                    <tr>
                                        <td>1</td>
                                       <td>${order.user.firstname}</td>
                                        <td>${order.user.lastname}</td>
                                       <td>${order.user.address}</td>                               
                                        <td>${order.user.phone}</td>                                                                                                                                                        
                                    </tr>
                                   
                               
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
<a href="#"><button>Đã Xử Lý</button></a> <a href="#"><button>Chưa Xử Lý</button></a>
               
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