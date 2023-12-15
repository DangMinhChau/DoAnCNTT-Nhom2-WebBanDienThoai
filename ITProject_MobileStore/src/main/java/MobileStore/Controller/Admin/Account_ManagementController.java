package MobileStore.Controller.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import MobileStore.Controller.BaseController;
import MobileStore.Dao.AccountsDao;
import MobileStore.Entity.Accounts;
import MobileStore.Service.Admin.Account.Admin_AccountServiceImpl;

@Controller
public class Account_ManagementController extends BaseController {

	@Autowired
	private Admin_AccountServiceImpl adminAccountService = new Admin_AccountServiceImpl();

	@Autowired
	private AccountsDao accountsDao;
	
	@RequestMapping("user-list")
	public ModelAndView ListUser() {
		_mvShare.setViewName("admin/user/listUser" );
		_mvShare.addObject("infoUser", adminAccountService.getAccounts());
		return _mvShare;
	}

	@RequestMapping(value = {"deleteAccount/{id}"}) 
	public String DeleteAcc(@PathVariable long id, HttpServletRequest request) { 
		adminAccountService.DeleteAccounts(id);
		return "redirect:/user-list"; 
	}

	// Load data of Account to page Upload account
	@RequestMapping(value = "updateAccount/{id}", method = RequestMethod.GET)
	public ModelAndView GoToUpdateAccountPage(@PathVariable long id, HttpSession session) {
		_mvShare.setViewName("admin/user/updateUser");
		_mvShare.addObject("user",adminAccountService.getAccountById(id));
		return _mvShare;
	}   

	// Get data on page Upload account to update account 
	@RequestMapping(value = "updateAccount/{id}", method = RequestMethod.POST) 
	public ModelAndView UpdateAccount(HttpServletRequest request,@PathVariable long id,
			HttpSession session,@ModelAttribute("user")Accounts accounts){

		accounts.setEmail(accounts.getEmail());
		accounts.setAddress(accounts.getAddress());
		accounts.setDisplay_name(accounts.getDisplay_name());
		accounts.setPhone(accounts.getPhone());
		
		int count = accountsDao.UpdateAccount(accounts, id);
		
		if(count > 0) {
			_mvShare.addObject("UpdateStatus", "Update completed");
			_mvShare.setViewName("redirect:" + request.getHeader("Referer"));
			
		}
		else {
			_mvShare.addObject("UpdateStatus", "Update do not completed");
			_mvShare.setViewName("redirect:home-page");
		}
		
		return _mvShare; 
	}

}
