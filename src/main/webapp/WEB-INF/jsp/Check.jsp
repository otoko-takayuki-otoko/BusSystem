<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="model.Bus_ReserveBean" %>

<%
	Bus_ReserveBean bus_reserve = (Bus_ReserveBean) session.getAttribute("bus_reserve");
%>

<%
	String SeatNumber = (String)session.getAttribute("SeatNumber");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>確認</title>
</head>
<body>
<h1>座席の確認</h1>
<p><%= bus_reserve.getSeatNumber() %>で間違いありませんか？</p>
<form>
<input type="hidden" action="SeatCheck" method="GET">
<button>座席選択画面に戻る</button>
</form>

<form action="DecisionServlet" method="POST">
<input type="hidden" name="seatNumber" value="<%= bus_reserve.getSeatNumber() %>">
<button>予約を確定する</button>
</form>

</body>
</html>