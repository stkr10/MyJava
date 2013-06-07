<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<html>
<head>
	<title>CRUD</title>
	<link rel="STYLESHEET" type="text/css" href="/style/jsc.css">
	<SCRIPT language="JavaScript">
/* function OnSubmitForm()
{
	if(document.pressed == 'Submit')
	{
		document.myform.action ="UserAction.do";
	}
		
	return true;
}
 */
/* function OnSubmitForm1()
{
	if(document.pressed == 'View')
	{
		document.form1.action ="ViewMoreAction.do";
	}
	else
	if(document.pressed == 'Delete')
	{
		document.form1.action ="DeleteAction.do";
	}
	if(document.pressed == 'Edit')
	{
		document.form1.action ="EditAction.do";
	}
	return true;
} */
</SCRIPT>
</head>

<body bgcolor="#B5CCEB">
<center>
<h4>Welcome to CRUD App</h4>
<br><br>

<!-- <FORM name="myform" onSubmit="return OnSubmitForm();" method="post">
<table align="center" border="1" bordercolor="#000000">
<tr>
<td >Name:</td>
<td > <INPUT TYPE="TEXT" Name="userName"></td>
</tr>
<tr>
<td >phoneNumber:</td>
<td > <INPUT TYPE="TEXT" Name="phoneNumber"></td>
</tr>
<tr>
<td >Email:</td>
<td > <INPUT TYPE="TEXT" Name="emailId"></td>
</tr>
</table>
<br>
<INPUT TYPE="SUBMIT" name="Operation" onClick="document.pressed=this.value" VALUE="Submit">
<input type="reset" name="reset" value="Reset">

</FORM> -->

<html:form action="/UserAction">
 <table align="center" border="1" bordercolor="#000000">
<tr>
   <td> Name:</td>
   <td> <html:text property="userName"></html:text></td>
 </tr>
 <tr>
   <td> PhoneNumber:</td>
    <td><html:text property="phoneNumber"></html:text></td>
 </tr>
  <tr>
  <td>Email ID:</td>
  <td><html:text property="emailId"></html:text></td>
   </tr>
 </table>  
 	<html:submit value="submit"></html:submit>
 	<html:reset value="reset"></html:reset>
    <!-- <input type="submit" name="submit" value="Submit">
 	<input type="reset" name="reset" value="Reset"> -->
</html:form>
<br>
<div style="color:red">
	<html:errors/>
</div>
<div >
<html:messages message="true" id="message1" >
       <bean:write name="message1"/><br>
</html:messages>
</div> 
<br>
<center><a href="ViewAction.do">View Inserted Records</a></center> 

</center>
</body>
</html>
