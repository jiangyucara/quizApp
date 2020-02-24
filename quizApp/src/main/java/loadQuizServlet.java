import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "loadQuiz", urlPatterns = {"/loadQuiz"})
public class loadQuizServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String leftJoin = "SELECT top 10 *\r\n" + 
			"FROM dbo.questions\r\n" + 
			"LEFT JOIN dbo.subject\r\n" + 
			"ON dbo.questions.subject_id = dbo.subject.subject_id\r\n" + 
			"WHERE subject_name = ?\r\n" + 
			"ORDER BY NEWID()";

	private static final String getAvailableAnswer = "SELECT answer_id \r\n" + 
			"FROM dbo.questionsDB\r\n" + 
			"WHERE question_id = ?";
	
	private Connection connection = DBConnection.getConnection();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String subject = request.getParameter("quiz").trim();
		PreparedStatement statement = null;
		List<Question> list = new ArrayList<>();
		Question question;
		try {
			statement = connection.prepareStatement(leftJoin);
			statement.setString(1, subject);
			//statement.addBatch();
			ResultSet resultSet = statement.executeQuery();
			while(resultSet.next()) {
				question = new Question();
				question.setCorrectAnswer(resultSet.getString(2));
				question.setQuestionDescription(resultSet.getString(3));
				question.setQuestionID(resultSet.getString(4));		
				question.setSubjectID(resultSet.getString(5));
				String questionID = question.getQuestionID().trim();
				
				PreparedStatement batchStatement = connection.prepareStatement(getAvailableAnswer);
				batchStatement.setString(1, questionID);
				//batchStatement.addBatch();
				
				ResultSet resultSet1 = batchStatement.executeQuery();
				
				while(resultSet1.next()) {
					question.addAvailableAnswers(resultSet1.getString(1));
				}
				
				list.add(question);	
			}		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		session.setAttribute("questionList", list);
		session.setAttribute("index", 0);
		request.getRequestDispatcher("quiz.jsp").forward(request, response);		
	}

}
