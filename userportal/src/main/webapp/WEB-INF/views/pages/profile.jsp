<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %> 
<div class="ui internally celled grid">

	<div class="ui four wide column">
		<div class="ui fluid vertical menu">
			<a class="item" id="profile-page" href="${contextRoot}/">Profile Page</a>
			<a class="item" id="change-password" href="${contextRoot}/change-password">Change Password</a>
			<security:authorize access="hasAuthority('admin')">
				<a class="item" id="admin" href="${contextRoot}/admin">Admin</a>
			</security:authorize>
		</div>
	</div>
	
	<div class="ui twelve wide column">
		
		<div class="ui row">
			<h3>Profile Page</h3>
		</div>
		<hr>
		<div class="ui row" style="padding: 15% 25%;">

			<table class="ui fixed table">
				<tbody>
					<tr>
						<td>First Name</td>
						<td>:</td>
						<td>${userModel.first_name }</td>
					</tr>
					
					<tr>
						<td>Last Name</td>
						<td>:</td>
						<td>${userModel.last_name }</td>
					</tr>
					
					<tr>
						<td>Address</td>
						<td>:</td>
						<td>${userModel.address }</td>
					</tr>
					
					<tr>
						<td>Phone</td>
						<td>:</td>
						<td>+88${userModel.phone }</td>
					</tr>
					
					<tr>
						<td>Email</td>
						<td>:</td>
						<td>${userModel.email }</td>
					</tr>
					
					<tr>
						<td>Birthday</td>
						<td>:</td>
						<td>${userModel.birthdate.toString().substring(0, 10) }</td>
					</tr>
					
				</tbody>
			</table>
			
		</div>

	</div>
	
</div>