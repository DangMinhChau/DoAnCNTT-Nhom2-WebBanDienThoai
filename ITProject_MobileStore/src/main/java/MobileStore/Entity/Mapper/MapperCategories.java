package MobileStore.Entity.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import MobileStore.Entity.Categories;

public class MapperCategories implements RowMapper<Categories>{
	
	@Override
	public Categories mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub 
		Categories categories = new Categories(); 
		
		categories.setId(rs.getInt("id"));
		categories.setName(rs.getString("name"));
		categories.setDescription(rs.getString("description"));
		return categories;
	}

}
