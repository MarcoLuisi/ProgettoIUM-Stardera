package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Punto;


public class MySQLPuntoDAO {
	
	//query per la ricerca dei punti di osservazione in base alla città
	private static final String READ_QUERY = "SELECT * FROM punto p  " +
            "WHERE p.città=? ";
	

	
	
	public List<Punto> getPuntiByCittà(String città)  {

        List<Punto> listPunti = new ArrayList<Punto>();
        Punto p = null;
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet result = null;

        try {
            con = MySQLDAO.createConnection();
            statement = con.prepareStatement(READ_QUERY);
            statement.setString(1, città);
            statement.execute();
            result = statement.getResultSet();

            while(result.next()) {

                p = new Punto(result.getInt(1), result.getString(2),
                        result.getString(3), result.getString(4), result.getString(5), 
                        result.getString(6), result.getString(7), result.getString(8));
                
                

                
                p.setUrlFoto("fotocielo/"+ p.getId() + ".jpg");

                listPunti.add(p);

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
        return listPunti;
    }
}
