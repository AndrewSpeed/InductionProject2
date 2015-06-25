package services;

import models.Employee;
import models.SalesEmployee;

public interface EmployeeService {
	
	public boolean getEmployee(int id);
	
	public void insertEmployee(Employee newEmployee);
	
	public void insertSalesEmployee(SalesEmployee newSalesEmployee);

}
