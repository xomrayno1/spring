<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url  value="/admin/add-book" var="url"/>
<div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Forms
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Forms
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">
  
                        <p style="color :red">${msg}</p>
                        <form:form action="${url}" modelAttribute="book" method="POST" enctype="multipart/form-data"> 

                            <div class="form-group">
                                <label>Tên Sản Phẩm</label>
                                <form:input path="name" class="form-control" required="required"/>
                                <p class="help-block">Nhâp Tên Sản Phẩm Đầy Đủ</p>
                            </div>

                            <div class="form-group">
                                <label>Nhập Giá Sản Phẩm</label>
                  
                                <form:input path="price" class="form-control" required="required"/>
                            </div>
                            <div class="form-group">
                                <label>Nhập Nhà Xuất Bản</label>
                                
                                <form:input path="publisher" class="form-control" required="required"/>
                            </div>
                             <div class="form-group">
                                <label>Nhập Tên Tác giả</label>
                                
                                <form:input path="author" class="form-control" required="required"/>
                            </div>

                            <div class="form-group">
                                <label>Static Control</label>
                                <p class="form-control-static">email@example.com</p>
                            </div>

                            <div class="form-group">
                                <label>Ảnh Sản Phẩm</label>
                               <form:input path="multipart" type="file" required="required"/>
                            </div>

                            <div class="form-group">
                                <label>Thông Tin Thêm :</label>
                               
                                <form:textarea  class="form-control" path="description" required="required"/>
                            </div>
                            <div class="form-group">
                                <label>Số Lượng Có:</label>
                               
                                <form:input  class="form-control" type="number"  min ="0" path="quantity" required="required"/>
                            </div>
                            <div class="form-group">
                                <label>Ngôn ngữ:</label>
                               
                                <form:input  class="form-control"  path="language" required="required"/>
                            </div>
                             <div class="form-group">
                                <label>Danh Mục:</label>
                               
                                <form:select path="bookCategory" class="form-control">
                                <c:forEach items="${listCategory}" var="bookcate"> 
                                <form:option value="${bookcate.id}">${bookcate.name}</form:option> 
                                </c:forEach>
                                </form:select>
                            </div>
                      


 
                            <button type="submit" class="btn btn-default">Submit Button</button>
                            <button type="reset" class="btn btn-default">Reset Button</button>
                            

                        </form:form>
                        <button  class="btn btn-default"><a href="/admin/book">Book Table</a></button>

                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>