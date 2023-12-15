package MobileStore.Service.User.Home;

import java.util.List;
import org.springframework.stereotype.Service;

import MobileStore.DTO.ProductDto;
import MobileStore.Entity.Categories;
import MobileStore.Entity.Menu;
import MobileStore.Entity.Slides;

@Service
public interface IHomeService {
	public List<Slides> getDataSlides(); 
	public List<Categories> getDataCategories(); 
	public List<Menu> getDataMenus(); 
	public List<ProductDto> getDataProduct() ;
	public List<ProductDto> getNewProduct() ;
	public List<ProductDto> getFeatureProduct();
	public List<ProductDto> getAllProduct();
}
