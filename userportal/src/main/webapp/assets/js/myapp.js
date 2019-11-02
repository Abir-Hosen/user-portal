$(function() {
	
	switch(menu){
	case 'Profile Page':
		$('#profile-page').addClass('active');
		break;
	case 'Change Password':
		$('#change-password').addClass('active');
		break;
	case 'Admin':
		$('#user-list').addClass('active');
		break;
	}
	
	$('.ui.modal').modal("show");

	$('.dropdown')
	  .dropdown({
	    // you can use any ui transition
	    transition: 'drop'
	  })
	;
});