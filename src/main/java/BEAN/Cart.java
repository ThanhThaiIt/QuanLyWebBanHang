package BEAN;

public class Cart  {
private int id;
private String name;
private int quantity;
private String imageString;
private float price;


public Cart(Product product, String urString) {
	this.id = product.getId();
	this.name= product.getName();
	this.quantity = 1;
	this.imageString = urString;
	this.price = product.getPrice();
}

public float getPrice() {
	return price;
}

public void setPrice(float price) {
	this.price = price;
}

public int getQuantity() {
	return quantity;
}

public void setQuantity(int quantity) {
	this.quantity = quantity;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getImageString() {
	return imageString;
}

public void setImageString(String imageString) {
	this.imageString = imageString;
}






}
