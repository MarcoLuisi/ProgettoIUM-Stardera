package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MySQLOsservazioneDAO;
import Model.Osservazione;

/**
 * Servlet implementation class Analisi
 */
@WebServlet("/Analisi")
public class Analisi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Analisi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		MySQLOsservazioneDAO mysql = new MySQLOsservazioneDAO();
		
		float magnitudineLimite=0, brillanzaTotale = 0;
		String livello="";
		
		String data = request.getParameter("data");;
   	 	String ora = request.getParameter("ora");
   	 	String città = request.getParameter("citta");
   	 	String indirizzo = request.getParameter("indirizzo");
   	 	String località = request.getParameter("localita");
   	 	String fontiLuminose = request.getParameter("fontiLuminose");
   	 	String username = request.getParameter("username"); 
   	 	/*
   	 	System.out.println(data);
   	 	System.out.println(ora);
   	 	System.out.println(città);
   	 	System.out.println(indirizzo);
   	 	System.out.println(località);
   	 	System.out.println(fontiLuminose);
   	 	System.out.println(username);*/
   	
   	 	if(località.contentEquals("Rurale") && fontiLuminose.contentEquals("Assente")) {
   	 		magnitudineLimite=(float) 6.5;
   	 		brillanzaTotale=(float) 22;
   	 		
   	 		livello="Molto basso";
   	 	}
   	 	
   	 	if(località.contentEquals("Suburbana") && fontiLuminose.contentEquals("Assente")) {
	 		magnitudineLimite=(float) 6;
	 		brillanzaTotale=(float) 21.5;
	 		
	 		livello="Basso";
	 	}
   	 	
   	 	if(località.contentEquals("Urbana") && fontiLuminose.contentEquals("Assente")) {
	 		magnitudineLimite=(float) 5.5;
	 		brillanzaTotale=(float) 21;
	 		
	 		livello="Medio-basso";
	 	}
   	 	
   	 	if(località.contentEquals("Rurale") && fontiLuminose.contentEquals("Basso")) {
	 		magnitudineLimite=(float) 6;
	 		brillanzaTotale=(float) 21.5;
	 		
	 		livello="Basso";
	 	}
   	 	
   	 	if(località.contentEquals("Suburbana") && fontiLuminose.contentEquals("Basso")) {
	 		magnitudineLimite=(float) 5.5;
	 		brillanzaTotale=(float) 21;
	 		
	 		livello="Medio-basso";
	 	}
   	 	
   	 	if(località.contentEquals("Urbana") && fontiLuminose.contentEquals("Basso")) {
	 		magnitudineLimite=(float) 5;
	 		brillanzaTotale=(float) 20.5;
	 		
	 		livello="Medio-alto";
	 	}
   	 	
   	 	if(località.contentEquals("Rurale") && fontiLuminose.contentEquals("Medio")) {
	 		magnitudineLimite=(float) 5.5;
	 		brillanzaTotale=(float) 21;
	 		
	 		livello = "Medio-basso";
	 	}
	 	
	 	if(località.contentEquals("Suburbana") && fontiLuminose.contentEquals("Medio")) {
	 		magnitudineLimite=(float) 5;
	 		brillanzaTotale=(float) 20.5;
	 		
	 		livello= "Medio-alto";
	 	}
	 	
	 	if(località.contentEquals("Urbana") && fontiLuminose.contentEquals("Medio")) {
	 		magnitudineLimite=(float) 4.5;
	 		brillanzaTotale=(float) 20;
	 		
	 		livello="Alto";
	 	}
	 	
	 	
	 	if(località.contentEquals("Rurale") && fontiLuminose.contentEquals("Alto")) {
	 		magnitudineLimite=(float) 5;
	 		brillanzaTotale=(float) 20.5;
	 		
	 		livello="Medio-alto";
	 	}
   	 	
   	 	if(località.contentEquals("Suburbana") && fontiLuminose.contentEquals("Alto")) {
	 		magnitudineLimite=(float) 4.5;
	 		brillanzaTotale=(float) 20;
	 		
	 		livello="Alto";
	 	}
   	 	
   	 	if(località.contentEquals("Urbana") && fontiLuminose.contentEquals("Alto")) {
	 		magnitudineLimite=(float) 4;
	 		brillanzaTotale=(float) 19;
	 		
	 		livello="Molto alto";
	 	}
   	 
   	 	/*
   	    System.out.println(magnitudineLimite);
     	System.out.println(brillanzaTotale);*/
     	
   	 	mysql.createOsservazione(new Osservazione(0,data,ora, città, indirizzo, località,
   	 			fontiLuminose, magnitudineLimite, brillanzaTotale, livello, username));
   	 	
   	 	request.getRequestDispatcher("analisi.jsp").forward(request, response);
   	 	
		
   	 	
	}

}
