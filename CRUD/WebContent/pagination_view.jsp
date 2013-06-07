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
<title>pagination_view</title>
</head>
<body bgcolor="#FFF599">
	<center><h1><u>RECORDS</u></h1></center>
		<h5 align="right"><a href="ViewAction.do">View all Records</a></h5>
	<br>
	<logic:present name="PageList">
			<logic:notEmpty name="PageList">
				<center>
			
				<table border="1">
						<tr>
							<td><b>Name</b></td>
							<td><b>phone number</b></td>
							<td colspan="3" align="center"><b>Function</b></td>
						</tr>
				
					<logic:iterate name="PageList" property="listByOffsetAndLength"
					id="var">
						<tr>
						
							<td><bean:write name="var" property="userName" /></td>
							<td><bean:write name="var" property="phoneNumber" /></td>
							<td><form name="viewform" method="post"
									action="ViewMoreAction.do?id=<bean:write name="var" property="userId"/>">
									<input type="submit" name="view" value="view">
								</form></td>
							<td><form name="deleteform" method="post"
									action="DeleteAction.do?id=<bean:write name="var" property="userId"/>">
									<input type="submit" name="delete" value="delete" /> <input
										type="hidden" name="delid"
										value="<bean:write name="var" property="userId"/>" />

								</form></td>
							<td><form name="editform" method="post"
									action="EditAction.do?id=<bean:write name="var" property="userId"/>">
									<input type="submit" name="edit" value="edit">
								</form></td>
						</tr>
						</logic:iterate>

					</table>
					</center>
 
			</logic:notEmpty>
		</logic:present>
		<br>
<logic:present name="PageList">
			<logic:notEmpty name="PageList">
			<center>
		<logic:iterate name="PageList" property="pages" id="varpage">
			<html:link action="/Pagination" paramName="varpage" paramId="page">
				<bean:write name="varpage" />
			</html:link>
		</logic:iterate>
		</center>
		</logic:notEmpty>
		</logic:present>
</body>
</html>