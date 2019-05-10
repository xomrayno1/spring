<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
    

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/admin/home">SB Admin</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                
             <security:authorize access="hasRole('ADMIN')"> 
             <security:authentication property="principal" var="admin"/>    
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> ${admin.username} <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="/dang-xuat"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
                </security:authorize>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="/admin/home"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-bar-chart-o"></i> Thống Kê</a>
                    </li>
                    <li>
                        <a href="/admin/book"><i class="fa fa-fw fa-table"></i>Quản Lý Book </a>
                    </li>
                     <li>
                        <a href="/admin/user"><i class="fa fa-fw fa-table"></i>Quản Lý User </a>
                    </li>
                     <li>
                        <a href="/admin/quan-ly-danh-muc"><i class="fa fa-fw fa-table" title="Đang Phát Triển"></i>Quản Lý  Danh Mục</a>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-fw fa-table" title="Đang Phát Triển"></i>Quản Lý Bài Viết</a>
                    </li>
                     <li>
                        <a href="/admin/quan-ly-banner"><i class="fa fa-fw fa-table" title="Đang Phát Triển"></i>Quản Lý Banner</a>
                    </li>
                    <li>
                        <a href="/admin/them-user"><i class="fa fa-fw fa-edit"></i>Thêm User</a>
                    </li>
                    <li>
                        <a href="/admin/them-book"><i class="fa fa-fw fa-edit"></i>Thêm Book</a>
                    </li>
                    <li>
                        <a href="/admin/them-danh-muc"><i class="fa fa-fw fa-edit" title="Đang Phát Triển"></i>Thêm Category</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-edit" title="Đang Phát Triển"></i>Thêm Banner</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-edit" title="Đang Phát Triển"></i>Tạo Bài Viết</a>
                    </li>
                    
                    
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Orders <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="/admin/order-no-process">Chưa Xử Lý</a>
                            </li>
                            <li>
                                <a href="/admin/order-complete-process">Đã Xử Lý</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-file"></i> Thống Kê Doanh Thu</a>
                    </li>
                    <li>
                        <a href="index-rtl.html"><i class="fa fa-fw fa-dashboard"></i> RTL Dashboard</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>