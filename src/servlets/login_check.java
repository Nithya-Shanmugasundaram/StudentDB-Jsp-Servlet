package servlets;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.security.auth.login.LoginContext;
import javax.security.auth.login.LoginException;
import auth.AuthCallbackHandler;
import java.security.Principal;
import javax.security.auth.Subject;

public class login_check extends HttpServlet
{
    private static String management_id="management";
    private static String management_pwd="management@123";
    private static String student_pwd="student@123";

    public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
    {
		System.out.println("login servlet called");
	  try
	{
		String id  = req.getParameter("j_username");
        	String password = req.getParameter("j_password");
        try 
	 {
		AuthCallbackHandler ac = new AuthCallbackHandler(id, password);
            LoginContext lc = new LoginContext("test_auth", ac);
            lc.login();
            
			Subject s = lc.getSubject();
            for(Principal p:s.getPrincipals()){
                res.getWriter().println(p);
            }
			System.out.println("Login Successfull...");
			res.sendRedirect(req.getContextPath() + "/user_role_check");
        } 
	catch (LoginException e)
	 {
            e.printStackTrace();
            System.out.println("Login Failed...");
			//
        }
		
	}
	catch(Exception e)
	{
		System.out.println(e);
		//res.sendRedirect(req.getContextPath() + "/error.jsp");
		//res.setStatus(500);
	} 
    }
}