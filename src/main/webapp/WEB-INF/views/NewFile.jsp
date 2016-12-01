<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<div class="container">
<div class="container">
  <h2>S'enrigister</h2>
  <form class="form-horizontal"  action="register" method="POST">
    <div class="form-group">
      <label class="control-label col-sm-2" for="nom">NOM:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="nom" name="nom" >
        <span class="erreur">${erreurs['nom']}</span>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="prenom">PRENOM:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="prenom" name="prenom" >
        <span class="erreur">${erreurs['prenom']}</span>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
        <span class="erreur">${erreurs['email']}</span>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="adresse">ADRESSE:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="adresse" name="adresse" >
        <span class="erreur">${erreurs['adresse']}</span>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" name="pass">
        <span class="erreur">${erreurs['pass']}</span>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwdc">Password Confirmation:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwdc" name="passconfirm">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox"> Remember me</label>
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </form>
</div>