package com.cos.momstouch.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.momstouch.domain.board.Board;
import com.cos.momstouch.domain.board.DetailReqDto;
import com.cos.momstouch.domain.board.InquiryBoard;
import com.cos.momstouch.domain.board.SaveReqDto;
import com.cos.momstouch.menuboard.MenuBoard;
import com.cos.momstouch.service.BoardService;
import com.cos.momstouch.utill.Script;


@WebServlet("/board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public BoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String cmd = request.getParameter("cmd");
		BoardService boardService = new BoardService();
		
		if (cmd.equals("index")) {
			RequestDispatcher dis = request.getRequestDispatcher("/index.jsp");
			dis.forward(request, response);
		}
		
		if (cmd.equals("info")) {
			
			int page = Integer.parseInt(request.getParameter("page"));
			List<Board> boardList = boardService.게시글전체보기(page);
		
			request.setAttribute("boardList", boardList);
			RequestDispatcher dis = request.getRequestDispatcher("board/info.jsp");
			dis.forward(request, response);
			
		}
		
		if (cmd.equals("save")) {
			RequestDispatcher dis = request.getRequestDispatcher("board/saveForm.jsp");
			dis.forward(request, response);
		}
		
		if (cmd.equals("saveAdmin")) {

			int userId = Integer.parseInt(request.getParameter("userId"));
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			if (userId==1) {
				SaveReqDto dto = new SaveReqDto();
				dto.setUserId(userId);
				dto.setTitle(title);
				dto.setContent(content);
				
				int result = boardService.공지글작성(dto);
				if (result == 1) {
					RequestDispatcher dis = request.getRequestDispatcher("board/info.jsp");
					dis.forward(request, response);
						
				}else {
					Script.back(response, "글쓰기 실패");
				}	
			} else {
				SaveReqDto dto = new SaveReqDto();
				dto.setUserId(userId);
				dto.setTitle(title);
				dto.setContent(content);
				
				int result = boardService.문의하기(dto);
				if (result == 1) {
					
					response.sendRedirect("board/inquiry.jsp");
					/*
					 * RequestDispatcher dis = request.getRequestDispatcher("board/inquiry.jsp");
					 * dis.forward(request, response);
					 */	
				}else {
					Script.back(response, "글쓰기 실패");
				}	
				
			}
			
		}
		
		if (cmd.equals("detail")) {
			
			int boardId = Integer.parseInt(request.getParameter("boardid"));
			DetailReqDto dtoEntity= boardService.글상세보기(boardId);
			request.setAttribute("dto", dtoEntity);

			RequestDispatcher dis = request.getRequestDispatcher("board/detail.jsp");
			dis.forward(request, response);
		}
		
		if (cmd.equals("menulist")) {
			String menu = request.getParameter("menu");
			System.out.println("menu :" + menu);
			List<MenuBoard> MenuList = boardService.치킨메뉴보기(menu);
			System.out.println("치킨메뉴" + MenuList);
			request.setAttribute("MenuList", MenuList);
			if (menu.equals("chicken")) {
				RequestDispatcher dis = request.getRequestDispatcher("board/menulist.jsp");
				dis.forward(request, response);
			}else if (menu.equals("burger")) {
				RequestDispatcher dis = request.getRequestDispatcher("board/burgerlist.jsp");
				dis.forward(request, response);
			}else if (menu.equals("drink")) {
				RequestDispatcher dis = request.getRequestDispatcher("board/drinklist.jsp");
				dis.forward(request, response);
			}
		
		}	
		
		if (cmd.equals("menudetail")) {
			int id = Integer.parseInt(request.getParameter("id"));
			MenuBoard menuboard = boardService.치킨상세보기(id);
			request.setAttribute("menuboard", menuboard);
			RequestDispatcher dis = request.getRequestDispatcher("board/menudetail.jsp");
			dis.forward(request, response);
		}
		
		if (cmd.equals("inquiry")) {
			int page = Integer.parseInt(request.getParameter("page"));
			int id = Integer.parseInt(request.getParameter("id"));
			System.out.println("유저아이디 들어왔나 : " + id);
			
			if (id == 1) {			
				List<InquiryBoard> InquiryboardList = boardService.문의보기(page);
				request.setAttribute("InquiryboardList", InquiryboardList);
				RequestDispatcher dis = request.getRequestDispatcher("board/inquiry.jsp");
				dis.forward(request, response);
			} else {
				List<InquiryBoard> InquiryboardList = boardService.개인문의보기(id);
				request.setAttribute("InquiryboardList", InquiryboardList);
				RequestDispatcher dis = request.getRequestDispatcher("board/inquiry.jsp");
				dis.forward(request, response);
			}		
		}
	}
}
