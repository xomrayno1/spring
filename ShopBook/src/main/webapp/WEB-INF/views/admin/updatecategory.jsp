<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url  value="/admin/update-danh-muc" var="url"/>
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
                        <form:form action="${url}" modelAttribute="category" method="POST" >
                            <div class="form-group">
                                <label>Tên Danh Mục</label>
                                <form:input path="name" class="form-control" required="required"/>
                                <p class="help-block">Nhâp Tên Danh Mục Đầy Đủ</p>
                                <p style="color: red"><form:errors path="name"/></p>
                                <form:hidden path="id"  />
                            </div>
                            <button type="submit" class="btn btn-default">Submit Button</button>
                            <button type="reset" class="btn btn-default">Reset Button</button>                            
                        </form:form>
                        <button  class="btn btn-default"><a href="/admin/quan-ly-danh-muc">Quản Lý Danh Mục</a></button>

                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>