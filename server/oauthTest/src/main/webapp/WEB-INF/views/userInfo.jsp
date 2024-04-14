<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<h1>User Information</h1>
<div>Name: ${userInfo.name}</div>
<div>Email: ${userInfo.email}</div>
<div><img src="${userInfo.pictureUrl}" alt="User Image"/></div>
</body>
</html>
