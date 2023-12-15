package MobileStore.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import MobileStore.Controller.BaseController;

@Controller 
public class Admin_HomeController extends BaseController{

	@RequestMapping("/admin")
	public String Admin() {
		return "admin/home";
	}

	@RequestMapping("home") 
	public String GoToHome() {
		return "redirect:home-page";
	}
}
