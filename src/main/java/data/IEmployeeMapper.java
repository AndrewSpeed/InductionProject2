package data;

import java.util.List;

import models.Employee;

import org.apache.ibatis.annotations.Select;

public interface IEmployeeMapper {

	@Select("SELECT id, forename, surname, salary FROM employees;")
	List<Employee> getEmployees();
}
