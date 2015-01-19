<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/clock.js"></script>
<script type="text/javascript" src="js/glDatePicker.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="css_datatable/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/AdminHome.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style2.css">
<link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="css/clockstyle.css">
<link rel="stylesheet" type="text/css" href="styles/glDatePicker.default.css" >
<link rel="stylesheet" type="text/css" href="css_datatable/dataTables.css">
<!-- data table css start-->
</head>
<body>
	<div class="container" style="width: 1230px">
		<div class="row" id="headerRow">

   <div class="col-md-12" id="header" style="padding: 0 0 0 0">

    <div class="image">
     <img src="images/header.jpg"> <img src="images/admin.png"
      id="adminLogo"
      style="height: 20px; width: 20px; right: 50px; top: 2px">

    </div>

   </div>
   <div class="dropdown" id="adminDropdown">
    <a href="#" data-toggle="dropdown" class="dropdown-toggle"
     style="color: black">Hello Admin<b class="caret"></b></a>

    <ul class="dropdown-menu" style="min-width: 80px">
     <li><a href="#"
      style="padding-left: 10px; padding-right: 10px"><i
       class="fa fa-pencil fa-fw"></i>&nbsp;Profile</a></li>
     <li class="divider" style="margin: 0 0 0 0"></li>
     <li><a href="#"
      style="padding-left: 10px; padding-right: 10px"><i
       class="fa fa-sign-out fa-fw"></i>&nbsp;SignOut</a></li>

    </ul>

   </div>
  </div>
		<div class="row" id="centerRow">
			<div class="col-md-2 thumbnail text-center" id="manageJobPanel">

				<div class="panel-group" id="accordion" role="tablist"
					aria-multiselectable="true">
					<div class="panel panel-default" id="pan"
						style="background-color: white;">
						<div data-toggle="collapse" data-parent="#accordion"
							href="#collapseOne" aria-expanded="true"
							aria-controls="collapseOne" class="panel-heading" role="tab"
							id="headingOne"
							style="height: 40px; width: 200px; padding-left: 0px;">
							<h4 class="panel-title" style="width: 160px; float: left;">
								<strong> Manage Batch Jobs</strong>
							</h4>
							<img alt="" src="images/minus.png" id="img"
								style="height: 17px; width: 17px; float: left">
						</div>

						<div id="collapseOne" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body" style="background-color: white;">
								<div id="jobNames">
									<div class="row col-md-offset-1">
									
										<div class="col-md-12" id="panel1" >
											
											<a href="#addnewjob" class="btn btn-primary"  data-toggle="modal">Add New Job</a><br>
											<a href="#secondPageModal" id="edit" class="btn btn-primary" >Edit Job</a><br>
											<a href="#deletejob" class="btn btn-primary" data-toggle="modal">Delete Job</a><br>
										</div>
									
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="panel-group" id="accordion2" role="tablist"
					aria-multiselectable="true">
					<div class="panel panel-default" id="pan2"
						style="background-color: ivory;">
						<div data-toggle="collapse" data-parent="#accordion2"
							href="#collapseTwo" aria-expanded="false"
							aria-controls="collapseTwo" class="panel-heading collapsed"
							role="tab" id="headingTwo"
							style="height: 40px; width: 200px; padding-left: 0px;">
							<h4 class="panel-title" style="width: 160px; float: left;">
								<strong> Manage Users</strong>
							</h4>
							<img alt="" src="images/plus.png" id="img2"
								style="height: 17px; width: 17px; float: left">
						</div>

						<div id="collapseTwo" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body" style="background-color: white;">
								<div id="jobNames">
									<div class="row col-md-offset-1">
										<div id="panel2" class="col-md-12">
										<a  href="ListUser.jsp" class="btn btn-primary">List User</a><br>	
										<a  href="#adduser" class="btn btn-primary" data-toggle="modal">Add New User</a><br>
										<a  href="#deleteuser" class="btn btn-primary" data-toggle="modal">Delete User</a><br>
										
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-8 thumbnail" id="manageJobDescriptionPanel">
				<div class="panel panel-default col-md-offset-4"
					style="width: 200px">
					<h4 class="text-center">
						<strong>List Of Batch Jobs</strong>
					</h4>
				</div>
				<div id="show_datatable" class="panel panel-default">
					
				</div>
			</div>

			<div class="col-md-2 thumbnail text-center pull-right"
				id="widgetArea">

				<div class="panel panel-default"
					style="background-color: black; margin-top: 60px;">
					<ul class="clockList">
						<li id="hours" style="color: white"></li>
						<li style="color: white">:</li>
						<li id="min" style="color: white"></li>
						<li style="color: white">:</li>
						<li id="sec" style="color: white"></li>
					</ul>
				</div>
				<div gldp-el = "mydate" id="my" ></div>
				
			</div>
		</div>
	</div>

