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

@WebServlet("/joinPro.do")
public class JoinPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		request.setCharacterEncoding("UTF-8");
		
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
	
		Member member = new Member(id, pw, name, gender);
		try {
			int check = MemberDAO.instance.joinPro(member);
			request.setAttribute("check", check);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		 RequestDispatcher dis =  request.getRequestDispatcher("member/member/joinPro.jsp");
		 dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response );
	}

}
