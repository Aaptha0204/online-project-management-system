<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="dao.ProductManagementDAO"%>
<%@page import="pojo.Product"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Products</title>
</head>
<body>
<%@ include file="header.jsp" %>



<table align="center" class="productTable">
<thead>
<tr>
<th>Product ID</th>
<th>Product Name</th>
<th>Category</th>
<th>Price</th>
<th>Usability</th>
<th>Quantity</th>
<th>Color</th>
<th>Status</th>
<th colspan="2">Actions</th>
</tr>
</thead>
<%
List<Product> productList = ProductManagementDAO.getAllProducts();
for (Product p : productList) {
%>
<tr>
<td><%=p.getProductId()%></td>
<td><%=p.getProductName()%></td>
<td><%=p.getProductCategory()%></td>
<td><%= p.getProductPrice() %></td>
<td><%= p.getProductUsability() %></td>
<td><%= p.getProductQuantity() %></td>
<td><%= p.getProductColor() %></td>
<td><%= p.getProductStatus() %></td>
<td><button class="actionBtn" onclick="location.href = 'editProduct.jsp?prodId=<%= p.getProductId()%>';">Edit</button></td>
<td><button class="actionBtn" onclick="location.href = 'processDeleteProduct.jsp?prodId=<%= p.getProductId()%>';">Delete</button></td>
</tr>



<%
}
%>
</table>



</body>
</html>