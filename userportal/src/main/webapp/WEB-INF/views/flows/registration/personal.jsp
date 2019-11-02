<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<%@include file="../shared/flows-header.jsp"%>

	<div style="margin: 3% 30%;">
	
	<sf:form class="ui form" method="POST" id="registerForm" modelAttribute="user">
	
		<div class="field">
			<label>First Name</label> 
			<sf:input type="text" path="first_name" placeholder="First Name"></sf:input>
			<sf:errors path="first_name" class="error" element="em"/>
		</div>
		
		<div class="field">
			<label>Last Name</label>
			<sf:input type="text" path="last_name" placeholder="Last Name"></sf:input>
			<sf:errors path="last_name" class="error" element="em"/>
		</div>
		
		<div class="field">
			<label>Address</label>
			<sf:input type="text" path="address" placeholder="Address"></sf:input>
			<sf:errors path="address" class="error" element="em"/>
		</div>
		
		<div class="field">
			<label>Phone</label>
			<sf:input type="number" path="phone" placeholder="Phone"></sf:input>
			<sf:errors path="phone" class="error" element="em"/>
		</div>
		
		<div class="field">
			<label>Email</label>
			<sf:input type="text" path="email" placeholder="Email"></sf:input>
			<sf:errors path="email" class="error" element="em"/>
		</div>
		
 		<div class="field">
			<label>Birth</label>
			<sf:input type="date" path="birthdate" placeholder="Birth Date"></sf:input>
		</div>
	
		<div class="field">
			<label>Password</label>
			<sf:input type="password" path="password" placeholder="Enter Password"></sf:input>
			<sf:errors path="password" class="error" element="em"/>
		</div>
		<sf:hidden path="role" value="user"/>
		<sf:hidden path="allowance" value="true"/>

		<button class="ui button" name="_eventId_confirm" type="submit">Register</button>
		<button class="ui button" name="_eventId_home" type="submit">Cancel</button>
	
	</sf:form>
	<br><br>

	<%@include file="../shared/flows-footer.jsp"%>

</div>
	

