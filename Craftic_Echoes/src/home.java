
import java.io.IOException;

import java.io.PrintWriter;
import com.microsoft.sqlserver.jdbc.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/home")
public class home extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger log = Logger.getAnonymousLogger();

	public home() {
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	 
		
		RequestDispatcher rd = request.getRequestDispatcher("Login.html");
		rd.forward(request, response);

	}

	
}
