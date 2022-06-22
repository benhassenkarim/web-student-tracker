
<!DOCTYPE html>
<html>

<head>
	<title>Add Student</title>

	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/add-student-style.css">	
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h4>chef poste: Aymen ben ahmen : B3 </h4>
		</div>
	</div>
	
	<div id="container">
		<h3> Bon Sortie</h3>
		
		<form action="StudentControllerServlet" method="POST">
		
			<input type="hidden" name="command" value="ADD" />
			
			<table>
				<tbody>
					<tr>
						<td><label>code</label></td>
						<td><input type="text" name="firstName" /></td>
					</tr>

					<tr>
						<td><label>code_panne</label></td>
						<td><input type="text" name="lastName" /></td>
					</tr>

					<tr>
						<td><label>liste materiel</label></td>
						<td><select>
						<option>-----</option>
						<option>domino électrique 250</option>
						</select>
						<input  value="ajouter" class="save1" />
						</td>
						
					</tr>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="enregister" class="save" /></td>
					</tr>
					
				</tbody>
			</table>
		</form>
		
		<div style="clear: both;"></div>
		
		<p>
			<a href="StudentControllerServlet">Retour</a>
		</p>
	</div>
</body>

</html>



