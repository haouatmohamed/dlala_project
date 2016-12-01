package utilities;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import entities.User;

public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		User user=(User) obj;
		if(!user.getAdresse().isEmpty()){
		if (user.getAdresse().length()<15)
			errors.rejectValue("adresse", "", "merci de bien detailler votre adresse");
		}
		else 
			errors.rejectValue("adresse", "", "vous devez remplir  tous les champs ");
		if(!user.getPassword().isEmpty()){
		if(user.getPassword().length()<6)
			errors.rejectValue("password", "", "le mot de passe doit contenir au moins six caractères");
		}
		else
			errors.rejectValue("password", "", "vous devez remplir  tous les champs ");
		if(user.getNom().isEmpty())
			errors.rejectValue("nom", "","vous devez remplir  tous les champs ");
		if(user.getPrenom().isEmpty())
			errors.rejectValue("prenom","","vous devez remplir  tous les champs ");
		
			

	}

}
