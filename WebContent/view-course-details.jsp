<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page language="java" import="java.sql.*" %> 

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!-- set the sql connection -->
<sql:setDataSource
	var = "mariadbDataSource"
	driver = "org.mariadb.jdbc.Driver"
	url = "jdbc:mariadb://localhost:3306/digital_credentials"
	user = "root"
	password = "mariadb"
	/>
	
<sql:query var="courseDetail" dataSource="${mariadbDataSource}">
	select * from cognitive_class where id = <%= request.getParameter("record_id")%>;
</sql:query>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Course Details</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="./assets/global.css" />
</head>
<body class="container">

	<p><a href="./index.jsp" title="GO TO HOME PAGE">GO TO HOME PAGE</a></p>

	<h2>Cognitive class - Course Detail</h2>
	
	<c:forEach var="item" items="${courseDetail.rows}">
	
		<table class="table table-bordered table-hover table-sm">

			<tr>
				<td>Course Name</td>
				<td><c:out value="${item.course_name}" /></td>
			</tr>
			
			<tr>
				<td>Badge Name (if available)</td>
				<td><c:out value="${item.badge_name}" /></td>
			</tr>
			
			<tr>
				<td>Badge Type (if available)</td>
				<td><c:out value="${item.badge_type}" /></td>
			</tr>
			
			<tr>
				<td>Cognitive Class Course URL</td>
				<td><c:out value="${item.cognitive_class_url}" /></td>
			</tr>
			
			<tr>
				<td>ACCLAIM URL (if available)</td>
				<td><c:out value="${item.your_acclaim_url}" /></td>
			</tr>
			
			<tr>
				<td>Course Description</td>
				<td><c:out value="${item.course_description}" /></td>
			</tr>
			
			<tr>
				<td>Badge Description</td>
				<td><c:out value="${item.badge_description}" /></td>
			</tr>
			
			<tr>
				<td>Knowledge Level</td>
				<td><c:out value="${item.knowledge_level}" /></td>
			</tr>
			
			<tr>
				<td>Status</td>
				<td><c:out value="${item.status}" /></td>
			</tr>
			
			<tr>
				<td>My Note</td>
				<td><c:out value="${item.my_note}" /></td>
			</tr>
			
		</table>
	</c:forEach>
	
</body>
</html>