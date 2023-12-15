package MobileStore.Service.User.Category;

import java.util.List;

import org.springframework.stereotype.Service;

import MobileStore.DTO.ProductDto;

@Service
public interface ICategoryService {
	public List<ProductDto> getAllProductById(int id);
	public List<ProductDto> getDataProductPaginate(int start, int end);
}
