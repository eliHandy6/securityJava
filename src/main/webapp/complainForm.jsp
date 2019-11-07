<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row">

<div>
</div>
</div>

<div class="row">

      <div class="col-sm-4">
       <label>Complainant First Name</label>
		<input class="form-control" type="text" name="fname" id="fname" required  data-parsley-pattern="^[a-zA-Z]+$" data-parsley-trigger="keyup" />	
			     
      
      </div>
      <div class="col-sm-4">
       <label> Complainant second Name</label>	
			<input class="form-control" type="text" name="lname" id="lname" required data-parsley-pattern="^[a-zA-Z]+$" data-parsley-trigger="keyup"/>
      
      </div>
      
      <div class="col-sm-4">
       <label>Complainant Reg No</label>
		<input  class="form-control" type="text" name="regno" id="regno" required pattern="[A-Za-z][0-9][0-9][//][0-9]{1,6}[//][1][0-9]" />	
      
      
      </div>
    

	</div>
	<div class="row">
		 <div class="col-sm-4">
		 <label>Date of Occurance</label>
		<input class="form-control" type="date" name="date_of_occurance" id="date_of_occurance" required />	
			
		 
           
      
      </div>
		
		<div class="col-sm-4">
		<label>Time of Occurance</label>
		<input class="form-control" type="time" name="time_of_occurance" id="time_of_occurance" required />	
			  
		
		</div>
		<div class="col-sm-4">
		<label> Place of Occurance</label>	
		<!--  <input  class="form-control"type="text" name="place_of_occurance" id="place_of_occurance" required data-parsley-pattern="^[a-zA-Z]+$" data-parsley-trigger="keyup"/>	
			-->
			<select name="place_of_occurance" onchange='check_place(this.value);'> 
				<option>pick place</option>
	   			 <option value="Hostels">Hostels</option>  
	   			 <option value="Field">Field</option>
	    		<option value="Admin">Admin</option>
	   			 <option value="others">others</option>
  			</select>
		<input type="text" name="place_of_occurance" id="place_of_occurance" style='display:none;'class="form-control" />    	  
		
		
		<script type="text/javascript">
		  function check_place(val){
			  
			  var element=document.getElementById('place_of_occurance');
			  if(val=='pick place'||val=='others')
			    element.style.display='block';
			  else  
			    element.style.display='none';
			  
		  }
		
		
		
		</script>
		</div>
		
	
	
	</div>
			  
			    
			    <label>Accused Details</label>
			       	<select name="category" onchange='check_crime(this.value);'> 
				<option>Crime Selection</option>
	   			 <option>Assault</option>  
	   			 <option value="red">Murder</option>
	    		<option value="blue">Violence</option>
	   			 <option value="others">others</option>
  			</select>
		<input type="text" name="category" id="category" style='display:none;'class="form-control" />    	  
		
		
		<script type="text/javascript">
		  function check_crime(val){
			  
			  var element=document.getElementById('category');
			  if(val=='Crime Selection'||val=='others')
			    element.style.display='block';
			  else  
			    element.style.display='none';
			  
		  }
		</script>
		</br>
			       		
			    <label>What happened max(255)</label>
			    <textarea  name="nature" data-parsley-maxlength="255" id="nature" rows="" cols=""  class="form-control" required ></textarea>	
			    
			    <input  id="submit" type="submit" value="SUBMIT" class="btn btn-success btn-block btn-margin">  	 
			      
			      
			
			
