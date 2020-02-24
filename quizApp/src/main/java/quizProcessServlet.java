import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "quizProcessServlet", urlPatterns = {"/quizProcessServlet"})
public class quizProcessServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userChoice = request.getParameter("ans");
		String username = (String) session.getAttribute("username");
		int index = (int) session.getAttribute("index");
		List<Question> list = (List<Question>) session.getAttribute("questionList");
		list.get(index).setUserChoice(userChoice);
		if (request.getParameterValues("next") != null) {
			session.setAttribute("index", ++index);
			request.getRequestDispatcher("quiz.jsp").forward(request, response);
		}else if(request.getParameterValues("previous") != null) {
			session.setAttribute("index", --index);
			request.getRequestDispatcher("quiz.jsp").forward(request, response);
		}else if(request.getParameterValues("submit") != null) {
			request.getRequestDispatcher("submit.jsp").forward(request, response);
		}
	}
	

}
