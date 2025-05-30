package adminController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.AdminDAO;


@WebServlet("/adminLoginPro.do")
public class AdminLoginPro extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		int check = 0;
		try {
			check = AdminDAO.instance.adminLoginPro(id, pw);
			request.setAttribute("check", check);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		HttpSession session = request.getSession();
		
		
		if(check > 0) {
			session.setAttribute("log", id);
		}else{
			session.setAttribute("log", null);
		}
		
		
		RequestDispatcher dis =  request.getRequestDispatcher("member/admin/adminLoginPro.jsp");
		 dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response );
	}

}
