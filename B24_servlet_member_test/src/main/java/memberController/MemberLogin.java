package memberController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;

@WebServlet("/memberLogin.do")
public class MemberLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dis = request.getRequestDispatcher("member/member/memberLogin.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		try {
			int state =  MemberDAO.instance.memberLoginPro(id, pw); // 1성공, 2아이디 오류, 3비밀번호 오류
			request.setAttribute("state", state);
			System.out.println(state);
			
			if(state == 1) {
				request.getSession().setAttribute("log", id);
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("member/member/memberLoginPro.jsp");
			dis.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
