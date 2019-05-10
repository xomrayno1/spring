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
                        <h2>Bordered Table</h2>
                        <p style="color: red">${msg}</p>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Giá</th>
                                        <th>Tác Giả</th>
                                        <th>ReleaseDate</th>
                                        <th>Ngôn ngữ</th>
                                        <th>NXB</th>
                                        <th>Số lượng</th>
                                        <th>Link</th>
                                        <th>Active</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${book}" var="book">  
                                    <tr>
                                        <td>${book.id}</td>
                                        <td>${book.name}</td>
                                        <td>${book.price} đ</td>
                                        <td>${book.author}</td>
                                        <td>${book.releaseDate}</td>
                                        <td>${book.language}</td>
                                        <td>${book.publisher}</td>
                                        <td>${book.quantity}</td>                                        
                                        <td><a href="/${book.url}">URL</a></td>
                                         <td>#</td> 
                                        <td>
                                        <button><a href="/admin/update-book/${book.id}">Update</a></button></td>
                                        
                                    </tr>
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