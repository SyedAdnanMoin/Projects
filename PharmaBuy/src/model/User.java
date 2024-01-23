package model;

public class User{
	

	private String name;
    private String password;
    private String phone;
    private String email;
	public String getName() {
		return name;
	}
	
	public User(String name, String password, String phone, String email) {
		super();
		this.name = name;
		this.password = password;
		this.phone = phone;
		this.email = email;
	}
	
	public User() {}
	
	public User(String nam,String pass)
	{
		this.name=nam;
		this.password=pass;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
