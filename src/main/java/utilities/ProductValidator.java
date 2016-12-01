package utilities;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import entities.Produit;

public class ProductValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Produit.class.equals(clazz);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		Produit produit=(Produit) obj;
		try{
			int number=(int)produit.getJoursmise();
			if(produit.getNom().isEmpty()|| produit.getMarque().isEmpty()){
				errors.rejectValue("nom", "", "merci de remplir tous les champs");
				errors.rejectValue("marque", "", "merci de remplir tous les champs");
			}
			try{
				double price=produit.getPrixinitial();
			}
			catch(Exception e){
				errors.rejectValue("prixinitial", "", "merci d'entrer un montant valide ");
			}
			
		}
		catch(Exception ex){
			errors.rejectValue("joursmise", "", "vous devez entrez un nombre");
			
		}
	}

}