<!--  Start Modal -->

	<!-- modals  Add new Job -->
<div class="modal fade" id="addnewjob" >
    <div class="modal-dialog" Style="margin: 20%, 40%,30%,40%;">
        <div class="modal-content">
            <div class="modal-header" style="text-align:center;">
            	<button type="button" style="float: right;" class="glyphicon" data-dismiss="modal" aria-hidden="true">&times;</button>
            	<h4 class="modal-title" id="myModalLabel">Add New Batch Job</h4>
            </div>
            <div class="modal-body">
               
               <div class="row">
                    <form role="form">
               	<div class="col-md-6">
	               		<div class="form-group">
					    <label for="exampleInputEmail1">Job Title</label> 
					    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Job Title"> 
					  </div>
					  <div class="form-group">
					    <label for="exampleInputPassword1">Preffered Station</label>
					    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Preffered Stations">
				  </div>
              	</div>
                <div class="col-md-6">
                
                	<div class="form-group">
					    <label for="exampleInputEmail1">Expected Start Time</label> 
					    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Expected Start Time"> 
					  </div>
					  <div class="form-group">
					    <label for="exampleInputPassword1">Description</label>
					    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Description">
               	 </div>
                </div>
                
                    <div class="row"><div class="col-md-8" Style="margin-left:15px" >
                	<div class="form-group">
					    <label for="exampleInputPassword1">Comment & other Information</label>
					    
					    <textarea class="form-control" rows="3" class="form-control"></textarea>
               	 	</div></div>
               	 	</div>
              <button type="button" class="btn btn-default" data-dismiss="modal" Style=" float: right; margin-right:10px; ">Cancel</button> 	
              <button type="button" class="btn btn-primary" Style=" float: right; margin-right: 5px">Save changes</button>
              
				</form>                
                
            </div>
        <!--     <div class="modal-footer" style="margin-top: 0px;  padding-top: 19px; padding-bottom: 11px;"> 
            	<button type="button" class="btn btn-primary">Save changes</button>
            	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            
        </div>  -->
    </div>
  </div>
</div></div>

<!-- Delete job Modal -->
	<div class="modal fade" id="deletejob" >
    <div class="modal-dialog" Style="margin: 20%, 40%,30%,40%;">
        <div class="modal-content" style=" width: 400px;height: 202px; margin-left: 150px;">
            <div class="modal-header" >
             <button type="button" style="float: right;" class="glyphicon" data-dismiss="modal" aria-hidden="true">&times;</button>
             <h4 class="modal-title" id="myModalLabel" style=" width: 300px;padding-left: 100px;">Delete Batch Job</h4>
            </div>
            <div class="modal-body">
               
                <form action="#">
                 <div class="check" style="padding-left: 10px;">
                  <img src="images/warning.jpg"/>&nbsp;&nbsp;&nbsp; <b>Do you really want to Delete this job?</b>
                </div>
            </div>
            <div class="modal-footer" style="width:395px; padding-top:10px;"> 
             <button type="button" class="btn btn-primary" style="float:left;margin-left:120px;">Delete</button>
             <button type="button" class="btn btn-default" style="float:left;" data-dismiss="modal">Cancel</button>
             </form>
        </div>
    </div>
  </div>
