package managers;

import java.util.ArrayList;

import dao.ProduitDAO;
import dao.UserDAO;
import entities.User;

public class UserManager {
	private UserDAO usdao;
	private ProduitDAO prodao;
	public UserDAO getUsdao() {
		return usdao;
	}
	public void setUsdao(UserDAO usdao) {
		this.usdao = usdao;
	}
	public ProduitDAO getProdao() {
		return prodao;
	}
	public void setProdao(ProduitDAO prodao) {
		this.prodao = prodao;
	}
	
	public void createUser(User user){
		usdao.creer(user);
	}
	
	public User findUser(String email,String password){
		return usdao.trouver(email,password);
	}
	public User findByEmail(String email){
		return usdao.trouver(email);
	}
	public ArrayList<User> findAllUsers(){
		return usdao.tous();
	}
	public void UpdateUser(User user){
		usdao.update(user);
	}
	public void DeleteUser(String email){
		usdao.delete(email);
	}

}
