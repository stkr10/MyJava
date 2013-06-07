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
import com.hibernateUtil.HibernateHelper;

public class ViewMoreAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String id = request.getParameter("id");
		System.out.println(id);
		Session s = HibernateHelper.getSessionfactory().openSession();
		//Query q = s.getNamedQuery("getAllUsers");
		Query q = s.createQuery("FROM UserBean WHERE user_id = '"+id+"'");
	
		List l = q.list();
		/*Iterator itr = l.iterator();
		while(itr.hasNext()){
			UserBean u= (UserBean)itr.next();
			System.out.println("userId is:"+u.getUserId());
			System.out.println(u.getUserName());
			System.out.println(u.getPhoneNumber());
			System.out.println(u.getEmailId());
			
		}*/
		request.setAttribute("more", l);
		
		return mapping.findForward("success");
	}
	

}
