<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url  value="/admin/add-user" var="url"/>
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
                        <form:form action="${url}" modelAttribute="user" method="POST"> 

                            <div class="form-group">
                                <label>FirstName :</label>
                                <form:input path="firstname" class="form-control" required="required"/>
                                <p class="help-block">Nhâp Đầy Đủ </p>
                            </div>
                            <div class="form-group">
                                <label>LastName :</label>
                                <form:input path="lastname" class="form-control" required="required"/>
                                <p class="help-block">Nhâp Đầy Đủ </p>
                            </div>

                            <div class="form-group">
                                <label>Nhập Tài Khoản</label>
                  
                                <form:input path="username" class="form-control" required="required"/>
                                <p style="color: red"><form:errors  path="username"/></p>
                            </div>
                            <div class="form-group">
                                <label>Nhập Mật Khẩu</label>
                  
                                <form:password path="password" class="form-control" required="required"/>
                                <p style="color: red"><form:errors  path="password"/></p>
                            </div>
                            <div class="form-group">
                                <label>Vai Trò:</label>
                                <form:select path="role" class="form-control">
                                 <form:option value="ROLE_USER">ROLE_USER</form:option>
                                 <form:option value="ROLE_ADMIN">ROLE_ADMIN</form:option>
                                </form:select>
                            </div>
                            
      
                            <button type="submit" class="btn btn-default">Submit Button</button>
                            <button type="reset" class="btn btn-default">Reset Button</button>
                             

                        </form:form>
                            <button  class="btn btn-default"><a href="/admin/user">User Table</a></button>
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->


        </div>