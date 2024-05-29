package BEAN;

public class UserGoogle {
private String id;
private String email;
private boolean verify_email;
private String name;
private String givenName;
private String familyName;
private String picture;
public UserGoogle(String id, String email, boolean verify_email, String name, String givenName, String familyName,
		String picture) {
	super();
	this.id = id;
	this.email = email;
	this.verify_email = verify_email;
	this.name = name;
	this.givenName = givenName;
	this.familyName = familyName;
	this.picture = picture;
}
public UserGoogle() {
	super();
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public boolean isVerify_email() {
	return verify_email;
}
public void setVerify_email(boolean verify_email) {
	this.verify_email = verify_email;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getGivenName() {
	return givenName;
}
public void setGivenName(String givenName) {
	this.givenName = givenName;
}
public String getFamilyName() {
	return familyName;
}
public void setFamilyName(String familyName) {
	this.familyName = familyName;
}
public String getPicture() {
	return picture;
}
public void setPicture(String picture) {
	this.picture = picture;
}
@Override
public String toString() {
	return "UserGoogle [id=" + id + ", email=" + email + ", verify_email=" + verify_email + ", name=" + name
			+ ", givenName=" + givenName + ", familyName=" + familyName + ", picture=" + picture + "]";
}



}
