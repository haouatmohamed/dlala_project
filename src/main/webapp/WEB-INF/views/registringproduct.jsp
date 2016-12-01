<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
     <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script><link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  
<meta http-equiv="Content-Type" content="text/html">
<title>DLALA</title>
</head>
<body background='<spring:url value="/resources/assets1/img/backgrounds/1.jpg"></spring:url>'>
<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
  <h2>saisir les infos de votre produit</h2>
  <spring:url value="/produit/addproduct" var="proURL"></spring:url>
  <form:form action="${proURL }" method="POST" modelAttribute="produit">
  
    <div class="form-group">
      <label for="productname">NOM DU PRODUIT</label>
      <form:input path="nom" cssClass="form-control"  id="productname"/>
      <form:errors path="nom" cssClass="errors"></form:errors>
     
    </div>
    <div class="form-group">
      <label for="marque">MARQUE DU PRODUIT</label>
      <form:input path="marque" cssClass="form-control" id="marque"/>
      <form:errors path="marque" cssClass="errors"></form:errors>
      
    </div>
    <div class="form-group">
      <label for="prix">PRIX INITIAL</label>
      <form:input path="prixinitial" cssClass="form-control" id="prix"/>
      <form:errors path="prixinitial"></form:errors>
    </div>
    <div class="form-group">
      <label for="jrs_mise">NOMBRE DE JOURS DE MISES</label>
      <form:input path="joursmise" cssClass="form-control" id="jrs_mise"/>
      <form:errors path="joursmise" cssClass="errors"></form:errors>
    </div>
 	  	
    
    <button type="submit" class="btn btn-default">Submit</button>
  
  </form:form>
</div>
<div class="alert alert-success" role="alert">
  <p>${successubmitproduct }</p>
</div>

</body>
</html>