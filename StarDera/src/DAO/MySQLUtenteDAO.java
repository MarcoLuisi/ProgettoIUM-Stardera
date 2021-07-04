package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import Model.Utente;

public class MySQLUtenteDAO {
	
	 /** La query per l'inserimento di un nuovo utente */
    private static final String CREATE_QUERY = "INSERT INTO utente (email, passwordUtente, nome, cognome, username)" +
           "VALUES (?,?,?,?,?)";
    
    /** La query per la lettura di un singolo utente. */
    private static final String READ_QUERY = "SELECT * FROM utente WHERE username = ?";
    
    /** La query per la lettura di tutti gli utenti. */
    private static final String READ_ALL_QUERY = "SELECT * FROM utente";
    
    public void createUtente(Utente utente)  {

        Connection con = null;
        PreparedStatement statement = null;
        ResultSet result = null;
        try {
            con = MySQLDAO.createConnection();
            statement = con.prepareStatement(CREATE_QUERY);

            statement.setString(1, utente.getEmail());
            statement.setString(2, utente.getPassword());
            statement.setString(3, utente.getNome());
            statement.setString(4, utente.getCognome());
            statement.setString(5, utente.getUsername());
            statement.executeUpdate();

            
        } catch (SQLException e) {
           
        } finally {

            try {
                statement.close();
            } catch (Exception sse) {
                
            }
            try {
                con.close();
            } catch (Exception cse) {
                
            }
        }

    }
    
    public Utente getUtente(String username)  {
    	
    	
        Utente utente = null;
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet result = null;

        try {
            con = MySQLDAO.createConnection();
            statement = con.prepareStatement(READ_QUERY);
            statement.setString(1, username);
            statement.execute();
            result = statement.getResultSet();

            if (result.next() && result != null) {
                utente = new Utente(result.getString(1),
                        result.getString(2), result.getString(3), result.getString(4), result.getString(5));
            }
        } catch (SQLException e) {
            
        } finally {
            try {
                result.close();
            } catch (Exception rse) {
               
            }
            try {
                statement.close();
            } catch (Exception sse) {
              
            }
            try {
                con.close();
            } catch (Exception cse) {
             
            }
        }


        return utente;
    }
    
    
    public List<Utente> getAllUtenti()  {
        List<Utente> utenti = new ArrayList<Utente>();
        Utente utente = null;
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet result = null;

        try {
            con = MySQLDAO.createConnection();
            statement = con.prepareStatement(READ_ALL_QUERY);
            statement.execute();
            result = statement.getResultSet();

            while(result.next()) {
                utente = new Utente(result.getString(1), result.getString(2),
                        result.getString(3), result.getString(4), result.getString(5));
                utenti.add(utente);
            }

        } catch (SQLException e) {
           
        } finally {
        	
        	 try {
                 result.close();
             } catch (Exception rse) {
                 
             }
             try {
                 statement.close();
             } catch (Exception sse) {
                 
             }
           
            try {
                con.close();
            } catch (Exception cse) {
                
            }
        }

        return utenti;
    }

}
