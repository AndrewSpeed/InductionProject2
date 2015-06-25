package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	public MainController() {
	}
	
	@RequestMapping(value="index.html")
	public String homePage(Model m) {
		return "index";
	}

}
