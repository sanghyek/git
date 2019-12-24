import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

class Cr extends HttpServlet {

	public void doGet(HttpServletRequest req,HttpServletResponse resp)	
	throws ServletException,IOException	{

		String =req.getParameterName("chk1");
		
		
		resp.setContentType("text/html:chareset=EUC-kr");
		PrintWriter out=resp.getWriter();
		out.println("<html>");
		out.println("<head><title>캐릭터고르기</title></head>");
		out.println("<body>");
		out.printf("<img src=img/im.png>");
		out.println("</body></html>");
	}	
}