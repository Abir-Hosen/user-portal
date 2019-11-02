<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
	
<div class="ui top fixed borderless menu">

	<a class="item" href="#" style="font-weight: bold; font-size: 18px;">Navigation </a>
	
	<div class="right menu">

		<div class="dropdown">
			<button class="dropbtn">${userModel.first_name }&nbsp; ${userModel.last_name }</button>
			<div class="dropdown-content">
				<a class="item" href="${contextRoot }/change-password">Change-Password</a>
				<a class="item" href="${contextRoot }/perform-logout">Logout</a>
			</div>
		</div>

		<%-- 		<div class="ui dropdown item">
		
			${userModel.first_name }&nbsp; ${userModel.last_name }
			<i class="dropdown icon"></i>
			
			<div class="menu">
			
				<a class="item" href="${contextRoot }/change-password">Change-Password</a>
				<a class="item" href="${contextRoot }/logout">Logout</a>
				
			</div>
		</div> --%>
		
	</div>
	
</div>
