package controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import entities.Produit;
import managers.ProductManagers;
import managers.UserManager;
import utilities.BidValidator;
import utilities.ProductValidator;

@Controller
@RequestMapping("/produit")
public class ProductController {
	@Autowired
	private UserManager usmanager;
	@Autowired
	private ProductManagers promanager;
	
	@RequestMapping("/{id}")
	public String productDetails(@PathVariable("id") int id,Model model ){
		String montant=new String();
		Produit produit=promanager.findById(id);
		model.addAttribute("produit",produit);
		model.addAttribute("montant",montant);
		return "productdescription";	
	}
	@RequestMapping("/addproduct")
	public String addProduct(Model model){
		Produit produit=new Produit();
		model.addAttribute(produit);
		return "registringproduct";
	}
	
	@RequestMapping(value="/validermise/{id}",method=RequestMethod.POST)
	public String validerMontant(HttpServletRequest req,@PathVariable("id") int id_product, Model model,HttpSession session){
		String view="";
		String monstring = req.getParameter("montant")+"";
		Produit produit =promanager.findById(id_product);
		if(monstring!=null){
		try{
			double montant=Double.parseDouble(monstring);
		
			
				
				if(montant<=produit.getPrixactuel()){
					model.addAttribute("err", "vous devez miser avec un prix supérieure au montant actuel");
					model.addAttribute("produit",produit);
					view= "productdescription";
				
				}
				else{
					int id_achteur=(Integer) session.getAttribute("iduser");
					promanager.change_price(montant, id_product, id_achteur);
					model.addAttribute("succesmise", "votre mise est prise en considération");
					ArrayList<Produit> produits=promanager.fillHomePage();
				 	model.addAttribute("produits",produits);
				 	view="homepage";
				}
			
			
		}
		catch(NumberFormatException exp){
			model.addAttribute("err","ceci n'est pas un montant!!!");
			model.addAttribute("produit",produit);
			view= "productdescription";
			
		}
		}
		else{
			model.addAttribute("err", "vous devez devez donner un montant!");
			model.addAttribute("produit",produit);
			view= "productdescription";
			
		}
			
			
			
			
		
		return view;
	}
	@RequestMapping(value="/addproduct",method=RequestMethod.POST )
	public String addProduct(@Valid @ModelAttribute Produit produit, Errors errors, HttpSession session , Model model  ){
		String view="profil";
		if(!errors.hasErrors()){
			int id_user=(Integer)session.getAttribute("iduser");
			produit.setId_vendeur(id_user);
			ArrayList<Produit> produits=promanager.findByseller(id_user);
			model.addAttribute("produits_seller", produits);
			model.addAttribute("produits_buy", promanager.mycommands(id_user));
			model.addAttribute("successubmitproduct","votre produit est soumis avec succes");
			promanager.createProduit(produit);	
		}
		else{
			model.addAttribute("errors", errors);
			view="registringproduct";
		}
		return view;
		
	}
	
	@InitBinder("produit")
	public void binding(WebDataBinder binder){
		binder.setValidator(new ProductValidator());
	}
	
	

}
