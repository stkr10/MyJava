package com.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.core.Paging;

public class Pagination extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("pagination");
		int maxEntriesPerPage = 3;
		int pageNo = 1;
		int offset = 0;
		try{
			String page = request.getParameter("page");
			if(page!=null){
				pageNo = Integer.parseInt(page);
				 offset = maxEntriesPerPage * (pageNo - 1);
				 
			}
		
		}catch(NumberFormatException e){
			e.printStackTrace();
		}
		request.setAttribute("PageList", new Paging(offset,maxEntriesPerPage));
		
		
		return mapping.findForward("success");
	}

}
