import java.util.ArrayList;
import java.util.List;

public class Question {
	private String subjectID;
	private String correctAnswer;
	private String questionDescription;
	private String questionID;
	private List<String> availableAnswers;
	private String userChoice;
	
	public Question() {
		availableAnswers = new ArrayList<>();
	}

	public String getSubjectID() {
		return subjectID;
	}

	public void setSubjectID(String subjectID) {
		this.subjectID = subjectID;
	}

	public String getCorrectAnswer() {
		return correctAnswer;
	}

	public void setCorrectAnswer(String correctAnswer) {
		this.correctAnswer = correctAnswer;
	}

	public String getQuestionDescription() {
		return questionDescription;
	}

	public void setQuestionDescription(String questionDescription) {
		this.questionDescription = questionDescription;
	}

	public String getQuestionID() {
		return questionID;
	}

	public void setQuestionID(String questionID) {
		this.questionID = questionID;
	}

	public List<String> getAvailableAnswers() {
		return availableAnswers;
	}

	public void addAvailableAnswers(String answerID) {
		availableAnswers.add(answerID);
	}

	public String getUserChoice() {
		return userChoice;
	}

	public void setUserChoice(String userChoice) {
		this.userChoice = userChoice;
	}
	public boolean isCorrect() {
		return this.getCorrectAnswer().equals(this.getUserChoice());
	}

}
