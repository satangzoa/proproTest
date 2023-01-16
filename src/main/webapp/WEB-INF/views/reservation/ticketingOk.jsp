<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/font.css" rel="stylesheet" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
	<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<title>예매 확인 후 결제</title>
</head>
<body>
<%@ include file="../inc/header.jsp" %>
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
										<td><span class="content_text01">아 이 디 : ${userid}</span>
										<span class="title02">&nbsp;&nbsp;&nbsp;&nbsp;</span>
										</td>
									</tr>
									<tr>
										<td><span class="content_text01">전시회 이름: ${stitle}</span>
										&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td><span class="content_text01">장소 : ${slocation}</span>
										&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td><span class="content_text01">공연기간 : ${sdday }</span>
										&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td><span class="content_text01">공연시간 : ${sage }</span>
										&nbsp;&nbsp;
										</td>
									</tr>
									<tr>
										<td><span class="content_text01">매수 : ${count }</span>
										&nbsp;&nbsp;
										</td>
									</tr>
									
										<tr>
										<td><span class="content_text01">1장 당 가격 : ${sprice }</span>
										&nbsp;&nbsp;
										</td>
									</tr>
									
									<tr>
										<td><span class="content_text01">총 금액 : ${count * sprice }</span>
										&nbsp;&nbsp;
										</td>
									</tr>
										
								<h2>전시회 예매가 완료 되었습니다.</h2>
									
									
												
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
<%@ include file="../inc/footer.jsp" %>
</body>
</html>