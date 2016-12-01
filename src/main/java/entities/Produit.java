package entities;

import java.sql.Date;

public class Produit {
	
	private int id;
	private int id_vendeur;
	private int id_acheteur;
	private String nom;
	private String marque;
	private double prixinitial;
	private double prixactuel;
	private Date date_du_produit;
	private int joursmise;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_vendeur() {
		return id_vendeur;
	}
	public void setId_vendeur(int id_vendeur) {
		this.id_vendeur = id_vendeur;
	}
	public int getId_acheteur() {
		return id_acheteur;
	}
	public void setId_acheteur(int id_acheteur) {
		this.id_acheteur = id_acheteur;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getMarque() {
		return marque;
	}
	public void setMarque(String marque) {
		this.marque = marque;
	}
	public double getPrixinitial() {
		return prixinitial;
	}
	public void setPrixinitial(double prixinitial) {
		this.prixinitial = prixinitial;
	}
	public double getPrixactuel() {
		return prixactuel;
	}
	public void setPrixactuel(double prixactuel) {
		this.prixactuel = prixactuel;
	}
	public Date getDate_du_produit() {
		return date_du_produit;
	}
	public void setDate_du_produit(Date date_du_produit) {
		this.date_du_produit = date_du_produit;
	}
	public int getJoursmise() {
		return joursmise;
	}
	public void setJoursmise(int joursmise) {
		this.joursmise = joursmise;
	}
	public Produit(int id, int id_vendeur, int id_acheteur, String nom, String marque, double prixinitial,
			double prixactuel, Date date_du_produit, int joursmise) {
		super();
		this.id = id;
		this.id_vendeur = id_vendeur;
		this.id_acheteur = id_acheteur;
		this.nom = nom;
		this.marque = marque;
		this.prixinitial = prixinitial;
		this.prixactuel = prixactuel;
		this.date_du_produit = date_du_produit;
		this.joursmise = joursmise;
	}
	public Produit(int id_vendeur, int id_acheteur, String nom, String marque, double prixinitial, double prixactuel,
			Date date_du_produit, int joursmise) {
		super();
		this.id_vendeur = id_vendeur;
		this.id_acheteur = id_acheteur;
		this.nom = nom;
		this.marque = marque;
		this.prixinitial = prixinitial;
		this.prixactuel = prixactuel;
		this.date_du_produit = date_du_produit;
		this.joursmise = joursmise;
	}
	public Produit() {
		super();
	}
	
	
}
