package data;

import java.util.List;

import models.BaseEmployee;
import models.Employee;
import models.SalesEmployee;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface IEmployeeMapper {

	@Select("(SELECT id, forename, surname FROM employees) UNION (SELECT id, forename, surname FROM salesEmployees);")
	List<BaseEmployee> getAllEmployees();
	
	@Select("SELECT id, forename, surname FROM employees;")
	List<Employee> getEmployees();
	
	@Select("Select id, forename, surname FROM salesEmployees;")
	List<SalesEmployee> getSalesEmployee();
	
	@Select("SELECT id, forename, surname, dateOfBirth, salary FROM employees WHERE id=#{id};")
	public Employee getEmployeeById(int id);
	
	@Insert("INSERT INTO employees(forename, surname, salary) VALUES (#{forename}, #{surname}, #{salary})")
	public void insertEmployee(Employee newEmployee);
	
	@Insert("INSERT INTO salesEmployees(forename, surname, commissionRate, salesTotal) " + 
			"VALUES (#{forename}, #{surname}, #{commissionRate}, #{salesTotal})")
	public void insertSalesEmployee(SalesEmployee newSalesEmployee);

}
