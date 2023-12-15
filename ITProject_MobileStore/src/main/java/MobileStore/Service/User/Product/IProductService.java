package MobileStore.Service.User.Product;

import java.util.List;

import org.springframework.stereotype.Service;

import MobileStore.DTO.ProductDto;

@Service
public interface IProductService {
	public ProductDto getProduct_DetailById(int id);
	public List<ProductDto> getRelatedProduct_ById(int id); 
	public List<ProductDto> SearchProductByName(String name);
}
