package MobileStore.Controller;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import MobileStore.Service.User.Home.HomeServiceImpl;

@Controller
public class BaseController {
	@Autowired 
	public HomeServiceImpl _homeServiceImpl; 

	protected ModelAndView _mvShare = new ModelAndView(); 

	@PostConstruct 
	protected ModelAndView Init() {
		_mvShare.addObject("menu", _homeServiceImpl.getDataMenus()); 
		_mvShare.addObject("categories",_homeServiceImpl.getDataCategories());
		return _mvShare; 
	}
}
