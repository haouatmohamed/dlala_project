package controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import entities.Produit;
import entities.User;
import managers.ProductManagers;
import managers.UserManager;
import utilities.UserValidator;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserManager usmanager;
	@Autowired
	ProductManagers promanager;
	
	
	@RequestMapping("/authentification")
	public String verifyAuthentification(){
		return "authentification";
	}
	
	
	@RequestMapping(value="/authentification",method=RequestMethod.POST)
	public String verifyAuthentification(@RequestParam("email") String email, @RequestParam("pass") String pass, Model model,HttpSession session){
		String view="authentification";
		User user= usmanager.findUser(email, pass);
		if(user==null){
			model.addAttribute("erreur","votre adresse email ou mot de passe est incorrect!!!");
		}
		else{
			session.setAttribute("user", user);
			session.setAttribute("userfullname", user.getNom()+" "+user.getPrenom());
		 	session.setAttribute("privilege", user.getPrivilege());
		 	session.setAttribute("iduser", user.getId());
		 	ArrayList<Produit> produits=promanager.fillHomePage();
		 	model.addAttribute("produits",produits);
		 	view="homepage";
			}
		return view;
		
	}
	@RequestMapping("/admin")
	public String admin(Model model){
		ArrayList<Produit> produits=promanager.findALL();
		ArrayList<User> users=usmanager.findAllUsers();
		model.addAttribute("produits", produits);
		model.addAttribute("users",users);
		return"webMaster";
		
	}
	@RequestMapping(value="/registring",method=RequestMethod.GET)
	public String userRegistration(Model model){
		User user= new User();
		model.addAttribute(user);
		return "register";
	}
	@RequestMapping(value="/registring",method=RequestMethod.POST)
	public String userRegistration(Model model,@Valid @ModelAttribute User user, Errors errors,HttpSession session){
		String view="";
		if(!errors.hasErrors()){
			User userifexist=usmanager.findByEmail(user.getEmail());
			if(userifexist!=null){
				model.addAttribute("error","cet utilisateur existe dèjà !!!!");
				view="register";
			}
			else{
				usmanager.createUser(user);
				model.addAttribute("succes", "vos données sont bien enregistrées!!");
				session.setAttribute("iduser", usmanager.findByEmail(user.getEmail()).getId());
				session.setAttribute("userfullname", usmanager.findByEmail(user.getEmail()).getNom());
				model.addAttribute("produits",promanager.fillHomePage());
				view="homepage";	
			}
		}
		else{
			model.addAttribute("errors", errors);
			view="register";
		}
		return view;
		
	}
	@RequestMapping("/profile")
	public String showProfile(HttpSession session,Model model){
		int id_user=(Integer)session.getAttribute("iduser");
		ArrayList<Produit> produits=promanager.findByseller(id_user);
		model.addAttribute("produits_seller", produits);
		model.addAttribute("produits_buy", promanager.mycommands(id_user));
		return "profil";
	}
	@RequestMapping("/supprimer")
	public String deleteUser(@RequestParam String email,Model model){
		usmanager.DeleteUser(email);
		ArrayList<Produit> produits=promanager.findALL();
		ArrayList<User> users=usmanager.findAllUsers();
		model.addAttribute("produits", produits);
		model.addAttribute("users",users);
		return"webMaster";
	}
	@RequestMapping("/deconnecter")
	public String logout(HttpSession session,Model model ){
		model.addAttribute("produits", promanager.fillHomePage());
		session.invalidate();
		return "homepage";
		
	}
	
	
	@InitBinder("user")
	public void binding(WebDataBinder binder){
		binder.setValidator(new UserValidator());
	}
	

}
