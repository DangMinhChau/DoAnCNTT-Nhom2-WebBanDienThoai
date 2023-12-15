package MobileStore.Service.User.Home;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MobileStore.DTO.ProductDto;
import MobileStore.Dao.CategoriesDao;
import MobileStore.Dao.MenuDao;
import MobileStore.Dao.ProductsDao;
import MobileStore.Dao.SlidesDao;
import MobileStore.Entity.Categories;
import MobileStore.Entity.Menu;
import MobileStore.Entity.Slides;

@Service
public class HomeServiceImpl implements IHomeService{
    @Autowired
	private SlidesDao slidesDao; 

    @Autowired 
    private CategoriesDao categoriesDao; 
    
    @Autowired 
    private MenuDao menuDao; 
    
    @Autowired
    private ProductsDao productsDao; 
    
	@Override
	public List<Slides> getDataSlides() {
		// TODO Auto-generated method stub 
		return slidesDao.GetDataSlides();
	}

	@Override
	public List<Categories> getDataCategories() {
		// TODO Auto-generated method stub
		return categoriesDao.getDataCategories();
	}

	@Override
	public List<Menu> getDataMenus() {
		// TODO Auto-generated method stub
		return menuDao.getDataMenus();
	}

	@Override
	public List<ProductDto> getDataProduct() {
		// TODO Auto-generated method stub
		return productsDao.getDataProducts();
	}

	@Override
	public List<ProductDto> getNewProduct() {
		// TODO Auto-generated method stub
		return productsDao.getNewProduct();
	}

	@Override
	public List<ProductDto> getFeatureProduct() {
		// TODO Auto-generated method stub
		return productsDao.getFeatureProduct();
	}

	@Override
	public List<ProductDto> getAllProduct() {
		// TODO Auto-generated method stub
		return productsDao.getAllProduct();
	}
}
