package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDAO;

@WebServlet("/addDummyPro.do")
public class AddDummyPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int successCount = 0;
		boolean addSuccess = false;
		
		try {
			
			successCount = BoardDAO.instance.addDummyPro();
			if(successCount == 10) {
				addSuccess = true;
			}
			request.setAttribute("addSuccess", addSuccess);
			
			RequestDispatcher dis = request.getRequestDispatcher("board/addDummyPro.jsp");
			dis.forward(request, response);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
