package com.core;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.hibernateUtil.HibernateHelper;

public class Paging {
	ArrayList list;
	int offset;
	int length;
	
	public Paging(int offset, int length){
		this.offset = offset;
		this.length = length;
		fillList();
	}
	
	public void fillList(){
		Session s = HibernateHelper.buildSessionFactory().openSession();
		Query q = s.getNamedQuery("getAllUsers");
		list = (ArrayList) q.list();
		
	}
	
	public ArrayList getListByOffsetAndLength(){
		ArrayList arrayList = new ArrayList();
		//calc the to value
		int to = this.offset + this.length;
		//if offset or lenght exceed set them to list.size
		if(this.offset > list.size()) this.offset = list.size();
		if(to > list.size()) to = list.size();
		//add the list items to the return collection
		for(int i=this.offset;i<to;i++){
			arrayList.add(list.get(i));
		}
		//return the collection
		return arrayList;
	}
	
	public int getListSize(){
		return list.size();
	}
	
	public Collection getPages(){
		Collection collection = new ArrayList();
		//calc how many pages are there
		int pages = list.size() / this.length;
		if(list.size() % this.length != 0)
			pages = pages + 1;
		//fill an collection with all pages
		for(int i=1;i<=pages;i++){
			collection.add(new Integer(i));
		}
		return collection;
	}
	
	public void setList(ArrayList list) {
		this.list = list;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public int getOffset() {
		return offset;
	}
	public void setOffset(int offset) {
		this.offset = offset;
	}

}
