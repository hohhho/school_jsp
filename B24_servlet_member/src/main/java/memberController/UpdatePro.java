package memberController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.Member;
import member.MemberDAO;


@WebServlet("/updatePro.do")
public class UpdatePro extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
			request.setCharacterEncoding("UTF-8");
		
		
			HttpSession session = request.getSession();
			
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			
			String log = (String)session.getAttribute("log");
			
			Member member = new Member(log, pw, name, gender);
			try {
				int check = MemberDAO.instance.updatePro(member);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			

			
			
		
		RequestDispatcher dis =  request.getRequestDispatcher("member/member/updatePro.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response );
	}

}
