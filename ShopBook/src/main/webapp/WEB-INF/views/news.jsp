<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>	

<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    

    
    <div class="row">

      <!-- Post Content Column -->
      <div class="col-lg-8">

        <!-- Preview Image -->
        <img class="img-fluid rounded" src='<c:url value="/${news.img}"></c:url>' alt="">

        <hr>

        <!-- Date/Time -->
        <p>Posted on ${news.date}</p>

        <hr>

        <!-- Post Content -->
        <h2  >${news.header}</h2>
        

        <p style="color: black;">${news.content}</p>


        <hr>

        <!-- Comments Form -->
        
        <!-- Single Comment -->
        
        
        

        <!-- Comment with nested comments -->
       

      </div>

      <!-- Sidebar Widgets Column -->


    </div>
    <!-- /.row -->

  </div>