<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//Connection conn;
	//PreparedStatement stat
	//ResultSet rs;
	//rs.getString()
	
	String name = "홍길동";
	int age = 20;
	String color = "cornflowerblue";
	String css = "font-size: 3rem;";
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h1 {
		color: <%= color %>;
	}
	
	div {
		<%= css %>
	}
</style>
</head>
<body>
	<!-- ex06_script.jsp -->
	<%-- <% int a = 10; %> --%>
	
	<h1>스크립틀릿 + 표현식</h1>
	
	<div>이름: <%= name %></div>
	<div>나이: <%= age %></div>
	<div style="background-color: <%= color %>">색상: <%= color %></div>
	
	<script>
		alert('<%= name %>');
	</script>
	
</body>
</html>












