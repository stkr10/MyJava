package com.forms;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class UserForm extends ActionForm{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private long userId;
	private String userName;
	private String phoneNumber;
	private String emailId;
	
	
	
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	/*@Override
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		ActionErrors errors = new ActionErrors();
		 
			  if ((getUserName() == null) || (getUserName().length() < 1)) 
			  	{
			      errors.add("userName", new ActionMessage("error.userName.required"));
			 	}
			  if ((getPhoneNumber() == null) || (getPhoneNumber().length() < 1)) 
			  	{
			      errors.add("phoneNumber", new ActionMessage("error.phoneNumber.required"));
				} 
		return errors;
	}*/
	
	
}
