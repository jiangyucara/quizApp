
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JOptionPane;

public class DBConnection {
	
	private static Connection CONNECTION;
	
	public static Connection getConnection() {
		if(CONNECTION != null) {
			return CONNECTION;
		}
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=quizSystem;user=user;password=Admin123;";
			
			CONNECTION = DriverManager.getConnection(connectionUrl);
			
			JOptionPane.showMessageDialog(null, "Connected");
		} 
		catch (SQLException e) {
			System.out.println("SQLException");
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	
		
		return CONNECTION;
	}
}
