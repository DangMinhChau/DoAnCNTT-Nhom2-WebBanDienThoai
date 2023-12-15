package MobileStore.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import MobileStore.Entity.Menu;
import MobileStore.Entity.Mapper.MapperMenus;

@Repository
public class MenuDao extends BaseDao{
	public List<Menu> getDataMenus() {
		List<Menu> list = new ArrayList<Menu>();
		String sql = "SELECT * FROM menu" ;
		list = _jdbcTemplate.query(sql, new MapperMenus());
		return list; 
	}
}
