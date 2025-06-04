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

@WebServlet("/addBoard.do")
public class AddBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("now test_addBoard.do => doGet()");
		
		RequestDispatcher dis = request.getRequestDispatcher("board/addBoard.jsp");
		dis.forward(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("now test_addBoard.do => doPost()");
		
		int nextNo = -1;
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		
		// nextNo 가져오기
		try {
			nextNo = BoardDAO.instance.getNextNo();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		//log
		if(nextNo != -1) {
			System.out.println("nextNo success!! nextNo = "+nextNo);
		}else {
			System.out.println("nextNo fail..");
		}
		
		
		Board board = new Board(nextNo, writer, title, contents, 0);
		
		
		try {
			boolean success =  BoardDAO.instance.addBoardPro(board);
			
			//log
			System.out.println("success is "+success);
			
			request.setAttribute("success", success);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("board/addBoardPro.jsp");
		dis.forward(request, response);
	}

}
