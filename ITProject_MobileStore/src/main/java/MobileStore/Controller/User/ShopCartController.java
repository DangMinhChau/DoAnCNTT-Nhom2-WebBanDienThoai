package MobileStore.Controller.User;

import java.util.HashMap;

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
import MobileStore.DTO.ShopCartDto;
import MobileStore.Entity.Accounts;
import MobileStore.Entity.Bills;
import MobileStore.Service.User.Bill.BillServiceImpl;
import MobileStore.Service.User.Cart.CartServiceImpl;

@Controller
public class ShopCartController extends BaseController{

	@Autowired 
	private CartServiceImpl cartService = new CartServiceImpl(); 

	@Autowired 
	private BillServiceImpl billService = new BillServiceImpl(); 

	@RequestMapping(value = {"AddCart/{id}"}) 
	public String AddCart(HttpServletRequest request,HttpSession session, @PathVariable long id) { 
		@SuppressWarnings("unchecked")
		HashMap<Long, ShopCartDto> cart = (HashMap<Long, ShopCartDto>)session.getAttribute("Cart");
		// Check cart 
		if(cart == null) {
			cart = new HashMap<Long, ShopCartDto>();
		}
		cart = cartService.AddCart(id, cart); 
		session.setAttribute("Cart", cart);
		session.setAttribute("sTotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("sTotalPriceCart", cartService.TotalPrice(cart));
		
		// After add Cart Completed, we redirect to the before page.
		return "redirect:" + request.getHeader("Referer"); 
	}

	@RequestMapping(value="{Cart_Detail}")
	public String CartDetails() {
		return "user/shop-cart/shopcart"; 
	}

	@RequestMapping(value = {"EditCart/{id}/{quanty}"}) 
	public String EditCart(HttpServletRequest request,HttpSession session, @PathVariable long id, @PathVariable int quanty) { 
		@SuppressWarnings("unchecked")
		HashMap<Long, ShopCartDto> cart = (HashMap<Long, ShopCartDto>)session.getAttribute("Cart");
		// Check cart 
		if(cart == null) {
			cart = new HashMap<Long, ShopCartDto>();
		}

		cart = cartService.Edit(id, quanty, cart); 
		session.setAttribute("Cart", cart);
		session.setAttribute("sTotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("sTotalPriceCart", cartService.TotalPrice(cart));
		// After add Cart Completed, we redirect to the before page.
		return "redirect:" + request.getHeader("Referer"); 
	}

	@RequestMapping(value = {"DeleteCart/{id}"}) 
	public String DeleteCart(HttpServletRequest request,HttpSession session, @PathVariable long id) { 
		@SuppressWarnings("unchecked")
		HashMap<Long, ShopCartDto> cart = (HashMap<Long, ShopCartDto>)session.getAttribute("Cart");
		// Check cart 
		if(cart == null) {
			cart = new HashMap<Long, ShopCartDto>();
		}

		cart = cartService.Delete(id, cart); 
		session.setAttribute("Cart", cart);
		session.setAttribute("sTotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("sTotalPriceCart", cartService.TotalPrice(cart));
		
		// After add Cart Completed, we redirect to the before page.
		return "redirect:" + request.getHeader("Referer"); 
	}

	@RequestMapping(value = "CheckOut", method = RequestMethod.GET)
	public ModelAndView CheckOut(HttpServletRequest request, HttpSession session) {
		_mvShare.setViewName("user/checkout/bill");
		Bills bills = new Bills(); 
		Accounts loginInfoUsers = (Accounts)session.getAttribute("LoginInfo");
		if(loginInfoUsers != null) {
			bills.setAddress(loginInfoUsers.getAddress()); 
			bills.setDisplay_name(loginInfoUsers.getDisplay_name());
			bills.setEmail(loginInfoUsers.getEmail());
			bills.setPhone(loginInfoUsers.getPhone());
		}
		_mvShare.addObject("bills", bills);
		return _mvShare;
	}

	@RequestMapping(value = "CheckOut", method = RequestMethod.POST)
	public String CheckOutBill(HttpServletRequest request, HttpSession session, @ModelAttribute("bills")Bills bill) {
		//bill.setTotal(Double.parseDouble((String)session.getAttribute("sTotalPriceCart")));
		//bill.setQuanty(Integer.valueOf((String)session.getAttribute("sTotalQuantyCart")));

		if(billService.AddBills(bill) > 0) {
			@SuppressWarnings("unchecked")
			HashMap<Long, ShopCartDto> carts = (HashMap<Long, ShopCartDto>)session.getAttribute("Cart");
			billService.AddBillsDetail(carts);
		}

		session.removeAttribute("Cart");
		return "redirect:home-page"; 
	}

	@RequestMapping(value = "infoUser", method =  RequestMethod.GET)
	public ModelAndView InfoUser(@ModelAttribute("account")Accounts accounts,HttpServletRequest request, HttpSession session) {
		Accounts loginInfoUsers = (Accounts)session.getAttribute("LoginInfo"); 
		if(loginInfoUsers != null) {
			accounts.setAddress(loginInfoUsers.getAddress()); 
			accounts.setDisplay_name(loginInfoUsers.getDisplay_name());
			accounts.setEmail(loginInfoUsers.getEmail());
			accounts.setPhone(loginInfoUsers.getPhone());
		}
		_mvShare.setViewName("user/info/infoUser");
		return _mvShare; 
	}



}
