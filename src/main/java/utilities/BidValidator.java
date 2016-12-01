package utilities;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class BidValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return String.class.equals(clazz);
	}

	@Override
	public void validate(Object mon, Errors errors) {
	 if(mon!=null){	
		String montant=(String)mon;
		try{
			Double montant1=Double.parseDouble(montant);
			if(montant1<0){
				errors.rejectValue("montant", "","ceci n'est pas un montant");
			}
			
		}
		catch(NumberFormatException exp){
			errors.rejectValue("montant", "", "ceci n'est pas un montant");
			
		}

	}
	 else{
		 errors.rejectValue("montant", "","vous devez rentrer un montant");
		 
	 }
	}

}
