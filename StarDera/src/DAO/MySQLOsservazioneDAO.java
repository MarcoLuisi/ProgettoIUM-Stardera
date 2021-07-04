package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.*;

public class MySQLOsservazioneDAO {
	
	//query per la ricerca delle osservazioni in base alla città
	private static final String READ_QUERY = "SELECT * FROM osservazione o WHERE o.città=? ";
	
	private static final String READ_QUERY1 = "SELECT * FROM osservazione o WHERE o.utente=? ";
	
	//query per la memorizzazione di un'osservazione
	private static final String CREATE_QUERY = "insert into osservazione (dataOsservazione, orarioOsservazione, città, indirizzo, località, fontiLuminose, magnitudineLimite, brillanzaTotale, livello, utente) values (?,?,?,?,?,?,?,?,?,?)";
	
	
	public List<Osservazione> getOsservazioniByCittà(String città)  {

        List<Osservazione> listOsservazione = new ArrayList<Osservazione>();
        Osservazione o = null;
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet result = null;
        
        float sommaB=0, sommaM=0, sommaL=0;
        float mediaB=0, mediaM=0, mediaL=0;
        
        String significatoB="",significatoM="";
        String mediaLivello="";

        try {
            con = MySQLDAO.createConnection();
            statement = con.prepareStatement(READ_QUERY);
            statement.setString(1, città);
            statement.execute();
            result = statement.getResultSet();

            while(result.next()) {

                o = new Osservazione(result.getInt(1), result.getString(2),
                        result.getString(3), result.getString(4), result.getString(5), result.getString(6),
                        result.getString(7), result.getFloat(8), result.getFloat(9), result.getString(10), result.getString(11));
                
                if(o.getLivello().equals("Molto alto")) {
                	o.setVal(6);
                }
                
                if(o.getLivello().equals("Alto")) {
                	o.setVal(5);
                }
                
                if(o.getLivello().equals("Medio-alto")) {
                	o.setVal(4);
                }
                
                if(o.getLivello().equals("Medio-basso")) {
                	o.setVal(3);
                }
                
                if(o.getLivello().equals("Basso")) {
                	o.setVal(2);
                }
                
                if(o.getLivello().equals("Molto basso")) {
                	o.setVal(1);
                }
                        
                listOsservazione.add(o);

            }
            
            for(int j=0; j<listOsservazione.size(); j++) {
            	sommaB = sommaB + listOsservazione.get(j).getBrillanzaTotale();
            	sommaM = sommaM + listOsservazione.get(j).getMagnitudineLimite();
            	sommaL = sommaL + listOsservazione.get(j).getVal();
            }
            
            mediaB = sommaB/listOsservazione.size();
            mediaM = sommaM/listOsservazione.size();
            mediaL = sommaL/listOsservazione.size();
            
            if(mediaB < 19.5) { significatoB="Cielo estremamente luminoso";}
            if(mediaB >= 19.5 && mediaB < 20.5) { significatoB="Cielo molto luminoso";}
            if(mediaB >= 20.5 && mediaB < 21) { significatoB="Cielo luminoso";}
            if(mediaB >= 21 && mediaB < 21.5) { significatoB="Cielo poco luminoso";}
            if(mediaB == 21.5) { significatoB="Cielo mediamente buio";}
            if(mediaB > 21.5) { significatoB="Cielo estremamente buio";}
            
            if(mediaM <= 4) { significatoM="Cielo appena stellato";}
            if(mediaM >4 && mediaM <=4.5) { significatoM="Cielo poco stellato";}
            if(mediaM >4.5 && mediaM <= 5) { significatoM="Cielo moderatamente stellato";}
            if(mediaM > 5 && mediaM <= 5.5) { significatoM="Cielo molto stellato";}
            if(mediaM > 5.5 && mediaM <= 6) { significatoM="Cielo ampiamente stellato";}
            if(mediaM > 6) { significatoM="Cielo eccezionalmente stellato";}
            
            
            
            if(mediaL>=1 && mediaL < 2) {
                mediaLivello="Molto basso";
            }
            
            if(mediaL>=2 && mediaL < 3) {
                mediaLivello="Basso";
            }
            
            if(mediaL>=3 && mediaL < 4) {
                mediaLivello="Medio-basso";
            }
            
            if(mediaL>=4 && mediaL < 5) {
                mediaLivello="Medio-alto";
            }
            
            if(mediaL>=5 && mediaL < 6) {
                mediaLivello="Alto";
            }
            
            if(mediaL>=6) {
                mediaLivello="Molto alto";
            }
            
            for(int i=0; i<listOsservazione.size(); i++) {
            	listOsservazione.get(i).setMediaBrillanza(mediaB);
            	listOsservazione.get(i).setMediaMagnitudine(mediaM);
            	listOsservazione.get(i).setSignificatoB(significatoB);
            	listOsservazione.get(i).setSignificatoM(significatoM);
            	listOsservazione.get(i).setMediaLivello(mediaLivello);
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
        
        return listOsservazione;
    }
	
	
	public void createOsservazione(Osservazione o) {
		
		
		
		
		
		Connection con = null;
        PreparedStatement statement = null;
        ResultSet result = null;
        
        try {
            con = MySQLDAO.createConnection();
            statement = con.prepareStatement(CREATE_QUERY);

            statement.setString(1, o.getData());
            statement.setString(2, o.getOra());
            statement.setString(3, o.getCittà());
            statement.setString(4, o.getIndirizzo());
            statement.setString(5, o.getLocalità());
            statement.setString(6, o.getFontiLuminose());
            statement.setFloat(7, o.getMagnitudineLimite());
            statement.setFloat(8, o.getBrillanzaTotale());
            statement.setString(9, o.getLivello());
            statement.setString(10, o.getUsername());
            
            statement.executeUpdate(); 
                

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

            
		
		
		
	}
	
	
	public List<Osservazione> getOsservazioniUtente(String utente)  {

        List<Osservazione> listOsservazione = new ArrayList<Osservazione>();
        Osservazione o = null;
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet result = null;
        
        float sommaB=0, sommaM=0;
        float mediaB=0, mediaM=0;
        
        String significatoB="",significatoM="";

        try {
            con = MySQLDAO.createConnection();
            statement = con.prepareStatement(READ_QUERY1);
            statement.setString(1, utente);
            statement.execute();
            result = statement.getResultSet();

            while(result.next()) {

                o = new Osservazione(result.getInt(1), result.getString(2),
                        result.getString(3), result.getString(4), result.getString(5), result.getString(6),
                        result.getString(7), result.getFloat(8), result.getFloat(9), result.getString(10), result.getString(11));
                
                        
                listOsservazione.add(o);

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
        
        return listOsservazione;
    }
	
	

}
