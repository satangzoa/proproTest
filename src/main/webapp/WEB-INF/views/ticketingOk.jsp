<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<title>예매 확인 후 결제</title>
</head>
<body>
<%@ include file="inc/header.jsp" %>
<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td class="titlebox1">
				<span class="title01">예매 확인</span>
			</td>
		</tr>
		
		<tr>
			<td>
				<center>
				<table width="80%" border="1 cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<center>						
							<table border="0" cellspacing="0" cellpadding="10">
									<tr>
										<td colspan="2" align="center" class="content_text01">
										예매 정보
										</td>
									</tr>
									<tr>
										<td><span class="content_text01">아 이 디 : </span>
										<span class="title02">&nbsp;&nbsp;&nbsp;&nbsp;${memberDto.mid} </span>
										
										</td>
									</tr>
									<tr>
										<td><span class="content_text01">전시회 이름 : </span>
										&nbsp;&nbsp;${BuyDto.ticketName }
										</td>
									</tr>
									
									<tr>
										<td><span class="content_text01">이용날짜 : </span>
										&nbsp;&nbsp;${BuyDto.selectedDate }
										</td>
									</tr>
									<tr>
										<td><span class="content_text01">매수 : </span>
										&nbsp;&nbsp;${BuyDto.count }장
										</td>
								<h2>전시회 예매가 완료 되었습니다.</h2>
											</tr>
									<input type="hidden" name = "userId" value="${mid} }">
									<input type="hidden" name = "ticketName" value="${ticketName}">
									<input type="hidden" name = "selectedDate" value="${selectedDate}">
												<input type="hidden" name = "ticketName" value="${count}">
									<tr>
									
									<tr>
										<td colspan="2">
											<input class="button_type01" type="button" value="처음으로" onclick="onclick="script:window.location='ticketing'">
										</td>
									</tr>
												
							</table>
							</center>							
						</td>						
					</tr>
					
				</table>
				</center>			
			</td>
		</tr>
	</table>
	</center>
<%@ include file="inc/footer.jsp" %>
</body>
</html>