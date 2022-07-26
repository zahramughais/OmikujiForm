<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Omikuji</title>
</head>
<body>
    <h1>Send an Omikuji</h1>
    <div>
        <form action="/omikuji/submit" method="post">
            <label for="num">Pick any number from 5 to 25</label>
            <select name="num">
                <%for (int i = 5; i<=25; i++) {%>
                    <option value="<%=i%>"><%=i%></option>
                <%}%>
            </select>
            <label for="city">Enter the name of any city.</label>
            <input type="text" name="city">
            <label for="name">Enter the name of any real person.</label>
            <input type="text" name="name">
            <label for="prof">Enter professional endeavor or hobby.</label>
            <input type="text" name="prof">
            <label for="living">Enter any type of living thing.</label>
            <input type="text" name="living">
            <label for="say">Say something nice to someone:</label>
            <textarea name="say" cols="30" rows="10"></textarea>
            <p>Send and show a friend</p>
            <input type="submit" value="Send">
        </form>
    </div>
</body>
</html>