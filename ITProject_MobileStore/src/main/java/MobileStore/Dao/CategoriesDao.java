package MobileStore.Dao;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;

import MobileStore.Entity.Categories;
import MobileStore.Entity.Mapper.MapperCategories;

@Repository
public class CategoriesDao extends BaseDao{
	public List<Categories> getDataCategories() {
		List<Categories> list = new ArrayList<Categories>();
		String sql = "SELECT * FROM categorys" ;
		list = _jdbcTemplate.query(sql, new MapperCategories());
		return list; 
	}
}
