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
	select * from cognitive_class where id = <%= request.getParameter("record_id") %>;
</sql:query>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Edit course details</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="./assets/global.css" />
</head>
<body class="container">

	<p><a href="./index.jsp" title="GO TO HOME PAGE">GO TO HOME PAGE</a></p>

	<h2>Edit details for course with ID = <c:out value='<%= request.getParameter("record_id") %>' /> in the local database.</h2>

	<c:forEach var="item" items="${courseDetail.rows}">
	<form action="./edit-course-details.jsp?record_id=<%= request.getParameter("record_id") %>" method="post">
		<table class="table table-bordered table-hover table-sm">

			<tr>
				<td>Course Name</td>
				<td><input type="text" value="${item.course_name}" size="50" /></td>
			</tr>
			
			<tr>
				<td>Badge Name (if available)</td>
				<td><input type="text" value="${item.badge_name}" size="50" /></td>
			</tr>
			
			<tr>
				<td>Badge Type (if available)</td>
				<td><input type="text" name="badgeType" value="${item.badge_type}" size="50" /></td>
			</tr>
			
			<tr>
				<td>Cognitive Class Course URL</td>
				<td><input type="text" value="${item.cognitive_class_url}" size="50" /></td>
			</tr>
			
			<tr>
				<td>ACCLAIM URL (if available)</td>
				<td><input type="text" name="yourAcclaimUrl" value="${item.your_acclaim_url}" size="50" /></td>
			</tr>
			
			<tr>
				<td>Course Description</td>
				<td>
					<textarea name="courseDescription" style="width:400px; height:80px">
						<c:out value="${item.course_description}" />
					</textarea>
				</td>
			</tr>
			
			<tr>
				<td>Badge Description</td>
				<td>
					<textarea name="badgeDescription" style="width:400px; height:80px">
						<c:out value="${item.badge_description}" />
					</textarea>
				</td>
			</tr>
			
			<tr>
				<td>Knowledge Level</td>
				<td><input type="text" value="${item.knowledge_level}" />
				
					 	<select name="cars" data-selected="${item.knowledge_level}">
				  			<option value="saab">Beginner</option>
					  		<option value="fiat">Intermediate</option>
					  		<option value="audi">Advanced</option>
						</select> 
				
				</td>
			</tr>
			
			<tr>
				<td>Status</td>
				<td><input type="text" value="${item.status}" /></td>
			</tr>
			
			<tr>
				<td>My Note</td>
				<td>
				 	<textarea name="myNote" style="width:400px; height:80px">
						<c:out value="${item.my_note}" />
					</textarea> 
				</td>
			</tr>
			
		</table>
		
		<input type="submit" value="Submit">
	</form>
	</c:forEach>
	
	<c:if test="${pageContext.request.method=='POST'}">
	
		<sql:update var="count" dataSource="${mariadbDataSource}">
			update cognitive_class set 
				badge_type = ?, your_acclaim_url = ?, course_description = ?, badge_description = ?, my_note = ?
				where id = <%= request.getParameter("record_id") %>;
				
			<sql:param value="${param.badgeType}" />
            <sql:param value="${param.yourAcclaimUrl}" />
            <sql:param value="${param.courseDescription}" />
            <sql:param value="${param.badgeDescription}" />
            <sql:param value="${param.myNote}" />
		</sql:update>
		<c:out value="BEM O BERE !!" />
	</c:if>
</body>
</html>