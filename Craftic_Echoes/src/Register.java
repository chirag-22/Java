
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

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger log = Logger.getAnonymousLogger();

	public Register() {
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName, lastName, email;
		PrintWriter out = response.getWriter();

		firstName = request.getParameter("fname");
		lastName = request.getParameter("lname");
		email = request.getParameter("eid");
		String Query = "Insert into echoes values(?,?,?)";
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			log.info("Driver Loaded");
			Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DataBaseName=craft", "sa",
					"123");
			log.info("Connection Created");
			PreparedStatement ps = con.prepareStatement(Query);
			ps.setString(1, firstName);
			ps.setString(2, lastName);
			ps.setString(3, email);
			

			int count = ps.executeUpdate();
			if (count > 0) {
				log.info("Record Added");
				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
				rd.forward(request, response);
			} else {
				log.info("Failed add operation");
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
