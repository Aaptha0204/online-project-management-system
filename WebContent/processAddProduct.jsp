<%@page import="dao.ProductManagementDAO"%>
<%@page import="pojo.Product"%>

<%

String productId = request.getParameter("prodId");
String productName = request.getParameter("prodName");
String productCategory = request.getParameter("prodCategory");
Integer productPrice = Integer.parseInt(request.getParameter("prodPrice"));
Integer productUsability = Integer.parseInt(request.getParameter("prodUsability"));
Integer prodQuantity = Integer.parseInt(request.getParameter("prodQuantity"));
String productColor = request.getParameter("prodColor");
String productStatus = request.getParameter("prodStatus");

Product product = new Product(productId,productName,productCategory,productPrice,productUsability,prodQuantity,productColor,productStatus);

int status = ProductManagementDAO.addProduct(product);
if(status == 1)
{
	response.sendRedirect("viewProducts.jsp"); 
}
else
{
	response.sendRedirect("error.jsp"); 
}

%>