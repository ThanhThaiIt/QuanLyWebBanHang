package BEAN;

public class Product {
	private int id;
	private int idSubCategory;
	private int idSupplier;
	private String name;
	private int guarantee;
	private float price;
	private int discount;
	private int quantity;
	private String video;
	private String description;
	private int idStatus;
	private int idType;
	private String create_at;
	public Product(int id, int idSubCategory, int idSupplier, String name, int guarantee, float price, int discount,
			int quantity, String video, String description, int idStatus, int idType, String create_at) {
		super();
		this.id = id;
		this.idSubCategory = idSubCategory;
		this.idSupplier = idSupplier;
		this.name = name;
		this.guarantee = guarantee;
		this.price = price;
		this.discount = discount;
		this.quantity = quantity;
		this.video = video;
		this.description = description;
		this.idStatus = idStatus;
		this.idType = idType;
		this.create_at = create_at;
	}
	public Product() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdSubCategory() {
		return idSubCategory;
	}
	public void setIdSubCategory(int idSubCategory) {
		this.idSubCategory = idSubCategory;
	}
	public int getIdSupplier() {
		return idSupplier;
	}
	public void setIdSupplier(int idSupplier) {
		this.idSupplier = idSupplier;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGuarantee() {
		return guarantee;
	}
	public void setGuarantee(int guarantee) {
		this.guarantee = guarantee;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getVideo() {
		return video;
	}
	public void setVideo(String video) {
		this.video = video;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getIdStatus() {
		return idStatus;
	}
	public void setIdStatus(int idStatus) {
		this.idStatus = idStatus;
	}
	public int getIdType() {
		return idType;
	}
	public void setIdType(int idType) {
		this.idType = idType;
	}
	public String getCreate_at() {
		return create_at;
	}
	public void setCreate_at(String create_at) {
		this.create_at = create_at;
	}
	
}
