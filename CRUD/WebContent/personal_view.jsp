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
<title>personal_view</title>
</head>
<body bgcolor="#567FCE">
	<center><h1><u>PERSONAL RECORDS</u></h1></center>
	<h5 align="right"><a href="ViewAction.do">back</a></h5>
	<br>	
 <logic:present name="more">
<logic:notEmpty name="more">
<table align="center" border="1" cellpadding="10" cellspacing="2">
<tr><th>SI</th><th>Name</th><th>Phone Number</th><th>Email</th></tr>
 <logic:iterate name="more" id="record" scope="request">
<tr>
	<td><bean:write name="record" property="userId"/></td>
	<td><bean:write name="record" property="userName"/></td>
    <td><bean:write name="record" property="phoneNumber"/></td>
    <td><bean:write name="record" property="emailId"/></td>
</tr>	
</logic:iterate> 
</table>



</logic:notEmpty>  
</logic:present>
	
</body>
</html>