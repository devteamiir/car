<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Envoyer bouveau message</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/MailController" method="post">
	<table>
		<tr>
			<td align="right">À: </td>
			<td>
				<input type="text" name="email" size="75">
			</td>
		</tr>
		<tr>
			<td align="right">Objet:  </td>
			<td>
				<input type="text" name="subject" size="75">
			</td>
		</tr>
		<tr>
			<td align="right">Message:  </td>
			<td>
				<textarea name="message" cols="75" rows="6"></textarea>
			</td>
		</tr>
		<tr>
			<td ></td>
			<td>
				<input type="submit" value="send">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>