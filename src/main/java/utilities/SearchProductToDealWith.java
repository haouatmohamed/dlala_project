package utilities;

import java.util.ArrayList;

import javax.activation.DataSource;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.context.ApplicationEventPublisherAware;
import org.springframework.jdbc.core.simple.SimpleJdbcDaoSupport;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Component;
import entities.Produit;
@Component
public class SearchProductToDealWith extends SimpleJdbcDaoSupport   {
	@Inject
	private ApplicationEventPublisher applicationEventPublisher;
	@Autowired
	private DriverManagerDataSource dataSource;
	
	
	public void find(){
		ArrayList<Produit> produits= (ArrayList<Produit>) getSimpleJdbcTemplate().query("SELECT * FROM `produit` WHERE DATEDIFF(CURRENT_DATE(), date_du_produit) >= jours_mise", new ProductRowMapper());
		System.out.println("fuckfuck");
		if(!produits.isEmpty()){
			System.out.println("fuuuuuuuuuuuck");
			ProductToDealWithEvent event= new ProductToDealWithEvent(this, produits);
			applicationEventPublisher.publishEvent(event);
		}
	}
	
	

}
