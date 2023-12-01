<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.UserBean" %>
<%@ page import="dao.UserDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
	UserBean userBean = (UserBean) request.getAttribute("userB");
	String userName   = userBean.get_user_name();
	String callNumber = userBean.get_call_number();
	UserDAO	 userDAO  = new UserDAO();
	List<UserBean> userList = userDAO.findAll();
	boolean success = false;
	String userId = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
		for(UserBean user : userList) {
			if (userDAO.get_user_id(userName, callNumber) != null) {
				userId = userDAO.get_user_id(userName, callNumber);
				success = true;
			}
		}
	%>
	
	<% if (success) { %>
		<p> user id: <%= userId %></p>
		<p> user name; <%= userName %></p>
		<p> call number: <%= callNumber %></p>
	<% } else { %>
		<p>見つかりませんでした</p>
	<% } %>
	<form action="register.jsp">
	<button>予約へ</button>
	</form>

</body>
</html>