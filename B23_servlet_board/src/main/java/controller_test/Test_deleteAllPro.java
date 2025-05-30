package controller_test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board_test.Board_testDAO;

@WebServlet("/test_deleteAllPro.do")
public class Test_deleteAllPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			boolean check = Board_testDAO.instance.deleteAllPro();
			request.setAttribute("deleteSuccess", check);
			
			RequestDispatcher dis = request.getRequestDispatcher("servlet_board_basic_test/deleteAllPro.jsp");
			dis.forward(request, response);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
