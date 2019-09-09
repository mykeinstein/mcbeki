  'use strict';
$(document).ready(function () {
//Basic alert
	document.querySelector('.sweet-1').onclick = function(){
		swal("Here's a message!", "It's pretty, isn't it?")
	};
	//success message
	document.querySelector('.alert-success-msg').onclick = function(){
		swal("Good job!", "You clicked the button!", "success");
	};

	//Alert confirm
	document.querySelector('.alert-confirm').onclick = function(){
		swal({
					title: "Are you sure?",
					text: "Your will not be able to recover this imaginary file!",
					type: "warning",
					showCancelButton: true,
					confirmButtonClass: "btn-danger",
					confirmButtonText: "Yes, delete it!",
					closeOnConfirm: false
				},
				function(){
					swal("Deleted!", "Your imaginary file has been deleted.", "success");
				});
	};


		$('#openBtn').on('click',function () {
			$('#myModal').modal({
				show: true
			})
		});

		$(document).on('show.bs.modal', '.modal', function (event) {
			var zIndex = 1040 + (10 * $('.modal:visible').length);
			$(this).css('z-index', zIndex);
			setTimeout(function() {
				$('.modal-backdrop').not('.modal-stack').css('z-index', zIndex - 1).addClass('modal-stack');
			}, 0);
		});
	});
  