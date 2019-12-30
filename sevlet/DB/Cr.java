import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.util.Enumeration;
public class Cr extends  HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		Enumeration <String> e = request.getParameterNames();
		while(e.hasMoreElements()){
			//String name = (String) e.nextElement();
			String name = e.nextElement();
			String [] data = request.getParameterValues(name);
			response.setContentType("text/html;chareset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<html><head><title>suvlet IMG</title></head>");
			out.println("<body>");
			if(data!=null){
				for(int i=0; i<data.length;i++)
					out.printf("<img src='img/"+data[i]+".png' width='200px' height='200px''></img>");
			}
		
		
		out.println("</body></html>");
		}
	}
}