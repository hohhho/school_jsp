package _07_practice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/score.do")
public class Score extends HttpServlet {	


	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		int kor = 100;
		int eng = 87;
		int math = 41;

		int total  = kor + eng + math; 
		double avg = total / 3.0;

		boolean check = avg >= 60 && kor >= 50 && eng >= 50 && math >= 50;
		
		request.setAttribute("kor", kor);
		request.setAttribute("eng", eng);
		request.setAttribute("math", math);
		
		request.setAttribute("check", check);
		
		
		RequestDispatcher dis = request.getRequestDispatcher("/_07_practice/01_scoreView.jsp");
		dis.forward(request, response);
	}	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
	}
	
	
}


