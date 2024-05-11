package BEAN;

public class Oders {
	private int id;
	private int idTransaction;
	private int idProduct;
	private int qlt;
	private float price;
	private float price_old;
	private int sale;
	private int warranty;
	private int idSize;
	private int idColor;
	private String url_order;
	private String create_at;
	public Oders( int idTransaction, int idProduct, int qlt, float price, float price_old, int sale,
			int warranty, int idSize, int idColor, String url_order, String create_at) {
		super();
		
		this.idTransaction = idTransaction;
		this.idProduct = idProduct;
		this.qlt = qlt;
		this.price = price;
		this.price_old = price_old;
		this.sale = sale;
		this.warranty = warranty;
		this.idSize = idSize;
		this.idColor = idColor;
		this.url_order = url_order;
		this.create_at = create_at;
	}
	public Oders() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdTransaction() {
		return idTransaction;
	}
	public void setIdTransaction(int idTransaction) {
		this.idTransaction = idTransaction;
	}
	public int getIdProduct() {
		return idProduct;
	}
	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}
	public int getQlt() {
		return qlt;
	}
	public void setQlt(int qlt) {
		this.qlt = qlt;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getPrice_old() {
		return price_old;
	}
	public void setPrice_old(float price_old) {
		this.price_old = price_old;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public int getWarranty() {
		return warranty;
	}
	public void setWarranty(int warranty) {
		this.warranty = warranty;
	}
	public int getIdSize() {
		return idSize;
	}
	public void setIdSize(int idSize) {
		this.idSize = idSize;
	}
	public int getIdColor() {
		return idColor;
	}
	public void setIdColor(int idColor) {
		this.idColor = idColor;
	}
	public String getUrl_order() {
		return url_order;
	}
	public void setUrl_order(String url_order) {
		this.url_order = url_order;
	}
	public String getCreate_at() {
		return create_at;
	}
	public void setCreate_at(String create_at) {
		this.create_at = create_at;
	}
	
	

}