</div>
<!-- Add new user -->
<div class="modal fade" id="adduser" >
    <div class="modal-dialog" style="margin: 119px auto auto 360px;">
        <div class="modal-content" style=" width: 650px;height: 279px;">
            <div class="modal-header">
             	<button type="button" style="float: right;" class="glyphicon" data-dismiss="modal" aria-hidden="true">&times;</button>
            	<h4 class="modal-title" id="myModalLabel" style="font-family:georgia,serif;padding-left: 240px;">Add New User</h4>
            </div>
            <div class="modal-body">
               <form role="form">
                <div class="col-md-6">
                  <div class="form-group">
              		<label for="">First Name</label> 
             		<input type="text" class="form-control" id="FName" placeholder="Enter First Name"> 
          	      </div>
          	      <div class="form-group">
            	   <label for="">Last Name</label>
             	   <input type="text" class="form-control" id="LName" placeholder="Enter Last Name">
          	      </div>
                </div>
               <div class="col-md-6">                
                 <div class="form-group">
                   <label for="">UserId</label> 
                   <input type="text" class="form-control" id="UserId" placeholder="Enter UserId"> 
                 </div>
                 <div class="form-group">
                   <label for="select" class="control-label">Select User Type</label>
                   <select class="form-control" id="select">
                    <option>Admin</option>
                    <option>Operator</option>             
                   </select>
                 </div>
        	   </div>  
                  <button type="button" class="btn btn-default" data-dismiss="modal" Style=" float: right; margin-right:10px; ">Cancel</button> 	
                  <button type="button" class="btn btn-primary" Style=" float: right; margin-right: 5px">Create</button>
               </form>
               </div>  
                  <!--   <div class="modal-footer" style="margin-top:150px;"> 
                   <button type="button" class="btn btn-primary">Save changes</button>
                   <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>   -->
    
             
             
        </div>
    </div>
</div>

<!--   Delete User   -->
<div  class="modal fade" id="deleteuser"  >
    <div class="modal-dialog" Style="margin: 20%, 40%,30%,40%;">
        <div class="modal-content" style=" width: 400px;height: 202px; margin-left: 150px;">
            <div class="modal-header" >
             <button type="button" style="float: right;" class="glyphicon" data-dismiss="modal" aria-hidden="true">&times;</button>
             <h4 class="modal-title" id="myModalLabel" style=" width: 300px;padding-left: 100px;">Delete User</h4>
            </div>
            <div class="modal-body">
               
                <form action="#">
                 <div class="check" style="padding-left: 10px;">
                  <img src="images/warning.jpg"/>&nbsp;&nbsp;&nbsp; <b>Do you really want to delete this User?</b>
                </div>
            
            <div class="modal-footer" style="width:395px; padding-top:10px;"> 
             <button type="button" class="btn btn-primary" style="float:left;margin-left:120px;">Delete</button>
             <button type="button" class="btn btn-default" style="float:left;" data-dismiss="modal">Cancel</button>
            </div>
             </form>
        </div>
    </div>
  </div>
</div>
<!-- remote modal -->
<div class="modal fade" id="secondPageModal" tabindex="-1" role="dialog" aria-labelledby="remoteModalLabel" >
	<div class="modal-dialog">
		 <div class="modal-content">
            <div class="modal-header" style="text-align:center;">
            	<button type="button" style="float: right;" class="glyphicon" data-dismiss="modal" aria-hidden="true">&times;</button>
            	<h4 class="modal-title" id="myModalLabel">Edit Batch Job</h4>
            </div>
            <div class="modal-body">
               
               <div class="row">
                    <form role="form">
               	<div class="col-md-6">
	               		<div class="form-group">
					    <label for="exampleInputEmail1">Job Title</label> 
					    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Job Title"> 
					  </div>
					  <div class="form-group">
					    <label for="exampleInputPassword1">Preffered Stations</label>
					    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Preffered Stations">
				  </div>
              	</div>
                <div class="col-md-6">
                
                	<div class="form-group">
					    <label for="exampleInputEmail1">Expected Start Time</label> 
					    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Expected Start Time"> 
					  </div>
					  <div class="form-group">
					    <label for="exampleInputPassword1">Description</label>
					    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Description">
               	 </div>
                </div>
                
                    <div class="row"><div class="col-md-8" Style="margin-left:15px" >
                	<div class="form-group">
					    <label for="exampleInputPassword1">Comment & other Information</label>
					    
					    <textarea class="form-control" rows="3" class="form-control"></textarea>
               	 	</div></div>
               	 	</div>
              <button type="button" class="btn btn-default" data-dismiss="modal" Style=" float: right; margin-right:10px; ">Cancel</button> 	
              <button type="button" class="btn btn-primary" Style=" float: right; margin-right: 5px">Save changes</button>
              
				</form>                
                
            </div> 
       
        
              
        
    </div>
  </div>
		
	
	</div>
</div>
<!--  end Modal -->
<script>
$(document).ready(function(){
	$("#my").glDatePicker({
		showAlways : true,
		cssName : 'default',
		allowMonthSelect : true,
		allowYearSelect : true,
		selectableDateRange : [ {
			from : new Date(2014, 10, 1),
			to : new Date()
		},

		],
	});
	
});	
</script>		
</body>
</html>