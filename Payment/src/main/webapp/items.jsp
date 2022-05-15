<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="model.Payment" %>
<%
//UserID Method Status Amount Date Description
if (request.getParameter("UserID") != null)
{
	 String stsMsg;
	 Payment itemObj = new Payment();
	if (request.getParameter("hidItemIDSave") == "")
	 {
	 stsMsg = itemObj.insertPayment(request.getParameter("UserID"),
	 request.getParameter("Method"),
	 request.getParameter("Status"),
	 request.getParameter("Amount"),
	 request.getParameter("Date"),
	 request.getParameter("Description"));
	
	 } 
	else//Update----------------------
	{
		
	stsMsg = itemObj.updatePayment( request.getParameter("hidItemIDSave"),
			 request.getParameter("UserID"),
			 request.getParameter("Method"),
			 request.getParameter("Status"),
			 request.getParameter("Amount"),
			 request.getParameter("Date"),
			 request.getParameter("Description"));
	}
	 session.setAttribute("statusMsg", stsMsg);
}

//Delete item----------------------------------
if (request.getParameter("hidItemIDDelete") != null)
{
Payment itemObj = new Payment();
String stsMsg = itemObj.deletePayment(request.getParameter("hidItemIDDelete"));
session.setAttribute("statusMsg", stsMsg);
}
%>

<html>
<head>
<link rel="stylesheet" href="views/bootstrap.min.css">
<meta charset="ISO-8859-1">


<title>Payment Gateway</title>
</head>

<body>

<h1>Payment Gateway</h1>
<form method="post" action="items.jsp">
<div class="container">
 <div class="row">
 <div class="col">

 UserID: <input name="UserID" type="text"  class="form-control"><br>
 Method: <input name="Method" type="text"  class="form-control"><br>
 Status: <input name="Status" type="text"  class="form-control"><br>
 Amount: <input name="Amount" type="text"  class="form-control"><br>
 Date: <input name="Date" type="text"  class="form-control"><br>
 Description: <input name="Description" type="text"  class="form-control"><br>
 
 <input name="btnSubmit" type="submit" value="Save"class="btn btn-primary">
<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
 </div>
 </div>
</div>
</form>
<div class="alert alert-success">
 <%
 if(session.getAttribute("statusMsg")!=null)
 out.print(session.getAttribute("statusMsg"));
 %>
</div>
<br>
<%
Payment itemObj = new Payment();
 out.print(itemObj.readPayment());
%>

</body>
</html>