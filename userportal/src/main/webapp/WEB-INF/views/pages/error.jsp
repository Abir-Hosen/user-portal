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
<meta name="description" content="An ecomerce based project">
<meta name="author" content="Abir Hosen">
 
<meta name="${_csrf}" content="${_csrf.token}">
<meta name="${_csrf_header}" content="${_csrf.headerName}">

<title>${title}</title>


<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.2/semantic.min.css">
<link href="${css}/myapp.css" rel="stylesheet">

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
<script src="${js}/myapp.js"></script>

</head>

<body class="bg">

	<div>
		<div class="ui container">

			
			<br><br><br><br>
				
			<!-- Details -->
			<div class="ui sixteen wide column">
				<div class="ui row">
					<p>${title }</p>
				</div><br>
				<div class="ui row">
					<p>${errorTitle }</p>
				</div><br>
				<div class="ui row">
					<p>${errorDescription }</p>
				</div><br>
				<div class="ui row">
					<p>Today's date: <%= (new java.util.Date()).toLocaleString()%></p>
				</div><br>
				
				<!--  ###################  Extended Info Logic area -->
				
				<!--  ###################  Extended Info Logic area finished -->
				<br><br>
				
				<br><br><br>
			</div>

		</div>

	</div>

	<script type="text/javascript">
		window.menu = '${title}';
	</script>

</body>

</html>