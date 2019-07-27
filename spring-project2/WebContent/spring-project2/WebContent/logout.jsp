<%
	session.removeAttribute("user");
	session.invalidate();
	response.sendRedirect("prep_login_form.htm");
%>