<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>

  <%@page import="model.TblProductosusti" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LISTADO DE LOS PRODUCTOS</title>
</head>

<body>

<h1 align="center" > MENU-PRINCIPAL</h1>
<h2 align="center"><a href="RegistrarProducto.jsp">REGISTRAR PRODUCTO</a>
</h2>
<table align="center" border="3">

<tr>
<td>ID CODIGO</td>
<td>NOM PRODUCTO</td>
<td>PRE VENTA</td>
<td>PRE COMPRA</td>
<td>EST.</td>
<td>DESC</td>
</tr>
<%
List<TblProductosusti> listadoproducto=(List<TblProductosusti>)request.getAttribute("listadoproductos");
if (listadoproducto!=null){
	
for(TblProductosusti lis:listadoproducto){
	%>	
<tr>
<td>
<%=lis.getIdproductosusti() %>
</td>	
<td>
<%=lis.getNombresusti()%>
</td>
<td>
<%=lis.getPrecioventasusti() %>
</td>
<td>
<%=lis.getPreciocompsusti() %>
</td>
<td>
<%=lis.getEstadosusti() %>
</td>
<td>
<%=lis.getDescripsusti()%>
</td>
</tr>
<%
   }//CIERRE
}  //CIERRE BUCLE
%>
</table>

</body>
</html>