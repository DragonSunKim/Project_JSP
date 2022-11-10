package member;

import java.sql.*;

import util.DatabaseUtil;

public class MemberDAO {
	private static MemberDAO instance;
	
	private MemberDAO() {}
	public static MemberDAO getInstance() {
		instance = new MemberDAO();
		return instance;
	}
	
	public void insertMember(MemberBean member) throws SQLException{
		Connection conn = null;
		PreparedStatement psmt = null;
		
		try {
			conn = DatabaseUtil.getConnection();
			
			String sql = "insert into member values(?, ?, ?, ?, ?, ?, ?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member.getId());
			psmt.setString(2, member.getPassword());
			psmt.setString(3, member.getName());
			psmt.setString(4, member.getAddress());
			psmt.setString(5, member.getPhone1());
			psmt.setString(6, member.getPhone2());
			psmt.setString(7, member.getPhone3());
			
			psmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public int loginCheck(String id, String pw) {
				
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		String dbPW = "";
		int x = -1;
		
		try {
			String sql = "SELECT password FROM member WHERE id=?";
			
			conn = DatabaseUtil.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			rs = psmt.executeQuery();
			
			if(rs.next()){
				dbPW = rs.getString("password");
				
				if(dbPW.equals(pw))
					x = 1;
				else
					x = 0;
			}
			else {
				x = -1;
			}
			
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return x;
	}
}
