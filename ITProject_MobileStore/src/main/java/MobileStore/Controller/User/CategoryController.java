package MobileStore.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import MobileStore.Controller.BaseController;
import MobileStore.DTO.PaginatesDto;
import MobileStore.Service.User.Category.CategoryServiceImpl;
import MobileStore.Service.User.Paginates.PaginateServiceImpl;

@Controller 
public class CategoryController extends BaseController{

	/*
	private int _totalProductsPage = 9; 
	private int _theFirstPageToShowOnCategory = 1; 
	
	*/
	@Autowired
	private CategoryServiceImpl categoryService;
	
	@Autowired 
	private PaginateServiceImpl paginateService; 
	@RequestMapping(value= "/category/{id}")
	public ModelAndView Category(@PathVariable String id) {
		// Set View 
		_mvShare.setViewName("user/products/category");
		// Get totalData
		int totalData = categoryService.getAllProductById(Integer.parseInt(id)).size(); 
		// Get Info of Paginate 
		PaginatesDto paginatesInfo = paginateService.getInfoPaginate(totalData, 1, 9); 
		
		// Get id of category selected 
		_mvShare.addObject("ProductsById", categoryService.getAllProductById(Integer.parseInt(id)));
		_mvShare.addObject("PaginateInfo", paginatesInfo); 
		_mvShare.addObject("ProductsPaginate", categoryService.getDataProductPaginate(paginatesInfo.getStart(), paginatesInfo.getEnd())); 
		return _mvShare; 
	}
}
