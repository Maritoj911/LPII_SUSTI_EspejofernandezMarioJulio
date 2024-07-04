<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>LOGIN</title>

</head>

<body>

<h1 align="center">INGRESAR AL SISTEMA</h1>

<form action="ControladorUsuarios" method="post">
<table align="center">

<tr>
<td>usuario</td>
<td><input type="text" name="usuariosusti"></td>
</tr>
<tr>
<td>password</td>
<td><input type="password" name="passwordsusti"></td>
</tr>
<tr>
<td colspan="3" style="text-align:center">
<input type="submit" value="Iniciar Sesión">
</td>
</tr>
</table>
</form>

</body>
</html>