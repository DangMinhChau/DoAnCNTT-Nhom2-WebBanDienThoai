package MobileStore.Entity.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import MobileStore.DTO.ProductDto;

public class MapperProductDto implements RowMapper<ProductDto>{

	@Override
	public ProductDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub 
		ProductDto products = new ProductDto(); 
		
		products.setId_product(rs.getLong("id_product"));
		products.setId_category(rs.getInt("id_category"));
		products.setSizes(rs.getString("sizes"));
		products.setName(rs.getString("name"));
		products.setPrice(rs.getDouble("price"));
		products.setTitle(rs.getString("title"));
		products.setHighlight(rs.getBoolean("highlight"));
		products.setNew_product(rs.getBoolean("new_product"));
		products.setDetails(rs.getString("details"));
		products.setId_color(rs.getLong("id_color"));
	    products.setName_color(rs.getString("name_color"));
	    products.setImg(rs.getString("img"));
	    products.setCreated_at(rs.getDate("created_at"));
	    products.setUpdated_at(rs.getDate("updated_at"));
		return products;
	}

}
