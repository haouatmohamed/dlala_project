package utilities;

import java.util.ArrayList;

import org.springframework.context.ApplicationEvent;

import entities.Produit;

public class ProductToDealWithEvent extends ApplicationEvent {
	private static final long serialVersionUID = 1L;
	private ArrayList<Produit> produits;
	public ProductToDealWithEvent(Object source,ArrayList<Produit> produits) {
		super(source);
		this.produits=produits;
	}
	public ArrayList<Produit> getProduits() {
		return produits;
	}
	
	
	

}
