<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<%@include file="_links.jsp" %>
	<title>Side Navigation Bar</title>
	<link rel="stylesheet" href="VerticalNav.css">
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
</head>
<body>
<%@include file="header.jsp" %>
<hr>
<div class="row">

	<div class="col-3">
	
	<%@include file="vertical_navbarlinks.jsp" %>
	
       
    </div>
   

<div class="col-7">

   <form id="validate_form" action="Inputs_controller" method="post"  > 

			<%@include file="complainForm.jsp" %>

	  </form>
	<script >

	$(document).ready(function(){
  	$('#validate_form').parsley();
	});
	</script>
	
	

<%@include file="footer.jsp" %>

</div>
</div>






</body>
</html>