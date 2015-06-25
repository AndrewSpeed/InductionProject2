package controllers;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
	
	@RequestMapping(value="employees.html")
	public String employees(Model m) {
		m.addAttribute("employees", employeeMapper.getEmployees());
		return "employees";
	}

}
