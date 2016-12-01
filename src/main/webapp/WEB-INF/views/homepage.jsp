<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<title>DLALA</title>
	<link href='<spring:url value="resources/bootstrap.min.css"></spring:url>' rel="stylesheet">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  
  

    <!-- Custom CSS -->
    <link href='<spring:url value="resources/shop-homepage.css"></spring:url>' rel="stylesheet">
</head>		
<body>
 	<jsp:include page="header.jsp"></jsp:include>
 	<c:if test="${not empty alert }">
 	<div class="alert alert-danger" role="alert">${alert }</div>
 	</c:if>
 	<c:if test="${not empty autherror }">
 	<div class="alert alert-danger" role="alert">${autherror }</div>
 	</c:if>
 	
 	
 	
    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Shop Name</p>
                <div class="list-group">
                    <a href="#" class="list-group-item">s'authentifier 1</a>
                    <a href="#" class="list-group-item">espace web master</a>
                    <a href="#" class="list-group-item">Contact</a>
                </div>
            </div>

            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src='<spring:url value="/resources/1.jpg"></spring:url>' alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src='<spring:url value="/resources/2.jpg"></spring:url>' alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src='<spring:url value="/resources/3.jpg"></spring:url>' alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>

                 
                
		
					<div class="row">
						<c:forEach items="${ produits}" var="produit">
							<div class="col-sm-4 col-lg-4 col-md-4">
                       			 <div class="thumbnail">
                            		<img src='<spring:url value="/resources/11.jpg"></spring:url>' alt="">
                            		<div class="caption">
                            		<h4><a href='<spring:url value="/produit/${produit.id }"></spring:url>'>${produit.nom }</a></h4>
                            			<c:choose>
   									 		<c:when test="${ produit.prixactuel==0}">
       											 <h5 class="pull-right">${produit.prixinitial}DH</h5>
    										</c:when>
    										<c:otherwise>
        										<h5 class="pull-right">${produit.prixactuel}DH</h5>
    										</c:otherwise>
										</c:choose>
                                		
                                		
                                				
                                
                            		</div>
                            
                       			 </div>
                    		</div>
					
						</c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src='<spring:url value="/resources/js/jquery.js"></spring:url>'></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src='<spring:url value="/resources/js/bootstrap.min.js"></spring:url>'></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>