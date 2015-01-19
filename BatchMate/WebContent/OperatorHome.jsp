<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/clock.js"></script>
<script type="text/javascript" src="js/OperatorHome.js"></script>
<script type="text/javascript" src="js/glDatePicker.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style2.css">
<link rel="stylesheet" type="text/css" href="css/clockstyle.css">
<link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="styles/glDatePicker.default.css">
<title>Operator Home</title>
</head>
<body>
	<div class="container" style="width: 1230px">
		
		<div class="row" id="headerRow">
			<div class="col-md-12" id="header" style="padding: 0 0 0 0">
				<div class="image">
					<img src="images/header.jpg">
				</div>
			</div>
			<div class="dropdown" id="adminDropdown">
			
				 <i class="fa fa-user fa-fw"></i>
				<a href="#" data-toggle="dropdown" class="dropdown-toggle"
					style="color: black">Hello Ankush<b class="caret"></b></a>

				<ul class="dropdown-menu" style="min-width: 80px;left:23px;">
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
		
		<!-- HeaderRow End -->
		
		<div class="row" id="centerRow">
			<div class="col-md-2 thumbnail text-center" id="jobPanel">

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
								<strong> Shift1 Job Panel</strong>
							</h4>
							<img alt="" src="images/minus.png" id="img"
								style="height: 17px; width: 17px; float: left">
						</div>

						<div id="collapseOne" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body" style="background-color: white;">
								<div id="jobNames">
									<div class="row col-md-offset-1">
										<div class="col-md-2 ">
											<%
												for (int i = 1; i < 17; i++) {
											%>
											<button type="button" class="btn btn-primary btn-xs">1st
												OHCB01</button>
											<%
												}
											%>
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
								<strong> Shift2 Job Panel</strong>
							</h4>
							<img alt="" src="images/plus.png" id="img2"
								style="height: 17px; width: 17px; float: left">
						</div>

						<div id="collapseTwo" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body" style="background-color: white;">
								<div id="jobNames">
									<div class="row col-md-offset-1">
										<div class="col-md-2">
											<%
												for (int i = 1; i < 17; i++) {
											%>
											<button type="button" class="btn btn-primary btn-xs">1st
												OHCB01</button>
											<%
												}
											%>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div><!-- JobPanel End -->

			<div class="col-md-8 thumbnail" id="jobDescriptionPanel">
				<div class="panel panel-default col-md-offset-4"
					style="width: 200px">
					<h4 class="text-center">
						<strong>Job Status Table</strong>
					</h4>
				</div>
				<div class="panel panel-default">
					<table class="table  table table-bordered table table-hover">
						<thead>
							<tr>
								<th class="active text-center">Name</th>
								<th class="active text-center">Started</th>
								<th class="active text-center">Finished</th>
								<th class="active text-center">Error</th>
								<th class="active text-center">BeginTime</th>
								<th class="active text-center">EndTime</th>

							</tr>
						</thead>
						<tbody>
							<%
								for (int i = 1; i < 17; i++) {
							%>
							<tr>
								<td><img alt="cross" src="images/tick2.png"
									style="height: 15px; width: 15px; margin-left: 30px"></td>
								<%
									for (int j = 1; j < 6; j++) {
								%>
								<td><img alt="cross" src="images/cros2.png"
									style="height: 15px; width: 15px; margin-left: 50px"></td>
								<%
									}
								%>
							</tr>
							<%
								}
							%>

						</tbody>



					</table>
				</div>
			</div><!-- JobDescriptionPanel End -->

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
				
				<!-- Calendar -->
				<div gldp-el="mydate" id="my"></div>

			</div><!-- WidgetArea End-->
		</div><!-- CenterRow End -->
	</div><!-- Container End -->
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