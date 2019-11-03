<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>

<html>

<head>

<meta charset="utf-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="refresh" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="An Film Production based project">
<meta name="author" content="Abir Hosen">


<meta name="${_csrf}" content="${_csrf.token}">
<meta name="${_csrf_header}" content="${_csrf.headerName}">

<title>${title}</title>


<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.2/semantic.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/dataTables.semanticui.min.css">

<link href="${css}/myapp.css" rel="stylesheet">

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.20/js/dataTables.semanticui.min.js"></script>

<script src="${js}/myapp.js"></script>
</head>

<body>

		<%@ include file="./shared/nav.jsp"%><br><br><br>
	
		<c:if test="${userClickHome==true }">
			<%@ include file="./pages/profile.jsp"%>
		</c:if>
		
		<c:if test="${userClickChangePassword==true }">
			<%@ include file="./pages/changePassword.jsp"%>
		</c:if>
		
		<c:if test="${userClickAdmin==true }">
			<%@ include file="./pages/admin.jsp"%>
		</c:if>
	
		<br>
		<%@ include file="./shared/footer.jsp"%>

	
	<script type="text/javascript">
		window.menu = '${title}';
		
/* 		 
		var serverContext = [[@{/}]];
		function savePass(){
		    var pass = $("#pass").val();
		    var valid = pass == $("#passConfirm").val();
		    if(!valid) {
		      $("#error").show();
		      return;
		    }
		    $.post(serverContext + "user/updatePassword",
		      {password: pass, oldpassword: $("#oldpass").val()} ,function(data){
		        window.location.href = serverContext +"/home.html?message="+data.message;
		    })
		    .fail(function(data) {
		        $("#errormsg").show().html(data.responseJSON.message);
		    });
		}
		 */
		$(document).ready(function() {
		    $('#example').DataTable();
		} );
		
	</script>

</body>

</html>