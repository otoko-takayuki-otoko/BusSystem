<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="model.Bus_ReserveBean" %>
<%@ page import="model.UserBean" %>

<%
	Bus_ReserveBean bus_reserve = (Bus_ReserveBean)request.getAttribute("bus_reserve");
	UserBean user = (UserBean)request.getAttribute("user");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>完了</title>
</head>
<body>
<h1>以下の内容で予約を登録しました</h1>

<%--セッションスコープにインスタンスがあるからおそらく持ってこれる --%>
<p><%bus_reserve.getSeatNumber() %></p>
<p><%bus_reserve.getFlightNumber() %></p>
<p><%uesr.get_user_id() %></p>



</body>
</html>