<%@page import="javazack.models.DataModel"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="_links.jsp" %>

</head>
<body>
<%@include file="header.jsp" %>

<hr>
<%
String message=(String)request.getAttribute("message");
DataModel data=(DataModel)request.getAttribute("from_db");


if(session.getAttribute("case_session")==null){
	response.sendRedirect("index.jsp");
	
}
else{
%>



<div class="alert alert-success">  
    <strong>Success!</strong> <%=message %> 
  </div>  

<div class="row">

	<div class="col-3">
	
	<ul>
            <li ><a href="index.jsp">Report a Case</a></li>
            <li class="active"><a href="viewCase.jsp">View Case</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">portfolio</a></li>
            <li><a href="#">Blogs</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Map</a></li>
        </ul> 
       <script type="text/javascript">
       $(document).on('click','ul li',function(){
    	   $(this).addClass('active').siblings().removeClass('active');
       })
       
       
       </script>
	
       
    </div>
    <div class="col-8">
    
    

<table class="table">
  <thead class="thead-light">
    <tr>
      <th scope="col">#</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Regno</th>
      <th scope="col">Date</th>
      <th scope="col">Time</th>
      <th scope="col">Place</th>
      <th scope="col">Nature</th>
      <th scope="col">Category</th>
      <th scope="col">Date Reported</th>
      <th></th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
    
      <th scope="row"><%=data.getId() %></th>
  
      <td><%=data.getFname() %></td>
      <td><%=data.getLname() %></td>
      <td><%=data.getRegno() %></td> 
      <td><%=data.getDate_of_occurance()%></td>
      <td><%=data.getTime_of_occurance() %></td>
      <td><%=data.getPlace_of_occurance() %></td>
      <td><%=data.getOccurance()%></td>
      <td><%=data.getCategory() %></td>
      <td><%=data.getDate_reported() %></td>
    </tr>
  </tbody>
</table>
 <%} 
session.invalidate();
 %>   
    <%@include file="footer.jsp" %>
    </div>
     </div>

</body>
</html>