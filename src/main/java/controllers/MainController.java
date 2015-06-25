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

@Controller
public class MainController {
	
	@Autowired
	private DataSource dataSource;

	public MainController() {
	}
	
	@RequestMapping(value="index.html")
	public String homePage(Model m) {
		return "index";
	}
	
	@RequestMapping(value="employees.html")
	public String employees(Model m) {
		try {
			Connection c = dataSource.getConnection();
			Statement s = c.createStatement();
			String sql = "SELECT id, forename, surname, salary " +
						 "FROM employees;";
			ResultSet rs = s.executeQuery(sql);
			List<String[]> employees = new ArrayList<String[]>();
			
			while(rs.next()) {
				String[] employeeData = {
						rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4) };
				employees.add(employeeData);
				}
			m.addAttribute("employees", employees);
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return "employees";
	}

}
