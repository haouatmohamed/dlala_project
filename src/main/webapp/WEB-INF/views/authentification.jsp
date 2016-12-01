<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link href='<spring:url value="/resources/homepage.css"></spring:url>' rel="stylesheet">
<title>DLALA</title>
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href='<spring:url value="/resources/assets/bootstrap/css/bootstrap.min.css"></spring:url>'>
        <link rel="stylesheet" href='<spring:url value="/resources/assets/font-awesome/css/font-awesome.min.css"></spring:url>'>
		<link rel="stylesheet" href='<spring:url value="/resources/assets/css/form-elements.css"></spring:url>'>
        <link rel="stylesheet" href='<spring:url value="/resources/assets/css/style.css"></spring:url>'>

        
        <link rel="shortcut icon" href='<spring:url value="/resources/assets/ico/favicon.png"></spring:url>'>
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href='<spring:url value="/resources/assets/ico/apple-touch-icon-144-precomposed.png"></spring:url>'>
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href='<spring:url value="/resources/assets/ico/apple-touch-icon-114-precomposed.png"></spring:url>'>
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href='<spring:url value="/resources/assets/ico/apple-touch-icon-72-precomposed.png"></spring:url>'>
        <link rel="apple-touch-icon-precomposed" href='<spring:url value="/resources/assets/ico/apple-touch-icon-57-precomposed.png"></spring:url>'>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body background='<spring:url value="/resources/assets/img/backgrounds/1.jpg"></spring:url>'>
<jsp:include page="header.jsp"></jsp:include>
	<c:if test="${not empty erreur }">
       		<div class="alert alert-danger">
				<h1>${erreur }</h1>
			</div>
		</c:if>
	
 <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>s'authentifier à notre <strong>DLALA</strong></strong></h1>
                            <div class="description">
                            	<p>
	                            	
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3></h3>
                            		<p>entrer votre email et mot de passe</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
                            <spring:url value="/user/authentification" var="authURL"></spring:url>
                            	<form:form action="${authURL }" method="POST" cssClass="login-form">
			                    
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">email</label>
			                    		
			                        	<input type="text" name="email" placeholder="Username..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="pass" placeholder="Password..." class="form-password form-control" id="form-password">
			                        </div>
			                        <button type="submit" class="btn">s'authentifier</button>
			                    </form>
			                    </form:form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>... ou s'authentifier en utilisant :</h3>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-1 btn-link-1-facebook" href="#">
	                        		<i class="fa fa-facebook"></i> Facebook
	                        	</a>
	                        	<a class="btn btn-link-1 btn-link-1-twitter" href="#">
	                        		<i class="fa fa-twitter"></i> Twitter
	                        	</a>
	                        	<a class="btn btn-link-1 btn-link-1-google-plus" href="#">
	                        		<i class="fa fa-google-plus"></i> Google Plus
	                        	</a>
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src='<spring:url value="/resources/assets/js/jquery-1.11.1.min.js"></spring:url>'></script>
        <script src='<spring:url value="/resources/assets/bootstrap/js/bootstrap.min.js"></spring:url>'></script>
        <script src='<spring:url value="/resources/assets/js/jquery.backstretch.min.js"></spring:url>'></script>
        <script src='<spring:url value="/resources/assets/js/scripts.js"></spring:url>'></script>
        
<br1/>
<br1/>
<br1/>
<br1/>
<br1/>
<br1/>
<br1/>
<br1/>
<br1/>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>