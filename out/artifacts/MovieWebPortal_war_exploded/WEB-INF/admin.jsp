<%@ page import="model.Genre" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 26.02.2019
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Admin Page</title>
</head>
<body>

Add Post <br>
<form action="/admin/addMovie" method="post" enctype="multipart/form-data">
    Title : <input type="text" name="title"/> <br>
    Description : <textarea name="description"></textarea><br>
    Year : <input type="text" name="year"/><br>
    Director : <input type="text" name="director"/><br>
    Genre :
    <c:forEach var="g" items="${requestScope.get('genre')}">

        ${g.name}<input type="checkbox" name="gId" value="${g.name}"><br>
    </c:forEach>
    Image: <input type="file" name="picture"/><br><br>
    <input type="submit" value="ADD MOVIE">
</form><br><br>

Add Genre:<br>
<form action="/admin/addGenre" method="post">
    Name: <input type="text" name="name"><br>
    <input type="submit" value="ADD GENRE">
</form>
</body>
</html>
