<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="source/bootstrap.min.css" rel="stylesheet">
<link href="css/scrolling-nav.css" rel="stylesheet">

	
<title>Insert title here</title>
</head>
<body>
 <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href='<spring:url value="/"></spring:url>'>DLALA</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a class="page-scroll" href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href='<spring:url value="/user/registring"></spring:url>'>s'enregistrer</a>
                    </li>
                    <li>
                        <a class="page-scroll" href='<spring:url value="/user/authentification"></spring:url>'>s'authentifier</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact us</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
        			<li><a href='<spring:url value="/user/admin"></spring:url>'>Espace Web Master</a></li>
        			<c:if test="${not empty userfullname }">
        			<li class="dropdown">
          				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${sessionScope.userfullname } <span class="caret"></span></a>
         				 <ul class="dropdown-menu">
           					 <li><a href='<spring:url value="/user/deconnecter"></spring:url>'>se déconnecter</a></li>
           					 <li><a href='<spring:url value="/user/profile"></spring:url>'>voir mon profil</a></li>
           			</li>
        			
        			
        			</c:if>
        			
        		</ul>
            </div>
            <!-- /.navbar-collapse -->
            
        </div>
        <!-- Footer -->
        
        
        <!-- /.container -->
    </nav>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    
     <!-- jQuery -->
    <script src='<spring:url value="/resources/js/jquery.js"></spring:url>'></script>

    <!-- Bootstrap Core JavaScript -->
    <script src='<spring:url value="/resources/js/bootstrap.min.js"></spring:url>'></script>

    <!-- Scrolling Nav JavaScript -->
    <script src='<spring:url value="/resources/js/jquery.easing.min.js"></spring:url>'></script>
    <script src='<spring:url value="/resources/js/scrolling-nav.js"></spring:url>'></script>
    


</body>
</html>