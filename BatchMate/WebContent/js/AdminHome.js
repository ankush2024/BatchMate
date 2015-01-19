	
	var dataSet = [
	               ['Job101','1st OHCBO1','11.30 PM','isoapps13,isoapps2','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job102','2nd OHCBO3','12.30 PM','isoapps13','run Before Store48','<input type="radio"  name="radio1" align="center">'],
	               ['Job103','POBAL','01.30 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job104','FINANCE','01.30 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job105','HR','02.32 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job106','1st OHCBO3','04.30 PM','isoapps14','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job107','2nd OHCBO1','01.30 PM','isoapps16','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job108','1st OHCBO3','01.30 PM','isoapps11','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job109','MVSTART1 master101','01.30 PM','isoapps9','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job110','1st OHCBO4','01.30 PM','isoapps4','all store closed Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job111','1st OHCBO4','01.30 PM','isoapps5','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job112','','01.30 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job113','mvstart1 sm101','01.30 PM','isoapps13','run Before Store48 & store 44 Cmove','<input type="radio" name="radio1" align="center">'],
	               ['Job114','MVSTART2 master101','01.30 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job115','Transfer PLUNIVR','01.30 PM','isoapps14','after Ist OHCBO1','<input type="radio" name="radio1" align="center">'],
	               ['Job116','Create PLUNIVR','01.30 PM','isoapps12','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job117','PLUINVR','01.30 PM','isoapps9','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job118','MOVEAPP','01.30 PM','isoapps14','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job119','CMOVE','01.30 PM','isoapps13','all store closed Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job120','1st OHCBO4','01.30 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job121','1st OHCBO4','01.30 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job122','1st OHCBO4','01.30 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job123','1st OHCBO4','01.30 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job124','1st OHCBO4','01.30 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job125','1st OHCBO4','01.30 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job126','1st OHCBO4','01.30 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job127','1st OHCBO4','01.30 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job128','1st OHCBO4','01.30 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
	               ['Job129','1st OHCBO4','01.30 PM','isoapps13','run Before Store48','<input type="radio" name="radio1" align="center">'],
		               	              
	           ];
	            
	$(document).ready(function() {
	    $('#show_datatable').html( '<table cellpadding="0" cellspacing="0" border="0" class="display" id="example"></table>' );
	 
	    $('#example').dataTable( {
	        "data": dataSet,
	        "columns": [
	            { "title": "Job Id" },
	            { "title": "Job Title" },
	            { "title": "Expected Time" },
	            { "title": "Prefered Station" },
	            { "title": "Supportive Information"},
	            { "title": "Select Job"}
	        ]
	    } );   
	} );
	
	
	

/*<!--data table css end -->
<!-- radio button selection script -->*/

 $(document).ready(function(){
	 
		
	 $("#secondPageModal" ).hide();
	 
	 $('#edit').click(function(){
		if($("input:radio[name='radio1']").is(":checked")) {			 
			
			  $("#secondPageModal").modal('show');  
 
		  }
		 else
		  {
			 alert('please select any radio button');
		  }
	 });
 } 
);
 
 
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
 
 
/* Calendar*/

