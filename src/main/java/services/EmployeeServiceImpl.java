package services;

import java.util.List;

import models.Employee;
import models.SalesEmployee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.IEmployeeMapper;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	private IEmployeeMapper employeeMapper;

	public EmployeeServiceImpl() {
	}

	public boolean getEmployee(int id) {
		Employee employee = employeeMapper.getEmployeeById(id);
		
		if(employee != null) {
			return true;
		}
		return false;

	}

	public void insertEmployee(Employee newEmployee) {
		employeeMapper.insertEmployee(newEmployee);
		
	}

	public void insertSalesEmployee(SalesEmployee newSalesEmployee) {
		// TODO Auto-generated method stub
	}

}
