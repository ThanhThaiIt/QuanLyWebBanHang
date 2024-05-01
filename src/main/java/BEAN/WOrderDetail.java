package BEAN;

import java.util.List;

public class WOrderDetail {
	private List<String> productName;
	private float shippingPrice;
	private float tax;
	private float subtotal;
	private float total;
	public WOrderDetail(List<String> productName, float subtotal, float total) {
		super();
		this.productName = productName;
		this.shippingPrice =10;
		this.tax = subtotal/10;
		this.subtotal = subtotal;
		this.total = this.shippingPrice+this.tax+this.subtotal;
	}
	public List<String> getProductName() {
		return productName;
	}
	public String getSubtotal() {
		return String.format("%.2f", subtotal);
	}
	public String getTotal() {
		return String.format("%.2f", total);
	}
	public String getTax() {
		return String.format("%.2f", tax);
	}
	
	public String getShippingPrice() {
		return String.format("%.2f", shippingPrice);
	}
	
	public static void name() {
		
	}
	
	public  String getListProductName() {
		String listNameString= " ";
		for (String string : productName) {
			listNameString+=string+", ";
		}
		
		return listNameString;
	}
	
}
