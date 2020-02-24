
public class Subject {
	
	private String subjectID;
	private String subjectName;
	private String imageLink;
	
	public Subject(String subjectID, String subjectName, String imageLink) {
		// TODO Auto-generated constructor stub
		this.setSubjectID(subjectID);
		this.setSubjectName(subjectName);
		this.setImageLink(imageLink);		
	}

	public String getSubjectID() {
		return subjectID;
	}

	public void setSubjectID(String subjectID) {
		this.subjectID = subjectID;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getImageLink() {
		return imageLink;
	}

	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}

}
