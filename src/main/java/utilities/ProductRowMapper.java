package utilities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.simple.ParameterizedRowMapper;

import entities.Produit;

public class ProductRowMapper implements ParameterizedRowMapper<Produit> {

	@Override
	public Produit mapRow(ResultSet rs, int arg1) throws SQLException {
		Produit produit =new Produit(rs.getInt("id"), rs.getInt("id_vendeur"), rs.getInt("id_acheteur"), rs.getString("nom"),rs.getString("marque"), rs.getDouble("prix_initial"),rs.getDouble("prix_actuel"),
				rs.getDate("date_du_produit"), rs.getInt("jours_mise"));
		return produit;
		
		
	}
	

}
