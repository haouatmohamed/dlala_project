package dao;

import java.util.ArrayList;

import org.springframework.jdbc.core.simple.SimpleJdbcDaoSupport;

import entities.Produit;
import utilities.ProductRowMapper;

public class ProduitDAOImp extends SimpleJdbcDaoSupport implements ProduitDAO {

	@Override
	public void creer(Produit produit) {
		getSimpleJdbcTemplate().update("INSERT INTO produit (id_vendeur,nom, marque, prix_initial,prix_actuel, id_acheteur,date_du_produit,jours_mise) VALUES (?, ?, ? ,? , ?,?,NOW(),?)", produit.getId_vendeur(),
				produit.getNom(),produit.getMarque(),produit.getPrixinitial(),produit.getPrixinitial(),produit.getId_acheteur(),produit.getJoursmise());	
	}

	@Override
	public void update(double montant, int id_product, int id_acheteur) {
		getSimpleJdbcTemplate().update("UPDATE produit SET prix_actuel=? , id_acheteur=? WHERE id=?", montant,id_acheteur,id_product);
		getSimpleJdbcTemplate().update("INSERT INTO produit_user VALUES(?,?)", id_product,id_acheteur);

	}

	@Override
	public Produit trouverparid(int id) {
		ArrayList<Produit> resultat=(ArrayList<Produit>) getSimpleJdbcTemplate().query("SELECT * FROM produit  WHERE id=?", new ProductRowMapper(),id	);
		return resultat.isEmpty()?null:resultat.get(0);
	}

	@Override
	public ArrayList<Produit> trouverparmarque(String marque) {
		ArrayList<Produit> produits =(ArrayList<Produit>) getSimpleJdbcTemplate().query("SELECT * FROM produit WHERE marque=?", new ProductRowMapper(), marque);
		return produits.isEmpty()?null:produits;
		
	}

	@Override
	public ArrayList<Produit> trouverparvendeur(int id_vendeur) {
		ArrayList<Produit> produits =(ArrayList<Produit>)getSimpleJdbcTemplate().query("SELECT * FROM produit WHERE id_vendeur=?", new ProductRowMapper(), id_vendeur);
		return produits.isEmpty()?null:produits;
	}
	

	@Override
	public ArrayList<Produit> mesachatsencours(int id_acheteur) {
		ArrayList<Produit> produits = (ArrayList<Produit>)getSimpleJdbcTemplate().query("SELECT p.* From produit p INNER JOIN produit_user pu ON pu.id_produit=p.id INNER JOIN user u ON u.id=pu.id_user WHERE u.id=?"
				, new ProductRowMapper(), id_acheteur);
				return produits.isEmpty()?null:produits;
	}

	@Override
	public ArrayList<Produit> allproduct() {
		ArrayList<Produit> produits=(ArrayList<Produit>)getSimpleJdbcTemplate().query("SELECT * FROM produit ", new ProductRowMapper());
		return produits.isEmpty()?null:produits;
	}

	@Override
	public ArrayList<Produit> produithomepage() {
		ArrayList<Produit> produits=(ArrayList<Produit>)getSimpleJdbcTemplate().query("SELECT * FROM `produit` WHERE DATEDIFF(CURRENT_DATE(), date_du_produit) < jours_mise", new ProductRowMapper());
		return produits.isEmpty()?null:produits;
	}

}
