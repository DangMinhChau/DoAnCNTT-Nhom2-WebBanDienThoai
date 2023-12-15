package MobileStore.Entity.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import MobileStore.Entity.Colors;

public class MapperColors  implements RowMapper<Colors>{

	@Override
	public Colors mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Colors colors = new Colors();  
		
		colors.setId_product(rs.getLong("id_product"));
		colors.setName(rs.getString("name"));
		colors.setImg(rs.getString("img"));
		return colors;
	}

}
