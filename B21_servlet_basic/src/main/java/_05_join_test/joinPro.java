package _05_join_test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.User;

@WebServlet("/joinProTest.do")
public class joinPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		String[] arr = request.getParameterValues("hobby");
		String hobby = "";
		
		for(int i=0; i<arr.length; i++) {
			hobby += arr[i];
			if(i != arr.length-1) {
				hobby += ",";
			}
		}
		
		User user = new User(id, pw, name, email, hobby);
		
		request.setAttribute("user",user);
		
		RequestDispatcher dis = request.getRequestDispatcher("/_05_join_test/joinView.jsp");
		
		dis.forward(request, response);
		
	}

}
