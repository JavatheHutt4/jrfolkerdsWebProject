<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Table</title>
</head>
<body style="color: white; background-color: rgb(51, 0, 0);"
alink="#000099" link="#000099" vlink="#990099">

Hello 
<%
	String name = request.getParameter("Name");
	out.println(name);
%>
. Here is your table.<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<%
	int rows = Integer.parseInt(request.getParameter("Rows"));
	int columns = Integer.parseInt(request.getParameter("Columns"));
	if((rows <= 0) || (columns <= 0))
		response.sendRedirect("classexercise.jsp?Rows="+rows+"&Columns="+columns+"&Name="+name+"");
	for(int i = 1; i <= rows; i++){
		out.print("<tr>");
		for(int j = 1; j <= columns; j++){
			out.print("<td style=\"vertical-align: top;\">("+i+","+j+")<br></td>");
		}
		out.print("</tr>");	
	}
%>
</tbody>
</table>
<br>
</body>
</html>