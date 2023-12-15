package MobileStore.Controller.User;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import MobileStore.Controller.BaseController;
import MobileStore.Entity.Accounts;
import MobileStore.Service.User.Account.AccountServiceImpl;

@Controller
public class Register_LoginController extends BaseController{

	@Autowired 
	public AccountServiceImpl accountService = new AccountServiceImpl(); 

	@RequestMapping(value = "/Register", method = RequestMethod.GET)  
	public ModelAndView RegisterAccount() {
		_mvShare.setViewName("user/register/register"); 
		_mvShare.addObject("user", new Accounts()); 
		_mvShare.addObject("Email", accountService.GetEmailOnAccount());
		return _mvShare;
	}

	@RequestMapping(value = "/Register", method = RequestMethod.POST)  
	public ModelAndView CreateAccount(@ModelAttribute("user") Accounts users) {
		int count = accountService.AddAccount(users);
		if(count > 0) {
			_mvShare.addObject("checkRegisterCompleted", "Create your account successfully"); 
		}
		else if(count < 0) {
			_mvShare.addObject("checkRegisterFailed", "Email address already exists"); 
		}
		else {
			_mvShare.addObject("checkRegisterFailed", "This phone number or email does not exist as a username \n"
					+ "Please check if your number or email is correct"); 
		}
		_mvShare.addObject("flag", count); 
		_mvShare.setViewName("user/register/register"); 
		return _mvShare;
	}

	@RequestMapping(value = "/Login", method = RequestMethod.POST)  
	public ModelAndView Login(@ModelAttribute("user") Accounts users, HttpSession session) {	

		try {
			users = accountService.CheckAccount(users);		
			// Get account by Email 
			Accounts userByEmail = accountService.GetUserByAccount(users);
			if (users == null) {
				_mvShare.addObject("checkLogin","Login Failed"); 
			}
			else if (users != null) {
				if(userByEmail.isRole()) {
					_mvShare.setViewName("redirect:admin");
					session.setAttribute("LoginInfo", users); 
				}
				else {
					_mvShare.setViewName("redirect:home-page");
					session.setAttribute("LoginInfo", users); 
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			_mvShare.addObject("checkLogin", "Your email or password incorrect, please try again!!!"); 
		}

		return _mvShare;
	}

	@RequestMapping(value = "/Logout", method = RequestMethod.GET) 
	public String Logout(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfo");
		session.removeAttribute("Cart");
		return "redirect:"+request.getHeader("Referer"); 
	}
}
