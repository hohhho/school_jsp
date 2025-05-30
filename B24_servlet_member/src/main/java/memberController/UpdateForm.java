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


@WebServlet("/updateForm.do")
public class UpdateForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String log = (String)session.getAttribute("log");
		try {
			Member member = MemberDAO.instance.updateForm(log);
			request.setAttribute("member", member);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		RequestDispatcher dis =  request.getRequestDispatcher("member/member/updateForm.jsp");
		 dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response );
	}

}
