package staff_tbl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/insert")
public class insert extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DTO d = new DTO();
		d.setIno(request.getParameter("ino"));
		d.setIname(request.getParameter("iname"));
		d.setIamount(Integer.parseInt(request.getParameter("iamount")));
		d.setSno(request.getParameter("sno"));
		int result = DAO.insert(d);
		if(result<0) {
			request.setAttribute("insertresult", "false");
		}
		else {
			request.setAttribute("insertresult", "true");
		}
		request.setAttribute("target", "body");
		RequestDispatcher dis =request.getRequestDispatcher("main.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
