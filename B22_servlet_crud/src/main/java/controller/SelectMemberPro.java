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

@WebServlet("/selectMemberPro.do")
public class SelectMemberPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str = request.getParameter("memberNumber"); 
		int number = Integer.parseInt(str);
		System.out.println(number);
		Member member = null;
			try {
				 member = MemberDAO.instance.selectMemberPro(number);
			} catch (Exception e) {
				e.printStackTrace();
			}
		request.setAttribute("member", member);
		 
		 RequestDispatcher dis = request.getRequestDispatcher("servlet_crud/selectMemberPro.jsp");
		 dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
