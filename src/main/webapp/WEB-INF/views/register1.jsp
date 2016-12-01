<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Registration Form Template</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets1/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets1/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets1/css/form-elements.css">
        <link rel="stylesheet" href="assets1/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets1/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets1/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets1/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets1/ico/apple-touch-icon-57-precomposed.png">

</head>
<body>


<div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-7 text">
                            <h1><strong>Bootstrap</strong> Registration Form</h1>
                            <div class="description">
                            	<p>
	                            	This is a free responsive registration form made with Bootstrap. 
	                            	Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it as you like!
                            	</p>
                            </div>
                            <div class="top-big-link">
                            	<a class="btn btn-link-1" href="#">Button 1</a>
                            	<a class="btn btn-link-2" href="#">Button 2</a>
                            </div>
                        </div>
                        <div class="col-sm-5 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Sign up now</h3>
                            		<p>Fill in the form below to get instant access:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-pencil"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="register" method="post" class="registration-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-first-name">NOM</label>
			                        	<input type="text" name="nom" placeholder="First name..." class="form-first-name form-control" id="form-first-name">
			                        	<span class="erreur">${erreurs['nom']}</span>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-last-name">PRENOM</label>
			                        	<input type="text" name="prenom" placeholder="Last name..." class="form-last-name form-control" id="form-last-name">
			                       		<span class="erreur">${erreurs['prenom']}</span>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-email">Email</label>
			                        	<input type="text" name="email" placeholder="Email..." class="form-email form-control" id="form-email">
			                       		<span class="erreur">${erreurs['email']}</span>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-about-yourself">ADRESSE</label>
			                        	<textarea name="adresse" placeholder="About yourself..." 
			                        				class="form-about-yourself form-control" id="form-about-yourself"></textarea>
			                        	<span class="erreur">${erreurs['adresse']}</span>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-email">MOT DE PASSE</label>
			                        	<input type="password" name="pass" placeholder="Email..." class="form-email form-control" id="form-email">
			                       		<span class="erreur">${erreurs['pass']}</span>
			                        </div>
			                         <div class="form-group">
			                        	<label class="sr-only" for="form-email">CONFIRMATION DU MOT DE PASSE</label>
			                        	<input type="password" name="passconfirm" placeholder="Email..." class="form-email form-control" id="form-email">
			                       		
			                        </div>
			                        
			                        <button type="submit" class="btn">s'enrigistrer</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>

<c:if test="${not empty error }">
	<div class="alert alert-danger" role="alert">
  		<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  		<span class="sr-only">Error:</span>
  					${error}
	</div>
</c:if>
<c:if test="${not empty succes }">
	<div class="alert alert-success" role="alert">
  		<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  		<span class="sr-only"></span>
  					${succes }
</div>
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

</div>


</body>
</html>