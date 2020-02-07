package staff_tbl;

import java.sql.Connection;
import java.sql.DriverManager;
public class DBcon {
	public static Connection getCon() throws Exception{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
		return con;
	}
}

