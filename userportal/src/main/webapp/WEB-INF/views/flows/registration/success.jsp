<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<%@include file="../shared/flows-header.jsp"%>
<div>
	<br>
	<br>
	<br>
	<br>
	<br>
</div>
<div class="ui icon message">
	<i aria-hidden="true" class="circle notched loading icon"></i>
	<div class="header">Welcome to User Portal</div>
	<br>
</div>
<div class="ui message">
	<div class="ui warning bottom attached message">
		<i aria-hidden="true" class="help icon"></i> Already signed up? <a
			href="${contextRoot}/login">Login here</a> instead.
	</div>
</div>

<%@include file="../shared/flows-footer.jsp"%>