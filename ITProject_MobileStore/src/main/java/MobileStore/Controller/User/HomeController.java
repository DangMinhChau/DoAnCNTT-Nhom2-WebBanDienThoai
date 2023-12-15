package MobileStore.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import MobileStore.Controller.BaseController;


@Controller
public class HomeController extends BaseController{
	@RequestMapping(value = { "/", "/home-page" })
	public ModelAndView Index() {
		_mvShare.setViewName("user/home");
		_mvShare.addObject("slides",_homeServiceImpl.getDataSlides());
		_mvShare.addObject("new_products",_homeServiceImpl.getNewProduct());
		_mvShare.addObject("feature_products",_homeServiceImpl.getFeatureProduct());

		return _mvShare;
	}

	@RequestMapping("/Contact")
	public String Contact() {
		return "user/contact/contact";
	}
	
	@RequestMapping("/Posts")
	public String Post() {
		return "user/post/post";
	}

}
