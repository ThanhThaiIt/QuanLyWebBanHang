package BEAN;

public class Transaction {
	private int id;
	private int idUser;
	private String firstName;
	private String lastName;
	private String email;
	private float total;
	private String address;
	private String town_city;
	private String state_county;
	private String phone;
	private int payment_method;
	private int status_order;
	private String create_at;
	public Transaction( int idUser, String firstName, String lastName, String email, float total, String address,
			String town_city, String state_county, String phone, int payment_method, int status_order,
			String create_at) {
		super();
		
		this.idUser = idUser;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.total = total;
		this.address = address;
		this.town_city = town_city;
		this.state_county = state_county;
		this.phone = phone;
		this.payment_method = payment_method;
		this.status_order = status_order;
		this.create_at = create_at;
	}
	public Transaction() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTown_city() {
		return town_city;
	}
	public void setTown_city(String town_city) {
		this.town_city = town_city;
	}
	public String getState_county() {
		return state_county;
	}
	public void setState_county(String state_county) {
		this.state_county = state_county;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getPayment_method() {
		return payment_method;
	}
	public void setPayment_method(int payment_method) {
		this.payment_method = payment_method;
	}
	public int getStatus_order() {
		return status_order;
	}
	public void setStatus_order(int status_order) {
		this.status_order = status_order;
	}
	public String getCreate_at() {
		return create_at;
	}
	public void setCreate_at(String create_at) {
		this.create_at = create_at;
	}
	
	
	
	
}
