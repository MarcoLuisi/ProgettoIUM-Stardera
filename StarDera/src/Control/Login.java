package Control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.MySQLUtenteDAO;
import Model.Utente;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		
		HttpSession session = request.getSession();
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		synchronized(session) {
			
			
			
			
			
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			String address;
			
			MySQLUtenteDAO data = new MySQLUtenteDAO();
			
			List<Utente> utenti = data.getAllUtenti();
			
			Utente user = null;
			
			for(Utente e : utenti) {
				if(e.getEmail().compareToIgnoreCase(email) == 0
						&& e.getPassword().compareToIgnoreCase(password) == 0) {
					
					user = e;
				}
			}
			
			boolean logged;
			boolean wrong;
			
			session.setAttribute("user", user);
			
			
			if(user != null) {
				logged = true;
				session.setAttribute("isLog", logged);
				address = "utente.jsp";
				
				
				request.getRequestDispatcher(address).forward(request, response);
			}
			
			else{
				wrong = true;
				session.setAttribute("isWrong", wrong);
				address = "login.jsp";
				
				
				   out.println("<script type=\"text/javascript\">");
				   out.println("alert('Credenziali inserite non corrette');");
				   out.println("location='login.jsp';");
				   out.println("</script>");
 				

				  
				//request.getRequestDispatcher(address).forward(request, response);
			
			}
		}
	}

}



