$(document).ready(function() {		
//JobPanel function
			$("#headingOne").click(function() {
				$("#collapseOne").on('hidden.bs.collapse', function() {
					$("#img").attr('src', 'images/plus.png');
					$("#collapseTwo").collapse('show');
					$("#img2").attr('src', 'images/minus.png');
				});
				$("#collapseOne").on('shown.bs.collapse', function() {
					$("#img").attr('src', 'images/minus.png');
					$("#collapseTwo").collapse('hide');
					$("#img2").attr('src', 'images/plus.png');
				});

			});

			$("#headingTwo").click(function() {
				$("#collapseTwo").on('hidden.bs.collapse', function() {
					$("#img2").attr('src', 'images/plus.png');
					$("#collapseOne").collapse('show');
				});
				$("#collapseTwo").on('shown.bs.collapse', function() {
					$("#img2").attr('src', 'images/minus.png');
					$("#collapseOne").collapse('hide');
				});

			});
});

/*Calendar*/
