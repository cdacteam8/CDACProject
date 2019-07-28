

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
        
        // html or jsp page Text fields //u can store all the fields into database
        String name = request.getParameter("name");     // html or jsp page Text fields 
        String username = request.getParameter("username");     // html or jsp page Text fields 
        String pass = request.getParameter("password");     // html or jsp page Text fields 
        String phone=request.getParameter("phone");
        String candidateEmail=request.getParameter("email");
        String address=request.getParameter("address");
         String candidateSubject = "Confirmation for Registration";
        String confirmationText = "Hi "+ username + "\n\n Your Registration is Successfull. we will notify you about exam Schedule on Registered Email Address \n\n\n\n All the best  ";
        
     //   String all ="" to +"visiter name:" + name +"" + subject +""+ msg  
String concateStr=(new StringBuilder()).append("\n\n Camdidate Name: "+name).append("\n\n contact: "+phone).append("\n\n  Email Id: "+candidateEmail).append("\n\n  Address : "+address).toString();  
System.out.println(concateStr);
        //email to client
  //      Mailer.send(to, subject, concateStr);
        
        //Email to visitor    
        Mailer.send(candidateEmail, candidateSubject, confirmationText);
        System.out.println("send msg done");
      response.sendRedirect("index.jsp?msg=registration successful");

	}

}
