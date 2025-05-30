package _06_login;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginPro.do")
public class LoginPro extends HttpServlet {	

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
	}	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println("아이디 : " + id);
		System.out.println("패스워드 : " + pw);
		
		request.setAttribute("id", id);
		request.setAttribute("pw", pw);
		
		// session 은 request.getSession() 으로 찾을수있다. 
		
		HttpSession session = request.getSession();
		session.setAttribute("id", id);
		
		RequestDispatcher dis = request.getRequestDispatcher("/_06_login/loginView.jsp");
		dis.forward(request, response);
	}
	
	
}


