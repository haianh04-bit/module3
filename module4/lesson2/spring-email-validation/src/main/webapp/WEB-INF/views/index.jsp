<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>EmailValidation</title>
</head>
<body>
<h1>Email Validation</h1>
<h3 style="color: red">${message}</h3>
<form action="validate" method="post">
  <input type="text" name="email" placeholder="Email">
  <input type="submit" value="Validate">
</form>
</body>
</html>