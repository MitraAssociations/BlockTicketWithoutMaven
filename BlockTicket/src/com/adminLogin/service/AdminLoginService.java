/**
 * 
 */
package com.adminLogin.service;

import com.adminLogin.model.AdminLoginBean;

/**
 * @author Imransha This interface used for logging admin pagea
 *
 */
public interface AdminLoginService {

	public AdminLoginBean connect(String name, String pwd, String ipaddress); // need to change the data type for ipaddress

}
