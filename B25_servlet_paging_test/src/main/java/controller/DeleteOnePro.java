package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDAO;

@WebServlet("/deleteOnePro.do")
public class DeleteOnePro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int targetNo = Integer.parseInt(request.getParameter("targetNo"));
		
		try {
			boolean success =  BoardDAO.instance.deleteOnePro(targetNo);
			request.setAttribute("success", success);
					
			RequestDispatcher dis = request.getRequestDispatcher("board/deleteOnePro.jsp");
			dis.forward(request, response);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
