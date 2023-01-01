<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%
String[] img ={"s1.png", "s2.png", "s3.png", "s4.png", "s5.png", "s6.png", "s7.png", "s8.png", "s9.png"};
String[] name = {"j1", "j2", "j3", "j4", "j5", "j6", "j7", "j8", "j9"};
String[] price = {"1000", "1500", "2000", "3,000", "3,500", "4,000", "5,000", "6,000", "7,000"};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓 예매</title>


</head>
<body>
<%@ include file="inc/header.jsp" %>
<div align="center">
	<h3>[전시회 티켓 예매]</h3>
	<table border="1">
		
		<%
		for(int i = 0; i < img.length; i++) {
			if(i % 3 == 0) { 
				out.println("<tr align='center'>");
			}
			out.println("<td>");
				out.println("<table>");
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<img src = 'resources/img/" + img[i] + "' width='150' height='150' />");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<b>" + name[i] + "</b>");
						out.println("</td>");
					out.println("</tr>");
					
					;
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<b>￦" + price[i] + "원</b>");
						out.println("</td>");
					out.println("</tr>");
					out.println("<tr align='center'>");
						out.println("<td>");
						
							out.println("<input type='button' value=' 예매하기' ");
							out.println("onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
						out.println("</td>");
					out.println("</tr>");
				out.println("</table>");
			out.println("</td>");
			if(i % 3 == 2) {
				out.println("</tr>");
			}
		}
		%>	
	</table>
</div>
<%@ include file="inc/footer.jsp" %>
</body>
</html>