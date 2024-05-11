package BEAN;

import org.eclipse.jdt.internal.compiler.IDebugRequestor;

public class Size {
	private int id;
	private String title;
	
	public Size() {
		super();
	}

	public Size(int id, String title) {
		super();
		this.id = id;
		this.title = title;
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
