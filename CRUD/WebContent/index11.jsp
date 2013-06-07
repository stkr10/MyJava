<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script>
function showView()
{
alert("h");
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Sample App</title>
<center><h2>struts application</h2></center>
</head>
<hr />

<body>

<form  action="UserAction.do" method="post">
<center><table width="200" border="1">
  <tr>
    <td>User Name</td>
    <td><input type="text" name="userName" /></td>
  </tr>
  <tr>
    <td>phone Number </td>
    <td><input type="text" name = "phoneNumber" /> </td>
  </tr>
  <tr>
    <td>Email ID </td>
    <td><input type="text" name = "emailId" /> </td>
  </tr>
  
    <td><input type="submit" value ="Submit" /></td>
    <td><input type="reset" value = "Reset"/></td>
     <td><input type="button" value = "view"  onclick="showView()" /></td>
  </tr>
 </table>
 <hr />
</center>
</form>

</body>
</html>
