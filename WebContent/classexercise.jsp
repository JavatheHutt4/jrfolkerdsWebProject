<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Class Exercise</title>
</head>
<body>
Enter the dimensions for the desired table below:<br>
<%
	String name = request.getParameter("Name");
	if(name!=null){
		int rows = Integer.parseInt(request.getParameter("Rows"));
		int columns = Integer.parseInt(request.getParameter("Columns"));		
		if(rows < 1){
			if(columns < 1){
				out.print("Hello "+name+", rows and columns need to be >= 1");
			}
			else
				out.print("Hello "+name+", values need to be >= 1");
		}
		else
			out.print("Hello "+name+", values need to be >= 1");
	}
%>
<form action="createtable.jsp"><br>
<br>
<br>
<table style="text-align: left; width: 432px; height: 179px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top; width: 441px;">Enter Your Name<br>
</td>
<td style="vertical-align: top; width: 199px;"><input
name="Name"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 441px;">Enter Number of
Rows<br>
</td>
<td style="vertical-align: top; width: 199px;"><input
name="Rows" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 441px;">Enter Number of
Columns<br>
</td>
<td style="vertical-align: top; width: 199px;"><input
name="Columns" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 441px;"><input
name="Submit" value="Submit" type="submit"><br>
</td>
<td style="vertical-align: top; width: 199px;"><input
name="Reset" type="reset"><br>
</td>
</tr>
</tbody>
</table>
</form>
<br>
<br>
</body>
</html>