package dao;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import dao.mapper.ItemMapper;
import logic.Item;

/*
 * @Component : 해당 클래스를 객체화
 * model 기능 : db와 연결된 클래스
 */
@Repository  //@Component + model 기능
public class ItemDao {
	@Autowired //SqlSessionTemplate 객체 주입
	private SqlSessionTemplate template;
	private Map<String,Object> param = new HashMap<>();
	public List<Item> list() {
		return template.getMapper(ItemMapper.class).select();
	}
	public Item getItem(Integer id) {
		param.clear();
		param.put("id", id);
		//queryForObject() : select 결과가 한개 레코드만 가능
		//                   결과가 여러개인 경우 오류 발생
		return template.getMapper(ItemMapper.class).getItem(param);
	}
	//item 테이블의 id값중 최대값 리턴
	public int maxId() {
		return template.getMapper(ItemMapper.class).maxId();
	}
	public void insert(Item item) {
		template.getMapper(ItemMapper.class).insert(item);	
	}
	
	public void update(Item item) {
		//item 객체의 값을 프로퍼티를 이용하여 파라미터로 사용함.
		template.getMapper(ItemMapper.class).update(item);
	}
	public void delete(Integer id) {
		param.clear();
		param.put("id", id);
		template.getMapper(ItemMapper.class).delete(param);
	}
	public Item selectOne(int itemid) {
		return null;
	}
}
