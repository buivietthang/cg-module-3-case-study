<%--
  Created by IntelliJ IDEA.
  User: BUI VIET THANG
  Date: 03/01/2022
  Time: 11:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$Title$</title>
</head>
<body>
<table border="1">
    <th>idSupplier</th>
    <th>nameSupplier</th>
    <th>descriptionSupplier</th>

    <c:forEach items="${listSupplier}" var="c" varStatus="loop">
        <tr>
            <td>${loop.count}</td>
            <td>${c.nameSupplier}</td>
            <td>${c.descriptionSupplier}</td>
            <td><a href="/?action=delete&idSupplier=${c.idSupplier}">Delete</a></td>
            <td><a href="/?action=edit&idSupplier=${c.idSupplier}">Edit</a></td>
        </tr>
    </c:forEach>
</table>
<td><a href="/?action=create">Create</a></td>
</body>
</html>
