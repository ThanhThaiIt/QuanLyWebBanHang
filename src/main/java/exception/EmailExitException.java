package exception;

public class EmailExitException extends Exception{
	String mess;

	public EmailExitException(String mess) {
		super(mess);
		this.mess = mess;
	}
	
}
