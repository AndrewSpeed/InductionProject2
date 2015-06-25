<!DOCTYPE html>
<html>
	<head>
		<#include "scriptsAndStyle.ftl">
		<meta charset="UTF-8">
		<title>Employees</title>
	</head>
	<body>
	    <div class="container">
	        <h1>Employees</h1>
	        <#include "navbar.ftl">
            <ol class="breadcrumb">
                <li><a href="${rc.contextPath}/">Home</a></li>
	            <li class="active">Employees</li>
            </ol>
            
            <div class="table-responsive">
		        <table class="table table-bordered table-hover">
		        <tr>
		            <th>ID</th>
		            <th>Forename</th>
		            <th>Surname</th>
		        </tr>
		        <#list employees as employee>
		        <tr>
		            <#if (employee.salesId??) && (employee.salesId > 0)>
		                <td><a href="${rc.contextPath}/salesEmployees/${employee.id}/details.html">${employee.id}</a></td>  
		            <#else>
		                <td><a href="${rc.contextPath}/employees/${employee.id}/details.html">${employee.id}</a></td>
		            </#if>
		            <td>${employee.forename}</td>
		            <td>${employee.surname}</td>
		        </tr>
		        </#list>
		        </table>
	        </div>
	    </div>
	</body>
</html>