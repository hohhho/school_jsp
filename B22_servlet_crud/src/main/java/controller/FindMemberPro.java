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


@WebServlet("/findMemberPro.do")
public class FindMemberPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str = request.getParameter("memberNumber"); 
		int number = Integer.parseInt(str); 
		Member member = null;
		 try {
			member = MemberDAO.instance.findMemberPro(number);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		 request.setAttribute("member", member);
		 
		 RequestDispatcher dis = request.getRequestDispatcher("servlet_crud/findMemberPro.jsp");
		 dis.forward(request, response);
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
