<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<div class="ui internally celled grid">

	<div class="ui four wide column">
		<div class="ui fluid vertical menu">
			<a class="item" id="profile-page" href="${contextRoot}/">Profile Page</a>
			<a class="item" id="change-password" href="${contextRoot}/change-password">Change Password</a>
		</div>
	</div>
	
	<div class="ui twelve wide column">
		
		<div class="ui row">
			<h3>Change Password</h3>
		</div>
		<hr>
		<div class="ui row" style="padding: 15% 25%;">
			
			<c:if test="${not empty message}">
				<p>${message}</p>
			</c:if>
			<div class="ui form">


				<sf:form class="ui form" modelAttribute="pass"
				action="${contextRoot}/change-password" method="POST" >
					<div class="field">
						<div class="three wide column"><label>Previous Password</label></div>
						<div class="nine wide column">
<!-- 							<input type="password" name="password" placeholder="Previous password"/>
 --> 							<sf:input type="password" id="previousPassword" placeholder="Previous Password" path="previousPassword"></sf:input>
							<sf:errors path="previousPassword" cssClass="error" element="em"></sf:errors>
						</div>
					</div>
					<div class="field">
						<div class="three wide column"><label>New Password</label></div>
						<div class="nine wide column">
<!-- 							<input type="password" name="newPassword" placeholder="New password"/>
 --> 							<sf:input type="password" id="newPassword" placeholder="New Password" path="newPassword"></sf:input>
							<sf:errors path="newPassword" cssClass="error" element="em"></sf:errors>
						</div>
					</div>
					<div class="field">
						<div class="three wide column"><label>Confirm Password</label></div>
						<div class="nine wide column">
<!-- 							<input type="password" name="cnfPassword" placeholder="Confirm password"/>
 --> 							<sf:input type="password" id="confirmPassword" placeholder="Confirm Password" path="confirmPassword"></sf:input>
							<sf:errors path="confirmPassword" cssClass="error" element="em"></sf:errors>
						</div>
					</div>
					<div class="field">
						<button class="ui black basic button"  type="submit">Change Password</button>
<!-- 						<button class="ui gray basic button">Clear</button> -->
					</div>
				</sf:form>
				
			</div>
		</div>

	</div>
	
</div>