<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="source/bootstrap.min.css" rel="stylesheet">

  <link href="source/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href='<spring:url value="/resources/simple-sidebar.css"></spring:url>' rel="stylesheet">
  
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title> DLALA</title>
</head>
<body>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="profile">
                        ${userfullname }
                    </a>
                </li>
                <li>
                    <a href="#all users">afficher tous les utilisateurs </a>
                </li>
                 <li>
                    <a href="#modify infos">afficher tous les produits</a>
                </li>
                <li>
                    <a href="#">afficher toutes les marques</a>
                </li>
                
               
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        
                        
                        <
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">voir  Menu</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>

<br/>
<br/>
<br/>
<br/>

               <div class="table-responsive" id="all users"> 
              <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>                   
                     <th><input type="checkbox" id="checkall" /></th>
                     <th>nome</th>
                     <th>prenom</th>
                     <th>email</th>
                     <th>adresse</th>
                     <th>privilege</th>
                     <th>Edit</th>                      
                      <th>Delete</th>
                   </thead>
    				<tbody>
    					<div class="container ">
     						<c:forEach items="${users }" var="user">
 								<tr>
 									<td><input type="checkbox" class="checkthis" /></td>
        							<td>${user.nom }</td>
        							<td>${user.prenom }</td>
        							<td>${user.email }</td>
        							<td>${user.adresse }</td>
        							<td>${user.privilege }</td>
        							<td><a href="" data-placement="top" data-toggle="tooltip" title="Edit" <button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button>/></td>
    								<td><a href='<spring:url value="/user/supprimer?email=${user.email }"></spring:url>' data-placement="top" data-toggle="tooltip" title="Delete" <button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button>/></td>
      							</tr>
							</c:forEach>
						</div>
    
    				</tbody>
 <!-- jQuery -->
    <script src='<spring:url value="/resources/js/jquery.js"></spring:url>'></script>

    <!-- Bootstrap Core JavaScript -->
    <script src='<spring:url value="/resources/js/bootstrap.min.js"></spring:url>'></script>
	
    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
    
</body>
</html>