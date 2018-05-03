<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
<a href="index.jsp">Back to Books List</a>
<h1>Book Details</h1>
<table class="tg">
    <tr>
        <th width="40">ID</th>
        <th width="120">Author</th>
        <th width="120">Title</th>
        <th width="200">Description</th>
        <th width="80">ISBN</th>
        <th width="40">Year</th>
        <th width="40">isRead</th>
    </tr>
    <tr>
        <td>${book.id}</td>
        <td>${book.author}</td>
        <td>${book.title}</td>
        <td>${book.description}</td>
        <td>${book.isbn}</td>
        <td>${book.printYear}</td>
        <td>${book.readAlready}</td>
    </tr>
</table>
</body>
</html>