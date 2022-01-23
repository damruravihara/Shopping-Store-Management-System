package com.sellerlogin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterSellerServlet")
public class RegisterSellerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String fullname = request.getParameter("fullname");
		String address = request.getParameter("address");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String producttypes = request.getParameter("producttypes");
		String frontimg = request.getParameter("frontimg");
		String backimg = request.getParameter("backimg");
		
		boolean isTrue;
		
		isTrue = SellerDBUtil.insertseller(fullname, address, nic, phone, email, username, password, producttypes, frontimg, backimg);
		
		if(isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Registration is Sucessful');");
			out.println("location='sellerlogin.jsp'");
			out.println("</script>");
			
			
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Registration is Unsucessful');");
			out.println("location='sellerregister.jsp'");
			out.println("</script>");
			
		}
		
	}

}
