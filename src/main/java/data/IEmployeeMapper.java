package data;

import java.util.List;

import models.Employee;
import models.SalesEmployee;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface IEmployeeMapper {

	@Select("SELECT id, forename, surname, salary FROM employees;")
	List<Employee> getEmployees();
	
	@Insert("INSERT INTO employees(forename, surname, salary) VALUES (#{forename}, #{surname}, #{salary})")
	public void insertEmployee(Employee newEmployee);
	
	@Insert("INSERT INTO salesEmployees(forename, surname, commissionRate, salesTotal) " + 
			"VALUES (#{forename}, #{surname}, #{commissionRate}, #{salesTotal})")
	public void insertSalesEmployee(SalesEmployee newSalesEmployee);

}
