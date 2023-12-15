package MobileStore.Dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import MobileStore.DTO.ProductDto;
import MobileStore.Entity.Colors;
import MobileStore.Entity.Products;
import MobileStore.Entity.Mapper.MapperProductDto;

@Repository
public class ProductsDao extends BaseDao{

	public StringBuffer sqlString() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id AS id_product ");
		sql.append(", p.id_category ");
		sql.append(", p.sizes ");
		sql.append(", p.name ");
		sql.append(", p.price ");
		sql.append(", p.title ");
		sql.append(", p.highlight ");
		sql.append(", p.new_product ");
		sql.append(", p.details ");
		sql.append(", c.id AS id_color ");
		sql.append(", c.name AS name_color ");
		sql.append(", c.img ");
		sql.append(", p.created_at ");
		sql.append(", p.updated_at ");
		sql.append("FROM ");
		sql.append("products AS p ");
		sql.append("INNER JOIN ");
		sql.append("colors AS c ");
		sql.append("ON p.id = c.id_product ");
		return sql; 
	}

	public String GetProduct() {
		StringBuffer sql = sqlString(); 
		sql.append("SELECT * FROM `products` ");
		sql.append("WHERE 1 ");
		
		return sql.toString();
	}

	public String GetNewProduct() {
		StringBuffer sql = sqlString();  
		sql.append("WHERE 1 = 1 "); 
		sql.append("AND p.new_product = TRUE "); 
		sql.append("GROUP BY p.id, c.id_product "); 
		sql.append("ORDER BY rand() "); 
		//sql.append("LIMIT 5");
		
		return sql.toString(); 
	}

	public String GetFeatureProduct() {
		StringBuffer sql = sqlString();  
		sql.append("WHERE 1 = 1 "); 
		sql.append("AND p.highlight = TRUE "); 
		sql.append("GROUP BY p.id, c.id_product "); 
		sql.append("ORDER BY rand() "); 
		//sql.append("LIMIT 10 "); 
		
		return sql.toString(); 
	}

	public String GetAllProduct() {
		StringBuffer sql = sqlString();  
		sql.append("WHERE 1 = 1 "); 
		sql.append("GROUP BY p.id, c.id_product "); 
		sql.append("ORDER BY rand() "); 
		
		return sql.toString(); 
	}
	
	public List<ProductDto> getAllProduct() {
		List<ProductDto> listProduct = new ArrayList<ProductDto>();
		String sql = GetAllProduct();
		listProduct = _jdbcTemplate.query(sql, new MapperProductDto());
		
		return listProduct; 
	}

	public String GetProductById(int id) {
		StringBuffer sql = sqlString(); 
		sql.append(" WHERE 1 = 1 ");
		sql.append(" AND id_category = " + id );
		
		return sql.toString();
	}

	public String GetProductByPaginates(int start, int end) {
		StringBuffer sql = sqlString(); 
		sql.append("LIMIT " + start + ", " + end );
		
		return sql.toString();
	}
	
	public List<ProductDto> getNewProduct() {
		List<ProductDto> listProduct = new ArrayList<ProductDto>();
		String sql = GetNewProduct(); 
		listProduct = _jdbcTemplate.query(sql, new MapperProductDto());
		
		return listProduct; 
	}

	public List<ProductDto> getFeatureProduct() {
		List<ProductDto> listProduct = new ArrayList<ProductDto>();
		String sql = GetFeatureProduct();
		listProduct = _jdbcTemplate.query(sql, new MapperProductDto());
		
		return listProduct; 
	}

	public List<ProductDto> getDataProducts() {
		List<ProductDto> listProduct = new ArrayList<ProductDto>();
		String sql = GetProduct();
		listProduct = _jdbcTemplate.query(sql, new MapperProductDto());
		return listProduct; 
	}

	public List<ProductDto> getAllProductsById(int id) {
		List<ProductDto> listProduct = new ArrayList<ProductDto>();
		String sql = GetProductById(id);
		listProduct = _jdbcTemplate.query(sql, new MapperProductDto());
		return listProduct; 
	}

	public List<ProductDto> getAllProductsByPaginates(int start, int end) {
		List<ProductDto> listProduct = new ArrayList<ProductDto>();
		String sql = GetProductByPaginates(start, end);
		listProduct = _jdbcTemplate.query(sql, new MapperProductDto());
		return listProduct; 
	}

	public String GetProduct_DetailById(int id) {
		StringBuffer sql = sqlString(); 
		sql.append(" WHERE 1 = 1 ");
		sql.append(" AND p.id = " + id + " ");
		sql.append("LIMIT 1"); 
		return sql.toString();
	}

	public List<ProductDto> getProduct_DetailById(int id) {
		// TODO Auto-generated method stub
		List<ProductDto> listProduct = new ArrayList<ProductDto>();
		String sql = GetProduct_DetailById(id); 
		listProduct = _jdbcTemplate.query(sql, new MapperProductDto()); 
		return listProduct; 
	}

	public ProductDto FindProductById(int id) {
		// TODO Auto-generated method stub
		ProductDto product = new ProductDto();
		String sql = GetProduct_DetailById(id); 
		product = _jdbcTemplate.queryForObject(sql, new MapperProductDto()); 
		return product; 
	}

	public void DeleteProduct(Serializable id) {
		String sql = "DELETE FROM products WHERE id=?" ;
		_jdbcTemplate.update(sql,id); 
	}

	public int AddNewProduct(Products product, Serializable id) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO  products (");
		sql.append(" id, ");
		sql.append(" id_category, ");
		sql.append(" sizes, ");
		sql.append(" name, ");
		sql.append(" price, ");
		sql.append(" title, ");
		sql.append(" highlight, ");
		sql.append(" new_product, ");
		sql.append(" details, ");
		sql.append(" created_at, ");
		sql.append(" updated_at ");
		sql.append(") ");
		sql.append("VALUES ( ");
		sql.append(" "+id+",  ");
		sql.append(" "+product.getId_category()+",  ");
		sql.append(" '"+product.getSizes()+"', ");
		sql.append(" '"+product.getName()+"', ");
		sql.append(" "+product.getPrice()+", ");
		sql.append(" '"+product.getTitle()+"', ");
		sql.append(" "+product.getHighlight()+", ");
		sql.append(" "+product.getNew_product()+", ");
		sql.append(" '"+product.getDetails()+"', ");
		sql.append("NOW(), ");
		sql.append("NOW() ");
		sql.append(");");

		int insert = _jdbcTemplate.update(sql.toString()); 
		return insert; 
	}

	public int AddNewProductDto(ProductDto product, Serializable id) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO  products (");
		sql.append(" id_product, ");
		sql.append(" id_category, ");
		sql.append(" sizes, ");
		sql.append(" name, ");
		sql.append(" price, ");
		sql.append(" title, ");
		sql.append(" highlight, ");
		sql.append(" new_product, ");
		sql.append(" details, ");
		sql.append(" created_at, ");
		sql.append(" updated_at ");
		sql.append(") ");
		sql.append("VALUES ( ");
		sql.append(" "+id+",  ");
		sql.append(" "+product.getId_category()+",  ");
		sql.append(" '"+product.getSizes()+"', ");
		sql.append(" '"+product.getName()+"', ");
		sql.append(" "+product.getPrice()+", ");
		sql.append(" '"+product.getTitle()+"', ");
		sql.append(" "+product.isHighlight()+", ");
		sql.append(" "+product.isNew_product()+", ");
		sql.append(" '"+product.getDetails()+"', ");
		sql.append("NOW(), ");
		sql.append("NOW() ");
		sql.append(");");

		int insert = _jdbcTemplate.update(sql.toString()); 
		return insert; 
	}
	
	public int AddColorForNewProduct(Colors colors, Serializable id) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO colors(");
		sql.append(" id_product, ");
		sql.append(" name, ");
		sql.append(" img) ");
		sql.append("VALUES ( ");
		sql.append(""+id+", ");
		sql.append(" '"+colors.getName()+"', ");
		sql.append(" '"+colors.getImg()+"' )");
		int insert = _jdbcTemplate.update(sql.toString()) ;
		return insert; 
	}
	
	public ProductDto getProductDtoById(Serializable id) {
		String sql = "SELECT * FROM products WHERE id = "+id+" " ; 
		ProductDto productDto = _jdbcTemplate.queryForObject(sql, new MapperProductDto(),id);  
		return productDto; 
	}
	
	public int UpdateProduct(ProductDto productDto, Serializable id) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE products SET ");
		sql.append(" sizes ='"+productDto.getSizes()+"', ");
		sql.append(" name ='"+productDto.getName()+"', ");
		sql.append(" price ='"+productDto.getPrice()+"', ");
		sql.append(" title ='"+productDto.getTitle()+"', ");
		sql.append(" highlight = "+productDto.isHighlight()+", ");
		sql.append(" new_product = "+productDto.isNew_product()+", ");
		sql.append(" details ='"+productDto.getDetails()+"', ");
		sql.append(" updated_at = NOW() ");
		sql.append(" WHERE id = "+id+" ");
		
		int insert = _jdbcTemplate.update(sql.toString()); 
		return insert; 
	}
	
	public int UpdateColorForProduct(Colors color, Serializable id) {
		
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE colors SET ");
		sql.append(" name ='"+color.getName()+"', ");
		sql.append("`img`='"+color.getImg()+"' ");
		sql.append("WHERE id_product = "+id+"");

		int insert = _jdbcTemplate.update(sql.toString()); 
		return insert; 
	}
	
	public List<ProductDto> SearchProductByName(String name){
		StringBuffer sql = sqlString(); 
		sql.append("WHERE 1 = 1 "); 
		sql.append("AND p.name LIKE '%"+name+"%'"); 
		List<ProductDto> list = new ArrayList<ProductDto>(); 
		list = _jdbcTemplate.query(sql.toString(), new MapperProductDto()); 
		return list; 
		
	}
}














