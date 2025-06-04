package boardController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.Board;
import board.BoardDAO;

@WebServlet("/addBoardPro.do")
public class AddBoardPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			request.setCharacterEncoding("UTF-8");
			
			String writer = request.getParameter("writer");
			String subject = request.getParameter("subject");
			String contents = request.getParameter("contents");
			
			Board board = new Board();
			board.setWriter(writer);
			board.setSubject(subject);
			board.setContent(contents);
			
			int check = BoardDAO.instance.addBoardPro(board);
			request.setAttribute("check", check);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis =  request.getRequestDispatcher("board/addBoardPro.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
