<!DOCTYPE html>
<html>
    <head>
       <#include "scriptsAndStyle.ftl">
	   <meta charset="UTF-8">
	   <title>Add Employee</title>
	</head>
	<body>
	   <div class="container">
	       <h1>Add Employee</h1>
		   <#include "navbar.ftl">
		    <ol class="breadcrumb">
		              <li><a href="${rc.contextPath}/">Home</a></li>
		              <li class="active">Add Employee</li>
		            </ol>
			<form action="newEmployee.html" method="POST">
				<fieldset>
					<legend>Employee Details:</legend>
					Forename:<br> <input type="text" name="forename" value=""> <br>
					Surname:<br> <input type="text" name="surname" value=""> <br>
					Salary:<br> <input type="number" min="0.01" step="0.01" max="999999999.99" value=""><br>
					Date of Birth:<br><input type="date" value=""><br>
					<span style = "color:red">${msg}</span><br>
					<input type="submit" value="Submit">  <input type="submit" value="Back">
				</fieldset>
			</form>
		</div>
	</body>
</html>