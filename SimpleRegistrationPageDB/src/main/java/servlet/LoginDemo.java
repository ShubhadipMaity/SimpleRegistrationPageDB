package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginDemo")
public class LoginDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String pass1=request.getParameter("pass1");
        String pass2=request.getParameter("pass2");
        
        if(pass1.equals(pass2)) {
        	try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","1234");
                PreparedStatement ps=con.prepareStatement("insert into reg values(?,?,?)");
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, pass1);
                
                int rs=ps.executeUpdate();
                if(rs!=0) {
                	out.println("Singup done Successfully!");
                }else {
                	out.println("Something want Wrong !!!");
                }

        		con.close();
        		
        	}catch(Exception e) {
                e.printStackTrace();
        	}
        }else {
        	out.println("password is't matching");
        }
	}

}
