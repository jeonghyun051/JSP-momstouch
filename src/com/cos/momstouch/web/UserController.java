package com.cos.momstouch.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.momstouch.domain.user.JoinReqDto;
import com.cos.momstouch.domain.user.LoginReqDto;
import com.cos.momstouch.domain.user.User;
import com.cos.momstouch.service.UserService;
import com.cos.momstouch.utill.Script;

@WebServlet("/user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// http://localhost:8080/blog/user?cmd=loginForm
		String cmd = request.getParameter("cmd");
		UserService userService = new UserService();

		if (cmd.equals("loginForm")) {
			RequestDispatcher dis = request.getRequestDispatcher("user/login.jsp");
			dis.forward(request, response);
		}

		if (cmd.equals("joinForm")) {
			RequestDispatcher dis = request.getRequestDispatcher("user/joinForm.jsp");
			dis.forward(request, response);
		}

		else if (cmd.equals("usernameCheck")) { // 유저네임 중복체크
			BufferedReader br = request.getReader();
			String username = br.readLine();
			System.out.println("로그인 중복체크 시 들어온 username값 : " + username);
			int result = userService.유저네임중복체크(username);
			PrintWriter out = response.getWriter();
			System.out.println("result값 : " + result);
			if (result == 1) {
				out.print("ok");
			} else {
				out.print("fail");
			}
			out.flush();
		}

		else if (cmd.equals("join")) { // 회원가입
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			String address = request.getParameter("address");

			JoinReqDto dto = JoinReqDto.builder().username(username).password(password).email(email).address(address)
					.build();

			int result = userService.회원가입(dto);
			if (result == 1) {
				System.out.println("DB회원가입 성공" + dto);
				RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
				dis.forward(request, response);
				// response.sendRedirect("user/login.jsp");
			} else {
				Script.back(response, "회원가입실패");
			}
		}

		else if (cmd.equals("login")) { // 로그인
			String username = request.getParameter("username");
			String password = request.getParameter("password");

			LoginReqDto dto = LoginReqDto.builder().username(username).password(password).build();

			User userEntity = userService.로그인(dto);

			if (userEntity != null) {
				HttpSession session = request.getSession();
				session.setAttribute("principal", userEntity);
				RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
				dis.forward(request, response);
				System.out.println("로그인 한 사람 : " + userEntity);
			} else {
				Script.back(response, "로그인 실패");
			}

		}

		else if (cmd.equals("logout")) { // 로그아웃
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect("index.jsp");

		}
	}
}
