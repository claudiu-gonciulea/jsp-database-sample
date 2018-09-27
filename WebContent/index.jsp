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
	
<sql:query var="coursesList" dataSource="${mariadbDataSource}">
	select * from cognitive_class;
</sql:query>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Cognitive classe courses</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="./assets/global.css" />
</head>
<body class="container">

	<p><a href="./index.jsp" title="GO TO HOME PAGE">GO TO HOME PAGE</a></p>

	<h2>Cognitive class courses</h2>

	<p>This sample application is a sample proof of concept of how to connect to the database from a jsp page.</p>
		
	<p>This app provides behavior to support all CRUD operations.
		What I have here is a frontend to the back-end database.</p>
		
	<table class="table table-bordered table-hover table-sm">
		<tr>
			<th>#</th>
			<th>Course Name</th>
			<th>Badge Name (if available)</th>
			<th>Knowledge Level</th>
			<th colspan="2">Actions</th>
		</tr>
		
		<c:forEach var="item" items="${coursesList.rows}">
			<tr>
				<td><c:out value="${item.id}" /></td>
				<td>
					<a href="${item.cognitive_class_url}">
						<c:out value="${item.course_name}" />
					</a>
				</td>
				<td><c:out value="${item.badge_name}" /></td>
				<td><c:out value="${item.knowledge_level}" /></td>
				<td><a href="./edit-course-details.jsp?record_id=${item.id}" title="">Edit</a></td>
				<td><a href="./view-course-details.jsp?record_id=${item.id}" title="">View</a></td>
			</tr>
		</c:forEach>
	</table>
	
	<p>You can extend this application using <a href="http://www.displaytag.org/1.2/">http://www.displaytag.org/1.2/</a> to paginate this table</p>

</body>
</html>