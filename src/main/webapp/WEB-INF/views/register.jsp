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
        <title>DLALA</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href='<spring:url value="/resources/assets1/bootstrap/css/bootstrap.min.css"></spring:url>'>
        <link rel="stylesheet" href='<spring:url value="/resources/assets1/font-awesome/css/font-awesome.min.css"></spring:url>'>
		<link rel="stylesheet" href='<spring:url value="/resources/assets1/css/form-elements.css"></spring:url>'>
        <link rel="stylesheet" href='<spring:url value="/resources/assets1/css/style.css"></spring:url>'>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href='<spring:url value="/resources/assets1/ico/favicon.png"></spring:url>'>
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href='<spring:url value="/resources/assets1/ico/apple-touch-icon-144-precomposed.png"></spring:url>'>
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href='<spring:url value="/resources/assets1/ico/apple-touch-icon-114-precomposed.png"></spring:url>'>
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href='<spring:url value="/resources/assets1/ico/apple-touch-icon-72-precomposed.png"></spring:url>'>
        <link rel="apple-touch-icon-precomposed" href='<spring:url value="/resources/assets1/ico/apple-touch-icon-57-precomposed.png"></spring:url>'>
</head>
<body background='<spring:url value="/resources/assets1/img/backgrounds/1.jpg"></spring:url>'>
<jsp:include page="header.jsp"></jsp:include>
 <c:if test="${not empty error }">
	<div class="container">
		<div class="alert alert-danger" role="alert">
  			<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  			<span class="sr-only">Error:</span>
  					${error}
		</div>
	</div>	
</c:if>
<div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-7 text">
                            <h1><strong>s'enregistrer à DLALA</strong> </h1>
                            <div class="description">
                            	<p>
	                            	DLALA est une application web où vous pouvez acheter ou vendre vos produits aux enchères 
                            	</p>
                            </div>
                            <div class="top-big-link">
                            	<a class="btn btn-link-1" href="home">page d'acceuil</a>
                            	
                            </div>
                        </div>
                        <div class="col-sm-5 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>s'enregitrer </h3>
                            		<p>veillez remplir tout le formulaire 
                            		
                            		</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-pencil"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
                            <spring:url value="/user/registring" var="regURL"></spring:url>
                            	<form:form action="${regURL }" method="POST" modelAttribute="user" cssClass="registration-form">
			                    
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-first-name">NOM</label>
			                    		<form:input path="nom" cssClass="form-first-name form-control" placeholder="NOM" id="form-first-name"/>
			                        	<form:errors path="nom" cssClass="erreur"></form:errors>
			                        	
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-last-name">PRENOM</label>
			                        	<form:input path="prenom" cssClass="form-last-name form-control" placeholder="PRENOM" id="form-last-name"/>
			                        	<form:errors path="prenom" cssClass="erreur"></form:errors>
			                        	
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-email">Email</label>
			                        	<form:input path="email" cssClass="form-email form-control" placeholder="Email" id="form-email"/>
			                        	<form:errors path="email" cssClass="erreur"></form:errors>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-about-yourself">ADRESSE</label>
			                        	<form:textarea path="adresse" cssClass="" placeholder="votre adresse..." id="form-about-yourself" />
			                        	<form:errors path="adresse" cssClass="erreur"></form:errors>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-email">MOT DE PASSE</label>
			                        	<form:password path="password" cssClass="form-email form-control" placeholder="mot de passe..." id="form-email"/>
			                        	<form:errors path="password" cssClass="erreur"></form:errors>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-email">CONFIRMATION</label>
			                        	<input type="password" name="passconfirm" placeholder="confirmation..." class="form-email form-control" id="form-email">
			                        	
			                        </div>
			                        <button type="submit" class="btn">s'enrigistrer!</button>
			                    
			                    </form:form>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
       
<c:if test="${not empty succes }">
	<div class="alert alert-success" role="alert">
  		<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  		<span class="sr-only"></span>
  					${succes }
</div>
<!--
</c:if>
<c:if test="${not empty user }">
	<div class="container">
  <h2>vos informations s</h2>
              
  <table class="table">
    <thead>
      <tr>
        <th></th>
        <th></th>
       
      </tr>
    </thead>
    <tbody>
      <tr class="success">
        <td>NOM</td>
        <td>${user.nom }</td>
        
      </tr>
      <tr class="success">
        <td>PRENOM</td>
        <td>${user.prenom }</td>
        
      </tr>
      <tr class="success">
        <td>emai</td>
        <td>${user.email }</td>
        
      </tr>
      <tr class="success">
        <td>adresse</td>
        <td>${user.adresse }</td>
        
      </tr>
       <tr class="success">
        <td>mot de passe </td>
        <td>${user.password }</td>
        
      </tr>
      
    </tbody>
  </table>
</div>
<div class="btn-group">
  <button type="button" href="home"class="btn btn-success">retour à la page d'acceuil</button>
  <button type="button" href="profile" class="btn btn-info">voir le profil</button>
  </div>
</c:if>
-->

</div>


        <!-- Javascript -->
        <script src='<spring:url value="/resources/assets1/js/jquery-1.11.1.min.js"></spring:url>'></script>
        <script src='<spring:url value="/resources/assets1/bootstrap/js/bootstrap.min.js"></spring:url>'></script>
        <script src='<spring:url value="/resources/assets1/js/jquery.backstretch.min.js"></spring:url>'></script>
        <script src='<spring:url value="/resources/assets1/js/retina-1.1.0.min.js"></spring:url>'></script>
        <script src='<spring:url value="/resources/assets1/js/scripts.js"></spring:url>'></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
		 <![endif]-->
		 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>