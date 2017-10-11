package jspbook.ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		response.setContentType("text/html;charset=UTF-8");

		PrintWriter out=response.getWriter();
		
		String id="leeyun1533";
		String pw="jung1571";
		String idCheck;
		String pwCheck;
		String result;	
		
		
		
		out.println("<html>");
		out.println("<head><title>login</title></head>");
		out.println("<body><center>");
		out.println("<hr>");
		out.println("</body></html>");
		
		idCheck=String.valueOf(request.getParameter("id"));
		pwCheck=String.valueOf(request.getParameter("pw"));
		if(id.equals(idCheck)){
			out.println("<h1>이정윤님환영합니다 success</h1>");
		}
		else {
			out.println("<a href=/jspbook/ch04/Login.html>다시로그인</a>");
		}
		
	}

}
