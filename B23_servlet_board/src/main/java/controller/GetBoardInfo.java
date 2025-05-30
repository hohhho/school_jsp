package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import board.Board;
import board.BoardDAO;


@WebServlet("/getBoardInfo.do")
public class GetBoardInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		try {
			Board board = BoardDAO.instance.getBoardInfo(no);
			request.setAttribute("board", board);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		RequestDispatcher dis = request.getRequestDispatcher("servlet_board_basic/getBoardInfo.jsp");
		 dis.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
