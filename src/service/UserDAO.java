package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class UserDAO {

	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
	try {
		Context ctx = new InitialContext();
		dataFactory = (DataSource) ctx.lookup("java:/comp/env/jdbc/jspProject");
		conn = dataFactory.getConnection();
	} catch (NamingException | SQLException e) {
		e.printStackTrace();
	}
}
	
	public void dbClose() {
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			dbClose();
			
		} 
		
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public int login(String user_id, String user_pw) {
		
		String sql = "SELECT * FROM userTBL WHERE userID = ? and userPW = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, user_pw);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return 1 ;
			} else {
				return 0;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		
		return -9999;
		
	}
	
	
	
	public String userInsert(String user_id, String user_pw) {
		
		String sql = "INSERT INTO userTBL(userID, userPW) VALUES(?, ?)";
		
        try {
        	pstmt = conn.prepareStatement(sql);
        	pstmt.setString(1, user_id);
        	pstmt.setString(2, user_pw);
			int result = pstmt.executeUpdate();
			
			if(result==1) {
				System.out.println("작동완료");
				return "success";
			} else {
				return "fail";
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return null;
	}
	
	public String idCheck(String user_id) {
		
		String sql = "SELECT * FROM userTBL WHERE userID = ?" ;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return "Duplicate";
			} else {
				return "Available";
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		
		
		return null;
		
	}
	
}
