<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href='<spring:url value="/resources/bootstrap.min.css"></spring:url>' rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


  
    <!-- Custom CSS -->
    <link href='<spring:url value="/resources/simple-sidebar.css"></spring:url>' rel="stylesheet">
   
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title> here</title>
    <!-- Custom CSS -->
    <link href='<spring:url value="/resources/simple-sidebar.css"></spring:url>' rel="stylesheet">
    <link href='<spring:url value="/resources/bootstrap.min.css"></spring:url>' rel="stylesheet">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>DLALA</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<c:if test="${not empty successubmitproduct }">
	<div class="container">
		<div class="alert alert-succesS" role="alert">${successubmitproduct }</div>
	</div>
</c:if>
 <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        ${userfullname }
                    </a>
                </li>
                <li>
                    <a href="#achat_final">consulter mes achats</a>
                </li>
                <li>
                    <a href="#achat_encours">consulter mes achats en cours</a>
                </li>
                <li>
                    <a href="#ventes_final">consulter ses ventes </a>
                </li>
                <li>
                    <a href="#ventes_encours">consulter ses produits mis en vente </a>
                </li>
                <li>
                    <a href='<spring:url value="/produit/addproduct"></spring:url>'>ajouter un nouveau produit</a>
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
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <div class="table-responsive" id="ventes_encours"> 
              <table id="mytable" class="table table-bordred table-striped">
               <h1>Mes ventes</h1>   
                   <thead>                   
                     <th><input type="checkbox" id="checkall" /></th>
                     <th>nom</th>
                     <th>marque</th>
                     
                     <th>identité du produit</th>
                     <th>prix initial</th>
                     <th>prix actuel</th>
                    
                   </thead>
    				<tbody>
    					<div class="container ">
     						<c:forEach items="${produits_seller }" var="produit">
 								<tr>
 									<td><input type="checkbox" class="checkthis" /></td>
        							<td>${produit.nom }</td>
        							<td>${produit.marque }</td>
        							
        							<td>${produit.id }</td>
        							<td>${produit.prixinitial }</td>
        							<td>${produit.prixactuel}</td>
        							<td><a href="" data-placement="top" data-toggle="tooltip" title="Edit" <button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button>/></td>   							
      							</tr>
							</c:forEach>
						</div>
						
						  <div class="table-responsive" id="ventes_encours"> 
              <table id="mytable" class="table table-bordred table-striped">
                   <h1>Mes achats</h1>
                   <thead>                   
                     <th><input type="checkbox" id="checkall" /></th>
                     <th>nom</th>
                     <th>marque</th>
                  
                     <th>identité du produit</th>
                     <th>prix initial</th>
                     <th>prix actuel</th>
                    
                   </thead>
    				<tbody>
    					<div class="container ">
     						<c:forEach items="${produits_buy }" var="produit">
 								<tr>
 									<td><input type="checkbox" class="checkthis" /></td>
        							<td>${produit.nom }</td>
        							<td>${produit.marque }</td>
        							
        							<td>${produit.id }</td>
        							<td>${produit.prixinitial }</td>
        							<td>${produit.prixactuel}</td>
        							<td><a href="" data-placement="top" data-toggle="tooltip" title="Edit" <button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button>/></td>   							
      							</tr>
							</c:forEach>
						</div>
    
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
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>