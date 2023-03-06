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

import dao.mapper.SaleMapper;
import dao.mapper.UserMapper;
import logic.User;

@Repository
public class UserDao {
	@Autowired
	private SqlSessionTemplate template;
	private Map<String,Object> param = new HashMap<>();

	public void insert(User user) {
		
	    template.getMapper(UserMapper.class).insert(user);	
	}
	public User selectOne(String userid) {
		param.clear();
		param.put("userid", userid);	
		return template.getMapper(UserMapper.class).selectOne(param);	
	}
	public void update(User user) {	
	    template.getMapper(UserMapper.class).update(user);	
	}
	public void delete(String userid) {
		param.clear();
		param.put("userid", userid);
		template.getMapper(UserMapper.class).delete(userid);
	}
	public void chgpass(String userid, String pass) {
		param.clear();
		param.put("userid", userid);
		param.put("password", pass);
		template.update
 ("update useraccount set password=:password where userid=:userid",
		param);
	}
	public String search(User user, String url) {
		param.clear();
		param.put("email", user.getEmail());
		param.put("phoneno", user.getPhoneno());
		if(url.equals("id")) { //아이디 찾기
			param.put("col", "substr(userid, 1, length(userid) -2) || '**'");
		}
		else if(url.equals("pw")) { //비밀번호 찾기
			param.put("userid", user.getUserid());
			param.put("col", "'**' || substr(password, 3, length(password) -2)");
		}
		return template.getMapper(UserMapper.class).search(param);
	}
}