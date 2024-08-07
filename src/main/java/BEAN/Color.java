package BEAN;

public class Color {
	private int id;
	private String title;
	private String value;
	
	public Color() {
		super();
	}

	public Color(int id, String title) {
		super();
		this.id = id;
		this.title = title;
	}

	public Color(int id, String title, String value) {
		super();
		this.id = id;
		this.title = title;
		this.value = value;
	}
	
	

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
}
