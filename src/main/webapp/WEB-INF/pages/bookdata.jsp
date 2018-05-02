<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }
        .tg td {
            font-family: Calibri, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #191970;
            color: #191970;
            background-color: #fff;
        }
        .tg th {
            font-family: Calibri, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ffffff;
            color: #ffffff;
            background-color: #191970;
        }
        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>

<body style="background-color:aliceblue;">
<a href="/books">Back to Books List</a>
<h1 style="color:#191970;">Book Details</h1>
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