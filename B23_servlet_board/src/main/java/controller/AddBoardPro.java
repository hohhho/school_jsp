package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.*;

import board.Board;
import board.BoardDAO;
@WebServlet("/addBoardPro.do")
public class AddBoardPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("UTF-8");
		
		
		String writer = request.getParameter("writer");
		String subject = request.getParameter("subject");
		String contents = request.getParameter("contents");
		
		System.out.println("AddBoardPro");
		Board board = new Board(0, writer, subject, contents , 0);
		
		
		try {
			boolean check = BoardDAO.instance.addBoardPro(board);
			request.setAttribute("check", check);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("servlet_board_basic/addBoardPro.jsp");
		 dis.forward(request, response);
	}

}
