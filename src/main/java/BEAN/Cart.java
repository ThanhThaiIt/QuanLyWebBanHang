package BEAN;

public class Cart  {
private int id;
private String name;
private int quantity;
private String imageString;
private float price;
private int size;
private int color;

public Cart(Product product, String urString,int sizeParam,int colorParam) {//,int size1
	this.id = product.getId();
	this.name= product.getName();
	this.quantity = 1;
	this.imageString = urString;
	this.price = product.getPrice();
	this.size=sizeParam;
	this.color = colorParam;
}



public int getColor() {
	return color;
}



public void setColor(int color) {
	this.color = color;
}



public int getSize() {
	return size;
}



public void setSize(int size) {
	this.size = size;
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
