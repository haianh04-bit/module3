<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 02/07/2025
  Time: 9:38 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting Customer</title>
</head>
<body>
<h1>Delete Customer</h1>
<p>
    <a href="customers">Back to customer list</a>
</p>
<form method="post">
    <input type="hidden" name="id" value="${customer.id}" />
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Customer information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td>${requestScope["customer"].getName()}</td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>${requestScope["customer"].getEmail()}</td>
            </tr>
            <tr>
                <td>Address:</td>
                <td>${requestScope["customer"].getAddress()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete Customer"/></td>
                <td><a href="customers">Back to customer list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
