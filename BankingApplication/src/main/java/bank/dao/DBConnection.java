package bank.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	public static Connection myConnection() {
		Connection con=null;
		
		try {
			//C:\oraclexe\app\oracle\product\10.2.0\server\jdbc\lib\pjdbc14.jar
			Class.forName("oracle.jdbc.OracleDriver");
			
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","12345678");
			System.out.println("Connection to database"+con);
			
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
}
