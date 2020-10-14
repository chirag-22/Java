
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger log = Logger.getAnonymousLogger();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userID = request.getParameter("id");
		String pass = request.getParameter("pass");
		String msg = null;
		String query = "Select * from echoes where Email=? and Pass=?";
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			log.info("Driver Loaded");
			Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DataBaseName=craft", "sa",
					"123");
			log.info("Connection Created");
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, userID);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) 
			{
				 request.getRequestDispatcher("Home.jsp")
				.forward(request, response);

			} else {
				msg = "Invalid id or password";
			    request.getRequestDispatcher("Login.html?err=" + msg)
				.forward(request, response);
			}
		} catch (SQLException exception) {
			log.info("SQL Error :" + exception);
		} catch (ClassNotFoundException cfe) {
			log.info("Driver Error : " + cfe);
		} catch (Exception exp) {
			log.info("" + exp);
		}

	}
}
