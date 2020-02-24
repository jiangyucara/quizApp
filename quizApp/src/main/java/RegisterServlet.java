import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "register", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet{

	private final static String INSERT = "INSERT INTO dbo.accountInfo "
			+ "(username, password, dob, email, phone) "
			+ "values (?, ?, ?, ?, ?)";
	
	private Connection connection = DBConnection.getConnection();
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String dob = request.getParameter("DoB");
		String email = request.getParameter("email");
		String number = request.getParameter("phone");
		
		PreparedStatement batchStatement = null;
		try {
			batchStatement = connection.prepareStatement(INSERT);
			
			batchStatement.setString(1, username);
			batchStatement.setString(2, password);
			batchStatement.setString(3, dob);
			batchStatement.setString(4, email);
			batchStatement.setString(5, number);
			batchStatement.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("register.jsp").forward(request, response);
	}
}
