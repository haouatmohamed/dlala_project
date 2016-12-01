package dao;

import java.util.ArrayList;

import entities.User;

public interface UserDAO {
	void creer( User utilisateur ) ;

    User trouver( String email,String password );
    
    
    User trouver( String email);
    ArrayList<User> tous() ;
    
    void update(User utilisateur);
    
    void delete(String email );
}
