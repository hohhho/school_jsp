package memberController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.Member;
import member.MemberDAO;

@WebServlet("/memberJoin.do")
public class MemberJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dis = request.getRequestDispatcher("member/member/memberJoin.jsp");
		dis.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		
		Member member = new Member(id,pw,name,gender);
		
		try {
			boolean success = MemberDAO.instance.memberJoinPro(member);
			request.setAttribute("success", success);
			
			RequestDispatcher dis = request.getRequestDispatcher("member/member/memberJoinPro.jsp");
			dis.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
