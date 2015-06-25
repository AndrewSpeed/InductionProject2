package controllers;

import javax.sql.DataSource;
import javax.validation.Valid;

import models.Employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import data.IEmployeeMapper;

@Controller
public class MainController {
	
	@Autowired
	private DataSource dataSource;
	
	@Autowired
	public IEmployeeMapper employeeMapper;
	
	@Autowired
	private MessageSource messageSource;

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
	
	@RequestMapping(value="employees/listSaleEmployees.html")
	public String listSalesEmployees(Model m) {
		m.addAttribute("employees", employeeMapper.getSalesEmployees());
		return "salesEmployees";
	}
	
	@RequestMapping(value="employees/add.html", method=RequestMethod.GET)
	public String addEmployeeGet(Model m) {
		m.addAttribute("msg", "");
		return "newEmployee";
	}
	
	@RequestMapping(value="employees/add.html", method=RequestMethod.POST)
	public String addEmployeePost(@Valid Employee employee, BindingResult bindingResult, Model m) {
		System.out.println("Executing code.");
		if (bindingResult.hasErrors()) {
			System.out.println("Error");
			m.addAttribute("msg", message);
            return "newEmployee";
        }
		employeeMapper.insertEmployee(employee);
		int id = employee.getId();
		m.addAttribute("employee", employeeMapper.getEmployeeById(id));
		return "employeeDetail";
	}
	
	@RequestMapping(value="employees/{id}/details.html")
	public String employeeDetails(Model m, @PathVariable int id) {
		m.addAttribute("employee", employeeMapper.getEmployeeById(id));
		return "employeeDetail";
	}

}
