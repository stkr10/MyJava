package com.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.beans.UserBean;
import com.forms.UserForm;
import com.hibernateUtil.HibernateHelper;

public class UserAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping Mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)  {
		UserForm uForm = (UserForm) form;
		System.out.println("UserAction.execute()");
		ActionMessages messages = new ActionMessages();
		ActionErrors errors = new ActionErrors();
		try{
			System.out.println("struts part entering");
			UserBean uBean = new UserBean();
			
			if((!uForm.getUserName().trim().equals("")) && (!uForm.getPhoneNumber().trim().equals("")) && (!uForm.getEmailId().trim().equals("")))
			{
				uBean.setUserName(uForm.getUserName());
				uBean.setPhoneNumber(uForm.getPhoneNumber());
				uBean.setEmailId(uForm.getEmailId());
				insert(uBean);
				
				ActionMessage msg = new ActionMessage("record.Insert.Succes");
				messages.add("message1", msg); 
				saveMessages(request, messages);
				return Mapping.findForward("success");
				
			}else{
				if(uForm.getUserName().trim().equals("")){
					//ActionMessage msg = new ActionMessage("error.userName.required");	
					//messages.add("message1", msg); 
					errors.add("err", new ActionMessage("error.userName.required"));
				}
				if(uForm.getPhoneNumber().trim().equals("")||(uForm.getEmailId().trim().equals(""))){
					//ActionMessage msg1 = new ActionMessage("error.phoneNumber.required");
					//messages.add("message1", msg1);
					 errors.add("err", new ActionMessage("error.data.required"));
				}
				saveErrors(request, errors);
				saveMessages(request, messages);
				return Mapping.findForward("failure");
			}
			//String message= "Recored Inserted successfully";
			//request.setAttribute("Inserted", message);
			
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println("error in Inserting into the database");
			return Mapping.findForward("failure");
		}
		
		
	}
	public void insert(UserBean uBean)throws HibernateException{
		Session s = HibernateHelper.getSessionfactory().openSession();
		Transaction t = s.beginTransaction();
		s.save(uBean);
		t.commit();
		s.close();
	}
}
