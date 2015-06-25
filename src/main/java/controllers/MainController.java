package controllers;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@RequestMapping(value="employees/list.html")
	public String listEmployees(Model m) {
		m.addAttribute("employees", employeeMapper.getEmployees());
		return "employees";
	}
	
	@RequestMapping(value="employees/add.html")
	public String addEmployee(Model m) {
		m.addAttribute("msg", "");
		return "newEmployee";
	}
	
	@RequestMapping(value="employees/{id}/details.html")
	public String employeeDetails(Model m, @PathVariable int id) {
		m.addAttribute("employee", employeeMapper.getEmployeeById(id));
		return "employeeDetail";
	}

}
