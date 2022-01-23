package com.sellerlogin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateSellerServlet")
public class UpdateSellerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sellerID = request.getParameter("sellerID");
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
		
		isTrue = SellerDBUtil.updateseller(sellerID, fullname, address, nic, phone, email, username, password, producttypes, frontimg, backimg);
		
		if(isTrue == true) {
			List<Seller> selDetails = SellerDBUtil.getSellerDetails(sellerID);
			request.setAttribute("selDetails", selDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
			
		}
		else {
			List<Seller> selDetails = SellerDBUtil.getSellerDetails(sellerID);
			request.setAttribute("selDetails", selDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		
	}

}
