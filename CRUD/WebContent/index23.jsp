<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
<head>
	<title>Switching action field in HTML form - Example 1</title>
	<link rel="STYLESHEET" type="text/css" href="/style/jsc.css">
	<SCRIPT language="JavaScript">
function OnSubmitForm()
{
	if(document.pressed == 'Submit')
	{
		document.myform.action ="UserAction.do";
	}
	else
	if(document.pressed == 'View')
	{
		document.myform.action ="ViewAction.do";
	}
	if(document.pressed == 'ViewMore')
	{
		document.myform.action ="ViewMoreAction.do";
	}
	return true;
}
</SCRIPT>
</head>

<body>

<FORM name="myform" onSubmit="return OnSubmitForm();" method="post">
Name: <INPUT TYPE="TEXT" Name="userName"><br>
phoneNumber: <INPUT TYPE="TEXT" Name="phoneNumber"><br>
Email: <INPUT TYPE="TEXT" Name="emailId"><br>
<INPUT TYPE="SUBMIT" name="Operation" onClick="document.pressed=this.value" VALUE="Submit">
<INPUT TYPE="SUBMIT" name="Operation" onClick="document.pressed=this.value" VALUE="View">
<INPUT TYPE="SUBMIT" name="Operation" onClick="document.pressed=this.value" VALUE="ViewMore">
</FORM>
<html:messages id="msgID"  property="message1">
       <bean:write name="msgID"/><br>
</html:messages> 
	<P>
	<%--  <logic:present name="uList">
<logic:notEmpty name="uList">
<logic:iterate name ="Inserted" id="Msg" scope="request">
<bean:write name = "Msg" property = "message"/>
</logic:iterate>
</logic:notEmpty>  
</logic:present><br> --%>
	<!-- <a href="../../html-form/html-form-action.phtml">Switching HTML form action field dynamically</a> -->
	</P>

 <logic:present name="uList">
<logic:notEmpty name="uList">
<table border="1" cellpadding="10" cellspacing="2">
<tr><th>Name</th><th>Phone Number</th></tr>
 <logic:iterate name="uList" id="users" scope="request">
<tr>
	<td><bean:write name="users" property="userName"/></td>
    <td><bean:write name="users" property="phoneNumber"/></td>
</tr>	
</logic:iterate> 
</table>
</logic:notEmpty>  
</logic:present>


 <logic:present name="more">
<logic:notEmpty name="more">
<table border="1" cellpadding="10" cellspacing="2">
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
