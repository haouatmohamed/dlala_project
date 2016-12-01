package managers;

import java.util.ArrayList;

import dao.ProduitDAO;
import dao.UserDAO;
import entities.Produit;

public class ProductManagers {
	
	private ProduitDAO prodao;
	private UserDAO usdao;
	public ProduitDAO getProdao() {
		return prodao;
	}
	public void setProdao(ProduitDAO prodao) {
		this.prodao = prodao;
	}
	public UserDAO getUsdao() {
		return usdao;
	}
	public void setUsdao(UserDAO usdao) {
		this.usdao = usdao;
	}
	
	public void createProduit(Produit produit){
		prodao.creer(produit);
	}
	public Produit findById(int id){
		return prodao.trouverparid(id);
	}
	public void change_price(double montant, int id_product, int id_acheteur){
		prodao.update(montant, id_product, id_acheteur);
	}


	public ArrayList<Produit> findBymarque(String marque){
		ArrayList<Produit> produits=prodao.trouverparmarque(marque);
		return produits;
	}
	public ArrayList<Produit> findByseller(int id_vendeur){
		ArrayList<Produit> produits=prodao.trouverparvendeur(id_vendeur);
		return produits;
	}
	public ArrayList<Produit> findALL(){
		return prodao.allproduct();
	}
	public ArrayList<Produit> fillHomePage(){
		return prodao.produithomepage();
	}
	public ArrayList<Produit> mycommands(int id_user){
		return prodao.mesachatsencours(id_user);
	}
	

}
