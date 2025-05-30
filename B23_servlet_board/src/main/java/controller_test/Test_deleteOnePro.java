package controller_test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board_test.Board_testDAO;

@WebServlet("/test_deleteOnePro.do")
public class Test_deleteOnePro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int targetNo = Integer.parseInt(request.getParameter("targetNo"));
		
		try {
			boolean success =  Board_testDAO.instance.deleteOnePro(targetNo);
			request.setAttribute("success", success);
					
			RequestDispatcher dis = request.getRequestDispatcher("servlet_board_basic_test/deleteOnePro.jsp");
			dis.forward(request, response);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
