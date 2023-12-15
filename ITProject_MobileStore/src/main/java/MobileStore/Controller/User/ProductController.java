package MobileStore.Controller.User;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import MobileStore.Controller.BaseController;
import MobileStore.Service.User.Product.IProductService;

@Controller 
public class ProductController extends BaseController{
	
	private int id_category = 0; 
	@Autowired 
	private IProductService _productService; 
	
	@RequestMapping(value = {"product_details/{id}"})
	public ModelAndView Index(@PathVariable long id) {
		_mvShare.setViewName("user/products/product");
		_mvShare.addObject("Product_Details", _productService.getProduct_DetailById((int)id)); 
		
		// Get Related Product by Id of Category 
		id_category = _productService.getProduct_DetailById((int)id).getId_category(); 
		_mvShare.addObject("Product_Related", _productService.getRelatedProduct_ById(id_category));
		return _mvShare;
	}
	
	@RequestMapping(value = "/Products")
	public ModelAndView SeeAllProduct() {
		_mvShare.setViewName("user/products/all-products");
		_mvShare.addObject("all_products",_homeServiceImpl.getAllProduct());
		return _mvShare;
	}
	
	@RequestMapping(value = "search")
	public ModelAndView Search(String name,HttpServletRequest request) {
		
		name = request.getParameter("searchbar"); 
		_mvShare.setViewName("user/search/search");
		_mvShare.addObject("SearchProductByName", _productService.SearchProductByName(name));
		
		return _mvShare;
	}
}
