package users;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class userDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	public userDAO() {
		try {
			String dbURL = "jdbc:oracle:thin:@//localhost:1521/xe";
			String dbID = "musthave";
			String dbPassword = "1234";
			
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM users WHERE userID = ?";
		
		try {
			psmt = conn.prepareStatement(SQL);
			psmt.setString(1, userID);
			rs = psmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword))
					return 1; // 로그인 성공시 1 리턴
				else
					return 0; // 비밀번호 불일치시 0 리턴
			}
			return -1; // 아이디가 없을 경우 -1 리턴
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return -2; // DB 오류시 -2 리턴
	}
}
