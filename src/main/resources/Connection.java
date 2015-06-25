import java.sql.DriverManager;


public class Connection {
	
	private Statement statement;

	public Connection(String username, String password) {
		Class driver = Class.forName("com.mysql.jdbc.Driver");
		
		//Added username and password strings!!!
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost/testDB", 
				"testDbUser", "MySuper5ecretPa55word!");
		statement = c.getStatement();
	} 
	
	public void getStatement()
	{
		return statement;
	}

}
