import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TestConnection {

	public static void main(String args[]) throws SQLException {
		
		Connection con = DriverManager.getConnection(
		        "jdbc:mariadb://localhost:3306/digital_badges", 
		        "root", 
		        "");
		
		Statement stmt=con.createStatement();  
		ResultSet rs=stmt.executeQuery("select * from my_badges"); 
		
		while(rs.next())  
		System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
		
		System.out.println(con);
	}
}
