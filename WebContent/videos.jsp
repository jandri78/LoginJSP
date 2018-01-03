<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("login2.html");
	}
	%>
	
<iframe width="1349" height="480" src="https://www.youtube.com/embed/PEQxWg92Ux4?list=PLF1PP9yPC2uADaHFcz8YHSXq5EKY57g-D&amp;ecver=1" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
<iframe width="1349" height="480" src="https://www.youtube.com/embed/NDH1bGnNMjw?list=PLF1PP9yPC2uADaHFcz8YHSXq5EKY57g-D&amp;ecver=1" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
</body>
</html>