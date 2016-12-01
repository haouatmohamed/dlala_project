<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>${id }</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container">

        <div class="row">
	<div class="col-md-9">

                <div class="thumbnail">
                    <img class="img-responsive" src="http://placehold.it/800x300" alt="">
                    <div class="caption-full">
                        <c:choose>
   							<c:when test="${ produit.prixactuel==0}">
       								<h4 class="pull-right">${produit.prixinitial}DH</h4>
    						</c:when>
    						<c:otherwise>
        							<h4 class="pull-right">${produit.prixactuel}DH</h4>
    						</c:otherwise>
						</c:choose>
                        <h4><a href="#">${produit.nom }</a>
                        </h4>
                       
                        <p>
                            <strong><p>marque : ${produit.marque }</p></strong>
                            <strong><p>identité du vendeur : ${produit.id_vendeur }</p></strong>                                                                               
                            <strong><p>identité d'acheteur potentiel : ${produit.id_acheteur }</p></strong>
                             <strong><p>posté en vente le  : ${produit.date_du_produit }</p></strong>                              
                            <strong><p>nombree de jours de mise : ${produit.joursmise }</p></strong>
                           	
                        </p>
                        <div class="container horizontal-center">
                        <spring:url value="/produit/validermise/${produit.id}" var="bidvalid"></spring:url>
                        <form action="${bidvalid }" method="post" >
                      
  							<div class="form-group">
    							<label class="sr-only" for="exampleInputAmount">MISE</label>
    							<div class="input-group">
      								<div class="input-group-addon">DH</div>
      								
      								<input type="text" class="form-control" name="montant" id="exampleInputAmount" placeholder="en dirham">
      								
      								<div class="input-group-addon">DH</div>
   								</div>
  							</div>
  							<button type="submit" class="btn btn-primary">miser</button>
						</form>
						<c:if test="${not empty err }">
 							<div class="alert alert-danger" role="alert">${err}</div>
 						</c:if>
						</div>
                    </div>
                    
                </div>
     </div>
     </div>
     </div>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  
  

</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>