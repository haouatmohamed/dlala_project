package dao;

import java.util.ArrayList;

import org.springframework.jdbc.core.simple.SimpleJdbcDaoSupport;

import entities.User;
import utilities.UserRowMapper;

public class UserDAOImp extends SimpleJdbcDaoSupport implements UserDAO {

	@Override
	public void creer(User user) {
		getSimpleJdbcTemplate().update("INSERT INTO user(nom,prenom,email,adresse,pass,privilege) VALUES (?, ?, ? ,? ,?,?)", user.getNom(),
				user.getPrenom(),user.getEmail(),user.getAdresse(),user.getPassword(),"no");
	}

	@Override
	public User trouver(String email, String password) {
		ArrayList<User> users=(ArrayList<User>)getSimpleJdbcTemplate().query("SELECT * FROM user WHERE email=? AND pass=? ", new UserRowMapper(), email,password);
		return users.isEmpty()?null:users.get(0);
	}

	

	@Override
	public User trouver(String email) {
		ArrayList<User> users=(ArrayList<User>)getSimpleJdbcTemplate().query("SELECT * FROM user WHERE email=?  ", new UserRowMapper(), email);
		return users.isEmpty()?null:users.get(0);
	}

	@Override
	public ArrayList<User> tous() {
		ArrayList<User> users=(ArrayList<User>)getSimpleJdbcTemplate().query("SELECT * from user", new UserRowMapper());
		return users.isEmpty()?null:users;
	}

	@Override
	public void update(User utilisateur) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String email) {
		getSimpleJdbcTemplate().update("DELETE from user where email=?", email);

	}

}
