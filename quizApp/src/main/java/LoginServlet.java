import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "welcome", urlPatterns = {"/welcome"})
public class LoginServlet extends HttpServlet{

	private static final String SELECT = "SELECT password FROM dbo.accountInfo WHERE username=";
	private static final String SELECT_ALL = "SELECT * FROM dbo.accountInfo WHERE username=";
	private Connection connection = DBConnection.getConnection();
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		
		Statement statement = null;
		try {
			statement = connection.createStatement();

			ResultSet resultSet = statement.executeQuery(SELECT + "'" + username +"'");
			if(resultSet.next()) {
				if(resultSet.getString(1).trim().equals(password)) {
					Statement statement1 = null;
					statement1 = connection.createStatement();
					ResultSet accountInfo = statement1.executeQuery(SELECT_ALL + "'" + username +"'");
					if(accountInfo.next()) {
						StringBuilder sb = new StringBuilder();
						for(int i = 1; i <= 5; i++) {
							sb.append(accountInfo.getString(i) + "<br>");
						}
						HttpSession session = request.getSession();
						session.setAttribute("username",username);
						session.setAttribute("info", sb.toString());
						request.getRequestDispatcher("home.jsp").forward(request, response);
					}
				} else {
					out.print("Incorrect user name or password!");
					request.getRequestDispatcher("index.jsp").include(request, response);
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
