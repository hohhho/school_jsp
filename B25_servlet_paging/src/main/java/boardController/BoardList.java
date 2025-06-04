package boardController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.Board;
import board.BoardDAO;

@WebServlet("/boardList.do")
public class BoardList extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Board> boardList = null;
		try {
			boardList = BoardDAO.instance.getBoardList();
			int count = boardList.size();
			
			request.setAttribute("boardList", boardList);
			request.setAttribute("count", count);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis =  request.getRequestDispatcher("board/boardList.jsp");
		dis.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
