<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View_Records</title>
</head>
<body bgcolor="#B3FFB3">
	<center><h1><u>RECORDS</u></h1></center>
		<table width="100%"><tr><td align="left" width="50%"><a href="index.jsp">Home</a></td><td align="right" width="50%"><a href="Pagination.do">Pagination view</a></td></tr></table>
		
	<br>
	<logic:present name="uList">
<logic:notEmpty name="uList">
<table align="center" border="1" cellpadding="10" cellspacing="2">
<tr><th>Name</th><th>Phone Number</th><th colspan="3" align="center">Function</th></tr>
 <logic:iterate name="uList" id="users" scope="request">
<tr>
	<td><bean:write name="users" property="userName"/></td>
    <td><bean:write name="users" property="phoneNumber"/></td>
	<form name="viewform" method="post" action="ViewMoreAction.do?id=<bean:write name="users" property="userId"/>">
	    <td ><input type="submit" name="view" value="view"></td>
	 </form>
	 <form name="deleteform" method="post" action="DeleteAction.do?id=<bean:write name="users" property="userId"/>">
		<td ><input type="submit" name="delete" value="delete" />
		  <input type="hidden" name="delid" value="<bean:write name="users" property="userId"/>" />
		</td>
	 </form>
	 <form name="editform" method="post" action="EditAction.do?id=<bean:write name="users" property="userId"/>">
		<td ><input type="submit" name="edit" value="edit"></td>
	 </form>
</tr>	
</logic:iterate> 
</table>
</logic:notEmpty>  
</logic:present>
</body>
</html>