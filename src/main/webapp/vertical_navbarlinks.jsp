<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <ul>
            <li class="active"><a href="index.jsp">Report a Case</a></li>
            <li><a href="viewCase.jsp">View Case</a></li>
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