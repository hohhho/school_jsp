package controller_test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board_test.Board_test;
import board_test.Board_testDAO;

@WebServlet("/test_addBoard.do")
public class Test_addBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("now test_addBoard.do => doGet()");
		
		RequestDispatcher dis = request.getRequestDispatcher("servlet_board_basic_test/addBoard.jsp");
		dis.forward(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("now test_addBoard.do => doPost()");
		
		int nextNo = -1;
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		
		// nextNo 가져오기
		try {
			nextNo = Board_testDAO.instance.getNextNo();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		//log
		if(nextNo != -1) {
			System.out.println("nextNo success!! nextNo = "+nextNo);
		}else {
			System.out.println("nextNo fail..");
		}
		
		
		Board_test board = new Board_test(nextNo, writer, title, contents, 0);
		
		
		try {
			boolean success =  Board_testDAO.instance.addBoardPro(board);
			
			//log
			System.out.println("success is "+success);
			
			request.setAttribute("success", success);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("servlet_board_basic_test/addBoardPro.jsp");
		dis.forward(request, response);
	}

}
