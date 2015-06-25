<!DOCTYPE html>
<html>
	<head>
	    <#include "scriptsAndStyle.ftl">
		<meta charset="UTF-8">
		<title>${employee.forename} ${employee.surname}</title>
	</head>
	<body>
	   <div class="container">
	       <h1>${employee.forename} ${employee.surname} <small>Born on ${employee.dateOfBirth?string["dd/MM/yyyy"]}</small></h1>
	       <#include "navbar.ftl">
		    <ol class="breadcrumb">
			  <li><a href="${rc.contextPath}/">Home</a></li>
			  <li><a href="${rc.contextPath}/employees/list.html">Employees</a></li>
			  <li class="active">${employee.forename} ${employee.surname}</li>
			</ol>
			<#if employee.salary??>
		      <h2><span class="label label-primary">Salary:</span>£ ${employee.salary}</h2>
		    </#if>
		    <#if (employee.commissionRate??) && (employee.salesTotal??)>
              <h3><span class="label label-default">Commission:</span>${employee.commissionRate?string.percent}</h3>
              <h3><span class="label label-default">Total sales:</span>${employee.salesTotal}</h3>
            </#if>
	   </div>
	</body>
</html>