<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<%@include file="_links.jsp"  %>
<title>LOGIN PAGE</title>
</head>
<body>
<%@include file="header.jsp" %>

<div class="row">
	<div class="col-md-3">
	

	</div>
	
	<div class="col-md-6 ">
	
	<div class="jumbotron">
	<form action="loginServlet">
	
	<h3 class="text-center">Log In Here</h3>
	
	<label>Enter your ID</label></br>
	<input type="text" name="id" class="form-control" required data-parsley-trigger="keyup"/>
	
	<label>Enter your Password</label></br>
	<input type="password" name="password" class="form-control" required data-parsley-trigger="keyup"/>
	
	<input type="submit" value="LogIn" class="btn btn-success btn-block btn-margin">
	
	</form>
	 
	
	
	</div>
	
	
	
	</div>
  
  <div class="col-md-3">
  
  
  </div>

</div>

<%@include file="footer.jsp" %>


</form>



</body>
</html>