package adminController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.Member;
import member.MemberDAO;


@WebServlet("/adminUserList.do")
public class AdminUserList extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		try {
			ArrayList<Member> memberList = MemberDAO.instance.getMemberList();
			request.setAttribute("memberList", memberList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		RequestDispatcher dis =  request.getRequestDispatcher("member/admin/adminUserList.jsp");
		 dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response );
	}

}
