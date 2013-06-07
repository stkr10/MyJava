package com.actions;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;

import com.beans.UserBean;
import com.forms.UserForm;
import com.hibernateUtil.HibernateHelper;

public class ViewAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		Session s = HibernateHelper.buildSessionFactory().openSession();
		Query q = s.getNamedQuery("getAllUsers");
		List uList = q.list();
		int totalRecords = uList.size();
		
		Iterator itr = uList.iterator();
		while(itr.hasNext()){
			UserBean u= (UserBean)itr.next();
			System.out.println(u.getUserName());
			System.out.println(u.getPhoneNumber());
			System.out.println(u.getEmailId());
			
		}
		request.setAttribute("pageListSize", totalRecords);
		request.setAttribute("uList", uList);
		return mapping.findForward("success");
	}

}
