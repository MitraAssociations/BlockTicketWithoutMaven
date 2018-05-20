/**
 * 
 */
package com.mitra.java.adminLogin.model;

/**
 * @author Imransha
 * 
 *         This entity class used for AdminTrack page
 *
 */
public class AdminLoginBean {

	private String Username;
	private String pwd;
	private String ipaddress;

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getIpaddress() {
		return ipaddress;
	}

	public void setIpaddress(String ipaddress) {
		this.ipaddress = ipaddress;
	}
}
