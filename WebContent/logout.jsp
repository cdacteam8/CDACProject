<%
	session.removeAttribute("ul");
	session.invalidate();
	response.sendRedirect("prep_login_form.htm");
%>