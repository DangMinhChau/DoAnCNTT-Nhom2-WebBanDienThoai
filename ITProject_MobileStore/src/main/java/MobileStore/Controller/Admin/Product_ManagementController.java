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
import MobileStore.DTO.ProductDto;
import MobileStore.Entity.Colors;
import MobileStore.Entity.Products;
import MobileStore.Service.Admin.Product.ProductManagementServiceImpl;

@Controller
public class Product_ManagementController extends BaseController{

	private long id = 51; 

	@Autowired 
	private ProductManagementServiceImpl productManagementService = new ProductManagementServiceImpl(); 

	@RequestMapping(value = "DeleteProduct/{id}") 
	public String DeleteProduct(@PathVariable long id, HttpServletRequest request) {
		productManagementService.DeleteProduct(id);
		return "redirect:"+request.getHeader("referer"); 
	}

	@RequestMapping(value="product-list")
	public ModelAndView ListProduct() {
		_mvShare.setViewName("admin/product/listProduct");
		_mvShare.addObject("all_products",_homeServiceImpl.getAllProduct());
		return _mvShare;
	}


	@RequestMapping(value = "/EditProduct/{id}", method = RequestMethod.GET)
	public ModelAndView goToUpdateProduct(@PathVariable long id){
		_mvShare.setViewName("admin/product/updateProduct"); 
		_mvShare.addObject("product",productManagementService.getProduct_DetailById((int)id));
		_mvShare.addObject("id", id); 
		return _mvShare;
	}

	@RequestMapping(value = "/EditProduct/{id}", method = RequestMethod.POST) 
	public ModelAndView UpdateProduct(@PathVariable long id, 
			@ModelAttribute("product") ProductDto productDto,HttpServletRequest request, HttpSession session) {

		try {
			int count = productManagementService.UpdateProduct(productDto, id); 
			Colors color = new Colors();
			color.setImg(productDto.getImg()); 
			color.setName(productDto.getName_color()); 
			int check = productManagementService.UpdateColorForProduct(color, id);
			if(count > 0 && check > 0) {
				_mvShare.addObject("UpdateProductStatus","Update Completed"); 
				_mvShare.setViewName("redirect:" + request.getHeader("Referer"));

			}
			else {
				_mvShare.addObject("UpdateProductStatus","Update Failed"); 
			}
		} catch (Exception e) {
			_mvShare.addObject("UpdateProductStatus","Update Failed"); 
		}
		
		return _mvShare; 
	}

	@RequestMapping(value = "/addNewProduct",method = RequestMethod.GET )
	public ModelAndView  AddNewProduct() {
		_mvShare.setViewName("admin/product/createNewProduct");
		_mvShare.addObject("categories",_homeServiceImpl.getDataCategories());
		_mvShare.addObject("product", new Products());
		return _mvShare ;
	}

	@RequestMapping(value = "/addNewProduct",method = RequestMethod.POST )
	public ModelAndView CreateNewProduct(@ModelAttribute("product") Products product) {

		Colors color = new Colors(); 
      
		int flag = 0; 
		try {
			int checkAddProduct = productManagementService.AddNewProduct(product,id); 
			flag = checkAddProduct; 
			color.setImg(product.getImg());
			color.setName(product.getName_color());  
			
			if(checkAddProduct == 0) {
				_mvShare.addObject("checkAddProduct", "Create new product Failed");
			}
			else if (checkAddProduct > 0){
				int checkAddColorForNewProduct = productManagementService.AddColorForNewProduct(color, id); 
				if (checkAddColorForNewProduct > 0) {
					_mvShare.addObject("checkAddProduct", "Create new product Successfully");    
					id += 1; 
				}
				else {
					_mvShare.addObject("checkAddProduct", "Create new product Failed");
				}
			}
			else {
				_mvShare.addObject("checkAddProduct", "Create new product Failed");
			}
		} catch (Exception e) {
			// TODO: handle exception
			_mvShare.addObject("checkAddProduct", "Create new product Failed");
		}
		_mvShare.addObject("flag",flag); 
		_mvShare.addObject("admin/product/createNewProduct");
		return _mvShare;
	}
}
