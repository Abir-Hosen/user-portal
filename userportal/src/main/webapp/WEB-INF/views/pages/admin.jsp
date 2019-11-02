<%@page import="net.abir.portalbackend.dao.UserDao"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>

<div class="ui internally celled grid">

	<div class="ui four wide column">
		<div class="ui fluid vertical menu">
			<a class="item" id="user-list" href="${contextRoot}/admin">User List</a>
		</div>
	</div>
	
	<div class="ui twelve wide column">
		<div class="ui row">
			<h3>User List</h3>
		</div>
		
		<hr>
		<div class="ui row" style="padding: 5px;">

			<table id="example" class="ui celled table" style="width: 100%">
				<thead>
					<tr>
						<th>Name</th>
						<th>Age</th>
						<th>Email</th>
						<th>Phone</th>
					</tr>
				</thead>
				
				<tbody>
				<!-- logic area -->
				<c:forEach items="${user}" var="user">
					<tr>
						<td>${user.first_name} &nbsp; ${user.last_name}</td>
						<%  
						Date date = new Date();
						Date bday = (Date)pageContext.getAttribute("user.birthdate");
						%> 
						<td>${user.age}</td>
						<td>${user.email}</td>
						<td>+880${user.phone }</td>
					</tr>
					</c:forEach>
					<!-- logic area finished -->
				</tbody>
				
				<tfoot>
					<tr>
						<th>Name</th>
						<th>Age</th>
						<th>Email</th>
						<th>Phone</th>
					</tr>
				</tfoot>
			</table>

		</div>

	</div>
</div>