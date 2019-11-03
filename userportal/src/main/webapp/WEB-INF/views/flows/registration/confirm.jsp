<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<%@include file="../shared/flows-header.jsp"%>

	<div class="ui row" style="padding: 15% 25%;">

			<table class="ui fixed table">
				<tbody>
					<tr>
						<td>First Name</td>
						<td>:</td>
						<td>${registerModel.user.first_name}</td>
					</tr>
					
					<tr>
						<td>Last Name</td>
						<td>:</td>
						<td>${registerModel.user.last_name}</td>
					</tr>
					
					<tr>
						<td>Address</td>
						<td>:</td>
						<td>${registerModel.user.address}</td>
					</tr>
					
					<tr>
						<td>Phone</td>
						<td>:</td>
						<td>+88${registerModel.user.phone}</td>
					</tr>
					
					<tr>
						<td>Email</td>
						<td>:</td>
						<td>${registerModel.user.email}</td>
					</tr>
					
					<tr>
						<td>Birth Date</td>
						<td>:</td>
						<td>${registerModel.user.birthdate}</td>
					</tr>
					
				</tbody>
			</table>

		<a href="${flowExecutionUrl}&_eventId_edit" class="ui button">Edit</a>
		<a href="${flowExecutionUrl}&_eventId_submit" class="ui button">Submit</a>


	<%@include file="../shared/flows-footer.jsp"%>

</div>
	

