package MobileStore.Service.Admin.Product;

import java.io.Serializable;

import org.springframework.stereotype.Service;

import MobileStore.DTO.ProductDto;
import MobileStore.Entity.Colors;
import MobileStore.Entity.Products;

@Service
public interface IProductManagementService {
	public void DeleteProduct(Serializable id);
	public ProductDto getProduct_DetailById(int id);
	public int AddNewProduct(Products product,Serializable id);
	public int AddColorForNewProduct(Colors colors, Serializable id) ;
	public int AddNewProductDto(ProductDto product, Serializable id);
	public int UpdateProduct(ProductDto productDto, Serializable id);
	public int UpdateColorForProduct(Colors color, Serializable id);
}
