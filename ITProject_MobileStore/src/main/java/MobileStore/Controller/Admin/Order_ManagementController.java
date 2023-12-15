package MobileStore.Controller.Admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import MobileStore.Controller.BaseController;
import MobileStore.DTO.ProductDto;
import MobileStore.Entity.BillDetail;
import MobileStore.Service.Admin.Order.OrderManagementServiceImpl;
import MobileStore.Service.User.Product.IProductService;

@Controller
public class Order_ManagementController extends BaseController{

	@Autowired 
	private OrderManagementServiceImpl orderManagementService = new OrderManagementServiceImpl(); 

	@Autowired 
	private IProductService _productService; 

	@RequestMapping(value = "/order-list")
	public ModelAndView ListOrder() {
		_mvShare.setViewName("admin/order/order_list"); 
		_mvShare.addObject("InfoAllBill", orderManagementService.getBills());
		return _mvShare; 
	}

	@RequestMapping(value = "/billDetails/{id}") 
	public ModelAndView BillDetails(@PathVariable long id, ModelMap map) {
		
		_mvShare.setViewName("admin/order/order_details");
		_mvShare.addObject("BillDetails", orderManagementService.getBillDetailsByIdBill(id));
		
		List<BillDetail> billDetail =  orderManagementService.getBillDetailsByIdBill(id); 
		List<ProductDto> listProduct = new ArrayList<ProductDto>(); 
		
		double totalPrice = 0.0; 
		if(billDetail != null) {
			for (BillDetail bill : billDetail) {
				long id_product = bill.getId_product(); 
				totalPrice += bill.getTotal();
				listProduct.add(_productService.getProduct_DetailById((int)id_product));
			}
			_mvShare.addObject("listProductById", listProduct); 
			_mvShare.addObject("totalOrder", totalPrice); 
		}
		else {
			_mvShare.addObject("getProductByIdStatus", "Failed"); 
		}
		return _mvShare; 
	}
}
