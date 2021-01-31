package com.cos.momstouch.domain.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.momstouch.config.DBConn;
import com.cos.momstouch.menuboard.MenuBoard;

public class BoardDao {

	public int 공지글작성(SaveReqDto dto) {

		String sql = "INSERT INTO board(userId, title, content, createDate) VALUES(?,?,?, now())";
		Connection conn = DBConn.getInstance();
		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getUserId());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());
			int result = pstmt.executeUpdate();

			return result;

		} catch (Exception e) {
			e.getStackTrace();
		}
		return -1;
	}

	public List<Board> findAll(int page) {
		// SELECT 해서 Board 객체를 컬렉션에 담아서 리턴
		String sql = "SELECT * FROM board ORDER BY id DESC LIMIT ?,6"; // 0,4 4,4 8,4
		Connection conn = DBConn.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, page * 4); // 0 -> 0, 1 ->4, 2->8
			rs = pstmt.executeQuery();
			List<Board> list = new ArrayList<>();

			while (rs.next()) {

				Board board = Board.builder().id(rs.getInt("id")).userId(rs.getInt("userId"))
						.title(rs.getString("title")).content(rs.getString("content")).readCount(rs.getInt("readCount"))
						.createDate(rs.getTimestamp("createDate")).build();

				list.add(board);
			}
			return list;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public DetailReqDto findByBoard(int boardId) {
		
		String sql = "SELECT id,title,content,readCount,createDate FROM board WHERE id=?";
		Connection conn = DBConn.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardId);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				
				DetailReqDto dto = DetailReqDto.builder()
						.id(rs.getInt("id"))
						.title(rs.getString("title"))
						.content(rs.getString("content"))
						.readCount(rs.getInt("readCount"))
						.createDate(rs.getTimestamp("createDate"))
						.build();
				
				return dto;
			}
		} catch (Exception e) {
			e.getStackTrace();
		}		
		return null;
	}
	
	public List<MenuBoard> findAllMenu(String menu){
		
		String sql = "SELECT * FROM menuboard WHERE menugroup = ?"; // 0,4 4,4 8,4
		Connection conn = DBConn.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, menu);
			rs = pstmt.executeQuery();
			List<MenuBoard> list = new ArrayList<>();

			while (rs.next()) {

				MenuBoard board = MenuBoard.builder()
						.id(rs.getInt("id"))
						.menuname(rs.getString("menuname"))
						.kcal(rs.getInt("kcal"))
						.mg(rs.getInt("mg"))
						.g(rs.getInt("g"))
						.menuimg(rs.getString("menuimg"))
						.menugroup(rs.getString("menugroup"))
						.build();
				
				list.add(board);
			}
			return list;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public MenuBoard findMenuById(int id) {
		String sql = "SELECT * FROM menuboard WHERE id = ?";
		Connection conn = DBConn.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);		
			rs = pstmt.executeQuery();

			while (rs.next()) {
			
				MenuBoard board = MenuBoard.builder()
						.id(rs.getInt("id"))
						.menuname(rs.getString("menuname"))
						.kcal(rs.getInt("kcal"))
						.mg(rs.getInt("mg"))
						.g(rs.getInt("g"))
						.menuimg(rs.getString("menuimg"))
						.menugroup(rs.getString("menugroup"))
						.build();
				
				return board;	
			}			
		} catch (Exception e) {
			e.getStackTrace();
		}
		return null;
	}
	
	public int 문의글작성(SaveReqDto dto) {

		String sql = "INSERT INTO inquiryboard(userId, title, content, createDate) VALUES(?,?,?, now())";
		Connection conn = DBConn.getInstance();
		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getUserId());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());
			int result = pstmt.executeUpdate();

			return result;

		} catch (Exception e) {
			e.getStackTrace();
		}
		return -1;
	}
	
	public List<InquiryBoard> findInquiry(int page) {
		// SELECT 해서 Board 객체를 컬렉션에 담아서 리턴
		String sql = "SELECT * FROM inquiryboard ORDER BY id DESC LIMIT ?,6"; // 0,4 4,4 8,4
		Connection conn = DBConn.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, page * 4); // 0 -> 0, 1 ->4, 2->8
			rs = pstmt.executeQuery();
			List<InquiryBoard> list = new ArrayList<>();

			while (rs.next()) {

				InquiryBoard board = InquiryBoard.builder().id(rs.getInt("id")).userId(rs.getInt("userId"))
						.title(rs.getString("title")).content(rs.getString("content"))
						.createDate(rs.getTimestamp("createDate")).build();

				list.add(board);
			}
			return list;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public List<InquiryBoard> findInquiryById(int id) {
		// SELECT 해서 Board 객체를 컬렉션에 담아서 리턴
		String sql = "SELECT * FROM inquiryboard WHERE userId = ? ORDER BY id desc"; // 0,4 4,4 8,4
		Connection conn = DBConn.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id); // 0 -> 0, 1 ->4, 2->8
			rs = pstmt.executeQuery();
			List<InquiryBoard> list = new ArrayList<>();

			while (rs.next()) {

				InquiryBoard board = InquiryBoard.builder().id(rs.getInt("id")).userId(rs.getInt("userId"))
						.title(rs.getString("title")).content(rs.getString("content"))
						.createDate(rs.getTimestamp("createDate")).build();

				list.add(board);
			}
			return list;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}

