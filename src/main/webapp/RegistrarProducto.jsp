<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTRO</title>
</head>
<body>
<h1 align="center">REGISTRAR UN PRODUCTO</h1>
<form action="ControladorProducto" method="post">
<table align="center">
<tr>
<td>NOMBRE</td>
<td> <input type="text" name="nombresusti">></td>
</tr>
<tr>
<td>PRECIO VENTA</td>
<td> <input type="text" name="precioventasusti">></td>
</tr>
<tr>
<td>PRECIO COMPRA</td>
<td> <input type="text" name="preciocompsusti">></td>
</tr>
<tr>
<td>ESTADO</td>
<td> <input type="text" name="estadosusti">></td>
</tr>
<tr>
<td>DESCRIPCION</td>
<td> <input type="text" name="descripsusti">></td>
</tr>
<tr>
<td  colspan="2" style="text-align:center">
<input type="submit" value="Registrar">
</td>
</tr>
</table>
</form>
</body>
</html>