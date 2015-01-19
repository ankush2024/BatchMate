var dataSet = [
	               ['User101','Jyoti','Operator','<img src="images/profile.jpg" width="50" height="50"/>','<input type="radio" name="radio2" align="center" checked>'],
	               ['User102','Aashish','Operator','<img src="images/profile.jpg" width="50" height="50"/>','<input type="radio" name="radio2" align="center">'],
	               ['User103','Amit','Admin','<img src="images/profile.jpg" width="50" height="50"/>','<input type="radio" name="radio2" align="center">'],
	               ['User104','Pankaj','Operator','<img src="images/profile.jpg" width="50" height="50"/>','<input type="radio" name="radio2" align="center">'],	               
	               ['User105','Ankush','Operator','<img src="images/profile.jpg" width="50" height="50"/>','<input type="radio" name="radio2" align="center">'],
	        

	           ];
	            
	$(document).ready(function() {
	    $('#show_datatable').html( '<table cellpadding="0" cellspacing="0" border="0" class="display" id="example"></table>' );
	 
	    $('#example').dataTable( {
	        "data": dataSet,
	        "columns": [
	            { "title": "UserId" },
	            { "title": "Name" },
	            { "title": "Role" },
	            { "title": "Profile"},
	            { "title": "Select User"}
	         ]
	    } );   
	} );
	
/*ListUserPanel*/
	
	$(document).ready(function() {
		$("#headingOne").click(function() {
			$("#collapseOne").on('hidden.bs.collapse', function() {
				$("#img").attr('src', 'images/plus.png');
				$("#collapseTwo").collapse('show');
				window.location.href = "ListUser.jsp";
				$("#img2").attr('src', 'images/minus.png');
			});
			$("#collapseOne").on('shown.bs.collapse', function() {
				$("#img").attr('src', 'images/minus.png');
				$("#collapseTwo").collapse('hide');
				window.location.href = "AdminHome.jsp";
				$("#img2").attr('src', 'images/plus.png');
			});

		});

		$("#headingTwo").click(function() {
			$("#collapseTwo").on('hidden.bs.collapse', function() {
				$("#img2").attr('src', 'images/plus.png');
				$("#collapseOne").collapse('show');
				window.location.href = "AdminHome.jsp";
			});
			$("#collapseTwo").on('shown.bs.collapse', function() {
				$("#img2").attr('src', 'images/minus.png');
				$("#collapseOne").collapse('hide');
				window.location.href = "ListUser.jsp";
			});

		});

	});
	
	/*Calendar*/
