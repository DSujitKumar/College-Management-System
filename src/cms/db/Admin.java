package cms.db;

public class Admin {
	private String email,password,NewPassword,OldPassword;

	public String getNewPassword() {
		return NewPassword;
	}

	public void setNewPassword(String newPassword) {
		NewPassword = newPassword;
	}

	public String getOldPassword() {
		return OldPassword;
	}

	public void setOldPassword(String oldPassword) {
		OldPassword = oldPassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

}
