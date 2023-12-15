package MobileStore.Service.User.Category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MobileStore.DTO.ProductDto;
import MobileStore.Dao.ProductsDao;

@Service
public class CategoryServiceImpl implements ICategoryService{
	@Autowired
	private ProductsDao productsDao; 
	@Override
	public List<ProductDto> getAllProductById(int id) {
		// TODO Auto-generated method stub
		List<ProductDto> product = productsDao.getAllProductsById(id);
		return product;
	}
	@Override
	public List<ProductDto> getDataProductPaginate(int start, int end) {
		// TODO Auto-generated method stub
		List<ProductDto> product = productsDao.getAllProductsByPaginates(start, end);
		return product;
	}

}
