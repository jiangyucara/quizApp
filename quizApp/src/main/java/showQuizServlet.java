import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/showQuizServlet")
public class showQuizServlet extends HttpServlet{
	
	private final static String getTable = "SELECT * FROM dbo.subject";
	private Connection connection = DBConnection.getConnection();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Statement statement = null;
		List<Subject> list = new ArrayList<>();
		try {
			statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(getTable);
			
			Subject subject;
			while(resultSet.next()) {
				subject = new Subject(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3));
				list.add(subject);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("subjectList", list);
		request.getRequestDispatcher("quizHome.jsp").forward(request, response);
	}
}
