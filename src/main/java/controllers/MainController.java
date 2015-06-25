package controllers;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import data.IEmployeeMapper;

@Controller
public class MainController {
	
	@Autowired
	private DataSource dataSource;
	
	@Autowired
	public IEmployeeMapper employeeMapper;

	public MainController() {
	}
	
	@RequestMapping(value="index.html")
	public String homePage(Model m) {
		return "index";
	}
	
	@RequestMapping(value="list/employees.html")
	public String listEmployees(Model m) {
		m.addAttribute("employees", employeeMapper.getEmployees());
		return "employees";
	}
	
	@RequestMapping(value="add/employees.html")
	public String addEmployee(Model m) {
		return "newEmployee";
	}

}
