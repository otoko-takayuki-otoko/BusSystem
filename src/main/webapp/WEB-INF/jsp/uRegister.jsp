<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>
<%@ page import="model.UserBean" %>

<%
	UserBean userBean = (UserBean) request.getAttribute("userB");
	String url = "/WEB-INF/jsp/uVerification.jsp";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>バス予約システム</title>
</head>

<body>

	<%
		UserDAO userDAO = new UserDAO();
	%>
		
	<%if ( userDAO.insert(userBean) ){%>
		<form action="register.jsp" method="post">
			<a>登録されました</a>
			<input name="name" type="hidden" value="<%= userBean.get_user_name() %>"><br>
			<input name="cnum" type="hidden" value="<%= userBean.get_call_number() %>"><br>
			<input type="submit" value="確認">
		</form>
	<%} else {%>
		<p>登録に失敗しました</p>
	<%}%>
</body>
</html>