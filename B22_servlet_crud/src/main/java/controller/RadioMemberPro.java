package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.Member;
import member.MemberDAO;
@WebServlet("/radioMemberPro.do")
public class RadioMemberPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str = request.getParameter("memberNumber"); 
		int number = Integer.parseInt(str); // int는 형변환을 해야한다. 
		Member member = null;
		try {
			member = MemberDAO.instance.radioMemberPro(number);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("member", member);
		 
		 RequestDispatcher dis = request.getRequestDispatcher("servlet_crud/radioMemberPro.jsp");
		 dis.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
