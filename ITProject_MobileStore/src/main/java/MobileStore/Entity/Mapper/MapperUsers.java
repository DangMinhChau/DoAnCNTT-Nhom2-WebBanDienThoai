package MobileStore.Entity.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import MobileStore.Entity.Accounts;

public class MapperUsers implements RowMapper<Accounts>{
	
	@Override
	public Accounts mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Accounts users = new Accounts(); 
		
		users.setId(rs.getLong("id")); 
		users.setEmail(rs.getString("email"));
		users.setPassword(rs.getString("password"));
		users.setDisplay_name(rs.getString("display_name"));
		users.setAddress(rs.getString("address"));
		users.setRole(rs.getBoolean("role"));
		users.setPhone(rs.getString("Phone"));
		return users;
	}
}
