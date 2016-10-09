<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:set name="theme" value="'simple'" scope="page" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Login</h2>
	<s:fielderror />
	<s:form action="/login" method="POST">
		<table>
			<tr>
				<td>username</td>
				<td><s:textfield name="user.username" /></td>
			</tr>
			<tr>
				<td>password</td>
				<td><s:textfield name="user.password" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="login" /></td>
			</tr>
		</table>
	</s:form>
</body>
</html>