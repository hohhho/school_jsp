package boardController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.Board;
import board.BoardDAO;

@WebServlet("/boardListPaging.do")
public class BoardListPaging extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Board> boardList = null;
		try {
			boardList = BoardDAO.instance.getBoardList();
			int count = boardList.size();
			
			HttpSession session = request.getSession();
			
			Object obj = session.getAttribute("currentPage");
			int currentPage =(int)obj;  	
			
			obj = session.getAttribute("viewCount");
			int viewCount = (int)obj; 		
			
			obj = session.getAttribute("pagingButtonCount");
			int pagingButtonCount = (int)obj; 	
			
			int startIndex = (currentPage - 1) * viewCount;
			int endIndex = startIndex + viewCount;
			if(endIndex >= count){
				endIndex = count;
			}
			
			System.out.print("게시글인덱스 : " + startIndex + " ");
			System.out.println(endIndex);
			//-----------------------------------------------------------

			int startButton = 0;
			int endButton = 0;
			int lastButton = 0;
			/*
				1, 2, 3 => 1, 3
				4, 5, 6 => 4, 6
			*/
			/*
				 0 / 3 ==> 0 => 1
				 1 / 3 ==> 0 => 1
				 2 / 3 ==> 0 => 1
				 3 / 3 ==> 1 => 4
				 4 / 3 =>  1 => 4
				 5 / 3 ==> 1 => 4
			*/
			
			startButton = (currentPage - 1) / pagingButtonCount * pagingButtonCount; 	
			endButton = startButton + pagingButtonCount;
			lastButton = count / viewCount;
			if(count % viewCount > 0){
				lastButton += 1;
			}
			if(endButton > lastButton){
				endButton = lastButton;
			}
			
			System.out.print("startButton : " + startButton + " ");
			System.out.print("endButton : " + endButton + " ");
			System.out.println("lastButton : " + lastButton + " ");
			
			startButton += 1;
			endButton += 1;
			lastButton += 1;
			
			
			request.setAttribute("count", count);
			request.setAttribute("startIndex", startIndex);
			request.setAttribute("endIndex", endIndex);
			request.setAttribute("startButton", startButton);
			request.setAttribute("endButton", endButton);
			request.setAttribute("lastButton", lastButton);
			request.setAttribute("boardList", boardList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis =  request.getRequestDispatcher("board/boardListPaging.jsp");
		dis.forward(request, response);				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
