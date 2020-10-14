
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
		String msg=null;
		String query = "Select * from UserRecord where Email=? and Password=?";
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

			Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DataBaseName=niit", "sa","123");
					

			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, userID);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();
			if (rs != ps)
			{
				Cookie cki = new Cookie("user", rs.getString("FirstName"));
					response.addCookie(cki);
					RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
					rd.forward(request, response);
			} else {
				 msg = "Invalid id or password";
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp?err=" + msg);
				rd.forward(request, response);
			}
		} catch (Exception exception) {
			response.getWriter().println(exception);
		}

	}
}
