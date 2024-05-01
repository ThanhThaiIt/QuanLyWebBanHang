package BEAN;

public class Banner {
 private int idSlideBanner;
 private String linkSlide;
 
 
 
public Banner() {
	 
}
public Banner(int idSlideBanner, String linkSlide) {
	super();
	this.idSlideBanner = idSlideBanner;
	this.linkSlide = linkSlide;
}
public int getIdSlideBanner() {
	return idSlideBanner;
}
public void setIdSlideBanner(int idSlideBanner) {
	this.idSlideBanner = idSlideBanner;
}
public String getLinkSlide() {
	return linkSlide;
}
public void setLinkSlide(String linkSlide) {
	this.linkSlide = linkSlide;
}
}
