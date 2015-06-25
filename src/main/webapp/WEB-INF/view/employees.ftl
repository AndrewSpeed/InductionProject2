<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employees</title>
</head>
<body>
	<h1>Employees</h1>
	<table border=1>
		<tr>
			<th>ID</th>
			<th>Forename</th>
			<th>Surname</th>
			<th>Date of birth</th>
			<th>Salary</th>
		</tr>
		<#list employees as employee>
		<tr>
			<td>${employee.id}</td>
			<td>${employee.forename}</td>
			<td>${employee.surname}</td>
			<td>${employee.dateOfBirth}</td>
			<td>${employee.salary}</td>
		</tr>
		</#list>
	</table>
</body>
</html>