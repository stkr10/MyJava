package com.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.forms.UserForm;
import com.hibernateUtil.HibernateHelper;

public class UpdateAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserForm uform=(UserForm) form;
		
		String uq="update UserBean set userName='"+uform.getUserName()+"',phoneNumber='"+uform.getPhoneNumber()+"',emailId='"+uform.getEmailId()+"' where userId = "+uform.getUserId();
		System.out.println(uq);		System.out.println("In update Action");
		
		Session s = HibernateHelper.getSessionfactory().openSession();
		Transaction t = s.beginTransaction();
		Query q =s.createQuery(uq);
		q.executeUpdate();
		t.commit();
		//s.update(q);
		return mapping.findForward("success");
	}

}
