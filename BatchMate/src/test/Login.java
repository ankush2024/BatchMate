package test;

public class Login {


	private String inputUsername;
	private String inputPassword;
	public String getInputUsername() {
		return inputUsername;
	}

	public void setInputUsername(String inputUsername) {
		this.inputUsername = inputUsername;
	}

	public String getInputPassword() {
		return inputPassword;
	}

	public void setInputPassword(String inputPassword) {
		this.inputPassword = inputPassword;
	}

	
	public String execute(){
		/*if(inputUsername.equals("ank")){
			return "success";
		}
		else{
			return "error";
		}*/
		
		System.out.println("execute of login verify");
    return "success";
	}
}
