package boardController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/boardListPagingPro.do")
public class BoardListPagingPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int nextPage = Integer.parseInt(request.getParameter("nextPage"));
		
		HttpSession session = request.getSession();
		session.setAttribute("currentPage", nextPage);
		System.out.println("nextPage=" + nextPage);
		
		RequestDispatcher dis =  request.getRequestDispatcher("boardListPaging.do");
		dis.forward(request, response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
