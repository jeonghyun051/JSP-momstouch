package com.cos.momstouch.domain.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cos.momstouch.config.DBConn;

public class UserDao {
	
	//아이디 중복체크
	public int usernameCheck(String username) {
		String sql = "SELECT * FROM users WHERE username = ?";
		Connection conn = DBConn.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);		
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				return 1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	//회원가입
	public int save(JoinReqDto dto) {
		String sql = "INSERT INTO users(username, password, email, address, userRole, createDate) VALUES(?,?,?,?,'USER',now()) ";
		Connection conn = DBConn.getInstance();
		PreparedStatement pstmt = null;
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUsername());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getEmail());
			pstmt.setString(4, dto.getAddress());
			int result = pstmt.executeUpdate();
			return result;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	//로그인하기
	public User findByUsernameAndPassword(LoginReqDto dto) {
		String sql = "SELECT id, username, email, address FROM users WHERE username = ? AND password = ?";
		Connection conn = DBConn.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUsername());
			pstmt.setString(2, dto.getPassword());
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				User user = User.builder()
						.id(rs.getInt("id"))
						.username(rs.getString("username"))
						.email(rs.getString("email"))
						.address(rs.getString("address"))
						.build();
				return user;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	

}
