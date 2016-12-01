package dao;

import java.util.ArrayList;

import entities.Produit;

public interface ProduitDAO {
	
	void creer(Produit produit);
	void update(double montant, int id_product, int id_acheteur);
	Produit trouverparid(int id);
	ArrayList<Produit> trouverparmarque(String marque);
	ArrayList<Produit> trouverparvendeur(int id_vendeur);
	ArrayList<Produit> mesachatsencours(int id_acheteur);
	ArrayList<Produit> allproduct();
	ArrayList<Produit> produithomepage();

}
