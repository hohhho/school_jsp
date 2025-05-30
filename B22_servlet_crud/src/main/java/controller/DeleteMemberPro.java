package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;


@WebServlet("/deleteMemberPro.do")
public class DeleteMemberPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str = request.getParameter("memberNumber");
		int number = Integer.parseInt(str);
		
		try {
			boolean check = MemberDAO.instance.deleteMemberPro(number);
			request.setAttribute("check", check);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		 RequestDispatcher dis = request.getRequestDispatcher("servlet_crud/deleteMemberPro.jsp");
		 dis.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
