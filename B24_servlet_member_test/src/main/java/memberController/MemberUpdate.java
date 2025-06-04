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

@WebServlet("/memberUpdate.do")
public class MemberUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("memberUpdate.do / doGet 진입");
		
		String id = (String)request.getSession().getAttribute("log");
		
		try {
			Member member = MemberDAO.instance.getMember(id);
			request.setAttribute("member", member);
			
			RequestDispatcher dis = request.getRequestDispatcher("member/member/memberUpdate.jsp");
			dis.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("memberUpdate.do / doPost 진입");
		
		request.setCharacterEncoding("UTF-8");
		
		String id = (String)request.getSession().getAttribute("log");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		
		Member member = new Member(id,pw,name,gender);
		
		try {
			boolean updateSuccess = MemberDAO.instance.memberUpdate(member);
			request.setAttribute("updateSuccess", updateSuccess);
			
			RequestDispatcher dis = request.getRequestDispatcher("member/member/memberUpdatePro.jsp");
			dis.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
