<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Contact Manager</h2>
	<s:fielderror />
	<s:form action="/add" method="POST">
		<s:hidden name="contact.id" />
		<table>
			<tr>
				<td><s:label path="name">
						name
					</s:label></td>
				<td><s:textfield name="contact.name" /></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"><input type="submit" value="addContact" /></td>
			</tr>
		</table>
	</s:form>

	<h3>Contacts</h3>
	<table>
		<thead>
			<tr>
				<th>id</th>
				<th>name</th>
				<th>action</th>
				<th>action</th>
			</tr>
		</thead>
		<s:iterator value="contacts">
			<tr>
				<td>${id}</td>
				<td>${name}</td>
				<td><s:url id="deleteContact"
						action="delete">
						<s:param name="contact.id" value="%{id}" />
					</s:url> <a href="<s:property value="deleteContact"/>">delete</a></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>