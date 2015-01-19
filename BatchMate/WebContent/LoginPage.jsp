<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript" src="js/jquery.js"> </script>
	<script type="text/javascript" src="js/bootstrap.js"> </script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style2.css">	
	<link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.css">
</head>
<body>
<div class="container" style="width:1230px" >
 <div class="row" id="headerRow">
	 <div class="col-md-12" id="header" style="padding: 0 0 0 0">
				<div class="image">
					<img src="images/header.jpg">
				</div>
			</div>	 
 </div>
 
 <div class="row" class="loading"  >
	        <div class="col-md-9 thumbnail" style="margin-top : 15px;"  >
			
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators" style="bottom:0px">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/01.jpg" alt="...">
      
    </div>
	<div class="item">
      <img src="images/02.jpg" alt="...">
      
    </div>
    <div class="item">
      <img src="images/03.jpg" alt="...">
      
    </div>
	
	<div class="item">
      <img src="images/04.jpg" alt="...">
      
    </div>

  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <i class="fa fa-angle-double-left fa-3x" style="color:black;margin-top:200px;"></i>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <i class="fa fa-angle-double-right fa-3x" style="color:black;margin-top:200px;"></i>
    <span class="sr-only">Next</span>
  </a>

</div>
        </div>
        <div class="col-md-3 thumbnail " style="background-color:rgba(0, 82, 155, 0.71); margin-top : 15px;height:470px;">
			<div class="row">
				 
				 <img src="images/loginlogo.png" alt="..." height="120" width="240" style="margin-left:15px;">
				 <legend style="margin-left : 20px; width : 80%">Batch Login</legend>	
			</div>
			<form class="form" role="form" action="login" method="post">
           <div class="row">
			 <div class="form-group">
      <label for="inputEmail" style="margin-left : 20px; margin-top : 20px;">User Name</label></br>
     
        <input type="text" class="form-control" id="inputUsername" name="user.userName" placeholder="Username" style="margin-left : 20px; width : 80%">
     
    </div>
		   </div>
		   <div class="row">
				<div class="form-group">
      <label for="inputPassword" style="margin-left : 20px;" >Password</label> </br>
      
        <input type="password" class="form-control" id="inputPassword" name="user.userPassword" placeholder="Password" style="margin-left : 20px; width : 80%">
 
   
    </div>
		  
		   </div>
		   <div class="row">
	 <div class="form-group">
	 <div class="row">
	 <div class="col-md-4">
      <label  style="margin-left : 20px;" >Login as</label>
	  </div>
      <div class="col-md-8">
       <div class="row">
        <div class="col-md-5">
          
            <input type="radio" name="user.userType" id="userTypeRadio1" value="admin" >
            Admin
         
        </div>
        <div class="col-md-7">
          
            <input type="radio" name="user.userType" id="userTypeRadio2" value="operator" checked="">
            Operator
       
        </div>
         </div>
      </div>
    </div>
	</div>
		   </div>
		   <div class="row">
		   <div class="col-md-1" >
		   </div>
		    <div class="col-md-11" >
		   <div class="form-group">
      <div class="col-md- col-md-offset-2">
	  
          <button type="submit" class="btn btn-success " style="width: 160px;">Login</button>
      </div>
    </div>
		   </div>
		   </div>
		   </form>
        </div>
 </div>
 
 <div class="row">
 </div>
 
 
 
</div>

</body>
</html>