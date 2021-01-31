package com.cos.momstouch.service;

import java.util.List;

import com.cos.momstouch.domain.board.Board;
import com.cos.momstouch.domain.board.BoardDao;
import com.cos.momstouch.domain.board.DetailReqDto;
import com.cos.momstouch.domain.board.InquiryBoard;
import com.cos.momstouch.domain.board.SaveReqDto;
import com.cos.momstouch.menuboard.MenuBoard;

public class BoardService {

	BoardDao boardDao = new BoardDao();

	public int 공지글작성(SaveReqDto dto) {

		return boardDao.공지글작성(dto);
	}

	public List<Board> 게시글전체보기(int page) {

		List<Board> boardList = boardDao.findAll(page);

		return boardList;
	}

	public DetailReqDto 글상세보기(int boardId) {

		DetailReqDto dto = boardDao.findByBoard(boardId);

		return dto;
	}

	public List<MenuBoard> 치킨메뉴보기(String menu) {

		List<MenuBoard> MenuList = boardDao.findAllMenu(menu);
		return MenuList;
	}

	public MenuBoard 치킨상세보기(int id) {

		MenuBoard board = boardDao.findMenuById(id);
		return board;
	}

	public int 문의하기(SaveReqDto dto) {

		return boardDao.문의글작성(dto);
	}

	public List<InquiryBoard> 문의보기(int page) {

		List<InquiryBoard> boardList = boardDao.findInquiry(page);

		return boardList;
	}
	
	public List<InquiryBoard> 개인문의보기(int id) {

		List<InquiryBoard> boardList = boardDao.findInquiryById(id);

		return boardList;
	}
}
