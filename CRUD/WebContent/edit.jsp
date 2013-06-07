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
<title>Edit Record</title>
</head>
<body bgcolor="#DAB5DA">
<center>
<h4><u> Modify the Record</u></h4>
<h5 align="right"><a href="ViewAction.do">back</a></h5>
		<logic:present name="edit">
			<logic:notEmpty name="edit">
				<logic:iterate name="edit" id="record" scope="request">
					<form method="post"
						action="UpdateAction.do?id=<bean:write name="record" property="userId"/>"> 
	<table>
	<tr>
	<td>User Id:</td><td><bean:write name="record" property="userId" /></td>
				
					<td><input type="hidden" name="userId"
						value="<bean:write name="record" property="userId"/>" /></td>
	<tr><td>User Name:</td>
	<td><input type="text" name="userName"
						value="<bean:write name="record" property="userName"/>" /></td>
				
    <tr><td>Phone Number:</td>
    <td><input type="text" name="phoneNumber"
						value=" <bean:write name="record" property="phoneNumber"/>" /></td>
					
    <tr><td>Email Id:</td>
    <td><input type="text" name="emailId"
						value="<bean:write name="record" property="emailId"/>" /></td>
					
					
	</table>
	<br>
	<input type="submit" value="update" />
					</form>
				</logic:iterate>

			</logic:notEmpty>
		</logic:present>
	</center>
</body>
</html>