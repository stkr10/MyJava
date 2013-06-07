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

import com.hibernateUtil.HibernateHelper;

public class DeleteAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String id = request.getParameter("delid");
		System.out.println(id);
		delete(id);
		
		return mapping.findForward("success");
	}
	
	public void delete(String id){
		Session s = HibernateHelper.getSessionfactory().openSession();
		Transaction t=s.beginTransaction();
		//Delete from users where user_id ='13';
		Query q = s.createQuery("Delete from UserBean where user_id ='"+id+"'");
		
		q.executeUpdate();
		t.commit();
		s.close();
		System.out.println("DeleteAction.delete()");
	}

}
