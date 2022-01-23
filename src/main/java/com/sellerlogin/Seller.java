package com.sellerlogin;



public class Seller {
	private int sellerID;
	private String fullname;
	private String  address;
	private String nic;
	private String phone;
	private String email;
	private String username;
	private String password;
	private String producttypes;
	private String frontimg;
	private String backimg;
	
	
	public Seller(int sellerID, String fullname, String address, String nic, String phone, String email,
			String username, String password, String producttypes) {
		
		this.sellerID = sellerID;
		this.fullname = fullname;
		this.address = address;
		this.nic = nic;
		this.phone = phone;
		this.email = email;
		this.username = username;
		this.password = password;
		this.producttypes = producttypes;
		
	}
	public int getSellerID() {
		return sellerID;
	}
	public String getFullname() {
		return fullname;
	}
	public String getAddress() {
		return address;
	}
	public String getNic() {
		return nic;
	}
	public String getPhone() {
		return phone;
	}
	public String getEmail() {
		return email;
	}
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	public String getProducttypes() {
		return producttypes;
	}
	public String getFrontimg() {
		return frontimg;
	}
	public String getBackimg() {
		return backimg;
	}
	public void setFrontimg(String frontimg) {
		this.frontimg = frontimg;
	}
	public void setBackimg(String backimg ) {
		this.backimg = backimg;
	}

	

	

	

			
}
