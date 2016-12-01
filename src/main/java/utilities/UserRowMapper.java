package utilities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.simple.ParameterizedRowMapper;

import entities.User;

public class UserRowMapper implements ParameterizedRowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int arg1) throws SQLException {
		User user = new User(rs.getInt("id"), rs.getString("nom"), rs.getString("prenom"),
				rs.getString("email"), rs.getString("adresse"), rs.getString("pass"), rs.getString("privilege"));
		return user;
	}
	
		

}
