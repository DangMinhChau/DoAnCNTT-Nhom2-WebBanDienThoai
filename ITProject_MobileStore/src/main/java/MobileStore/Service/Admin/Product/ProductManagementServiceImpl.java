package MobileStore.Service.Admin.Product;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MobileStore.DTO.ProductDto;
import MobileStore.Dao.ProductsDao;
import MobileStore.Entity.Colors;
import MobileStore.Entity.Products;

@Service
public class ProductManagementServiceImpl implements IProductManagementService{
	@Autowired 
	private ProductsDao productsDao = new ProductsDao(); 

	@Override
	public void DeleteProduct(Serializable id) {
		// TODO Auto-generated method stub
		productsDao.DeleteProduct(id);
	}

	@Override
	public ProductDto getProduct_DetailById(int id) {
		// TODO Auto-generated method stub
		return productsDao.FindProductById(id);
	}

	@Override
	public int AddNewProduct(Products product,Serializable id) {
		// TODO Auto-generated method stub
		if(product.getName() != null || product.getSizes() != null 
				|| product.getDetails() != null
				|| product.getTitle() != null 
				|| product.getName_color() != null
				) {
			if(product.getPrice() > 0) {
				return productsDao.AddNewProduct(product,id);
			}
			else {
				return 0; 
			}
		}
		else {
			return 0 ;
		}
	}

	@Override
	public int AddColorForNewProduct(Colors colors, Serializable id) {
		// TODO Auto-generated method stub
		return productsDao.AddColorForNewProduct(colors, id);
	}

	@Override
	public int AddNewProductDto(ProductDto product, Serializable id) {
		// TODO Auto-generated method stub
		return  productsDao.AddNewProductDto(product, id);
	}

	@Override
	public int UpdateProduct(ProductDto productDto, Serializable id) {
		// TODO Auto-generated method stub

		return productsDao.UpdateProduct(productDto, id);
	}

	@Override
	public int UpdateColorForProduct(Colors color, Serializable id) {
		// TODO Auto-generated method stub
		return productsDao.UpdateColorForProduct(color, id);
	}
}
