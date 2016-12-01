package utilities;

import java.util.ArrayList;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.jdbc.core.simple.SimpleJdbcDaoSupport;
import org.springframework.mail.MailException;

import entities.Produit;
import entities.User;

public class Mylistener extends SimpleJdbcDaoSupport implements ApplicationListener<ContextRefreshedEvent> {
	
	
	
	
	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {
		ArrayList<Produit> produits=(ArrayList<Produit>) getSimpleJdbcTemplate().query("SELECT * FROM `produit` WHERE DATEDIFF(CURRENT_DATE(), date_du_produit) >= jours_mise", new ProductRowMapper());
		if(produits==null){
			System.out.println("rien à envoyer!!!");
		}
		else{
			
			for(int i=0;i<produits.size();i++){
				System.out.println(produits.get(i).getId_acheteur()+"and"+produits.get(i).getId_vendeur());
				ArrayList<User> user_vendeurs=((ArrayList<User>)getSimpleJdbcTemplate().query("Select * From user WHERE id=?", new UserRowMapper(), produits.get(i).getId_vendeur()));
				ArrayList<User> user_acheteurs=((ArrayList<User>)getSimpleJdbcTemplate().query("Select * From user WHERE id=?", new UserRowMapper(), produits.get(i).getId_acheteur()));
				User user_vendeur=user_vendeurs.get(0);
				if(user_acheteurs!=null){
					User user_acheteur = user_acheteurs.get(0);
					String host = "localhost";
					Properties properties = System.getProperties();
					properties.setProperty("mail.smtp.host", host);
					Session session = Session.getDefaultInstance(properties);
					MimeMessage mailmessage_vendeur= new MimeMessage(session);
					MimeMessage mailmessage_acheteur= new MimeMessage(session);
					
					
					
					try{
					mailmessage_vendeur.setFrom(new InternetAddress("haouat.mohamed.ine@gmail.com"));
					mailmessage_vendeur.addRecipient(Message.RecipientType.TO, new InternetAddress(user_vendeur.getEmail()));
					mailmessage_vendeur.setText("Bonjour"+user_vendeur+", votre produit a été vendu à : "+user_acheteur.getNom()+" vous pouvez le conatctez par le billet de l'adresse email : "+user_acheteur.getEmail());
					Transport.send(mailmessage_vendeur);
					mailmessage_acheteur.setFrom(new InternetAddress("haouat.mohamed.ine@gmail.com"));
					mailmessage_acheteur.setText("Bonjour"+user_acheteur.getNom()+", félicitaions , vous avez remportez l'enchère de l'offre de  :"+user_vendeur.getNom()+", nous vous invitons à le contacter par le billet de l'adresse: "+user_vendeur.getEmail());
					
						
					}
					 catch (AddressException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (MessagingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
			}
		}
		
		
	}
	

}
