<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:choose>
<c:when test="${param.search ne null}">

<title>${param.search} Search Result | OTAKUS anime website</title>
</c:when>
<c:when test="${param.tag ne null}">

<title>${param.tag} Search Result | OTAKUS anime website</title>
</c:when>
</c:choose>
</head>
<body>

	<%@include file="WEB-INF/User/Menu.jsp"%>
	<c:choose>
		<c:when test="${param.search eq null and param.tag eq null and param.action eq null or param.action.equals('All')}">
			<%@include file="WEB-INF/User/OrderedSearch.jsp"%>
		</c:when>
		<c:otherwise>
			<%@include file="WEB-INF/User/List.jsp"%>
		</c:otherwise>
	</c:choose>
	<%@include file="WEB-INF/User/Footer.jsp"%>
</body>
</html>