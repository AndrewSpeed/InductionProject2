<!DOCTYPE html>
<html>
<head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Employees</title>
</head>
<body>
    <div class="container">
        <h1>Employees</h1>
        <table class="table table-bordered table-hover">
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
    </div>
</body>
</html>