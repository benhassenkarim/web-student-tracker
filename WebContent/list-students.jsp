<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<title>Student Tracker App</title>
	
	<link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h4>chef poste: Aymen ben ahmen : B3 </h4>
			<input type="button" value="Etiquette" 
				   onclick="window.location.href='add-student-form.jsp'; return false;"
				   class="add-student-button1"
			/>
			<input type="button" value="bon de sortie" 
				   onclick="window.location.href='add-student-form.jsp'; return false;"
				   class="add-student-button1"
			/>
			<input type="button" value="historique panne" 
				   onclick="window.location.href='add-student-form.jsp'; return false;"
				   class="add-student-button1"
			/>
		</div>
	</div>

	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add Student -->
			
			
			
			<table>
			
				<tr>
					<th>code</th>
					<th>panne</th>
					<th>discription </th>
					<th>chef_poste</th>
				</tr>
				
				<c:forEach var="tempStudent" items="${STUDENT_LIST}">
					
					<!-- set up a link for each student -->
					<c:url var="tempLink" value="StudentControllerServlet">
						<c:param name="command" value="LOAD" />
						<c:param name="studentId" value="${tempStudent.id}" />
					</c:url>
					<c:url var="deleteLink" value="StudentControllerServlet">
						<c:param name="command" value="DELETE" />
						<c:param name="studentId" value="${tempStudent.id}" />
					</c:url>												
					<tr>
						<td> ${tempStudent.firstName} </td>
						<td> ${tempStudent.lastName} </td>
						<td> ${tempStudent.email} </td>
						<td> 
							aymen 
							|
							B3
						</td>
					</tr>
				
				</c:forEach>
				
			</table>
		
		</div>
	
	</div>
</body>


</html>

