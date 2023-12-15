package MobileStore.Service.User.Product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MobileStore.DTO.ProductDto;
import MobileStore.Dao.ProductsDao;

@Service
public class ProductServiceImpl implements IProductService{

	@Autowired 
	private ProductsDao productsDao = new ProductsDao(); 
	
	@Override
	public ProductDto getProduct_DetailById(int id) {
		// TODO Auto-generated method stub
		List<ProductDto> list = productsDao.getProduct_DetailById(id);
		return list.get(0);
	}

	@Override
	public List<ProductDto> getRelatedProduct_ById(int id) {
		// TODO Auto-generated method stub
		return productsDao.getAllProductsById(id); 
	}

	@Override
	public List<ProductDto> SearchProductByName(String name) {
		// TODO Auto-generated method stub
		return productsDao.SearchProductByName(name);
	}
}
