package data;

import java.util.List;

import models.Employee;
import models.SalesEmployee;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface IEmployeeMapper {

	@Select("(SELECT id, forename, surname, salesId FROM employees);")
	List<Employee> getAllEmployees();
	
	@Select("SELECT id, forename, surname FROM employees WHERE salesId IS NULL;")
	List<Employee> getEmployees();
	
	@Select("SELECT id, forename, surname FROM employees WHERE salesId IS NOT NULL;")
	List<SalesEmployee> getSalesEmployees();
	
	@Select("SELECT forename, surname, dateOfBirth, salary FROM employees WHERE id=#{id};")
	public Employee getEmployeeById(int id);
	
	@Select("SELECT forename, surname, dateOfBirth, salary, commissionRate, salesTotal FROM employees " +
			"INNER JOIN (salesEmployees) ON (employees.salesId=salesEmployees.salesId) WHERE id=#{id};")
	public SalesEmployee getSalesEmployeeById(int id);
	
	@Insert("INSERT INTO employees(forename, surname, salary) VALUES (#{forename}, #{surname}, #{salary})")
	public void insertEmployee(Employee newEmployee);
	
	@Insert("INSERT INTO salesEmployees(forename, surname, commissionRate, salesTotal) " + 
			"VALUES (#{forename}, #{surname}, #{commissionRate}, #{salesTotal})")
	public void insertSalesEmployee(SalesEmployee newSalesEmployee);

}
