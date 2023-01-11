<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="inc/header.jsp" %>
				<center>
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<br><br>
							<center>
							<table width="80%" border="0" cellspacing="0" cellpadding="10">
								<tr>
									<th class="board_title">번호</th>
									<th class="board_title">아이디</th>
									<th class="board_title" width="50%">별점</th>
									<th class="board_title"width="50%">리뷰내용</th>
								</tr>
								<c:forEach items="${view }" var="view">
								<tr>
									<td class="board_content01">${view.rnum }</td>
									<td class="board_content01">${view.rid }</td>
									<td class="board_content02">${view.rating }⭐</td>
									<td class="board_content01">${view.rcontent }</td>
									</td>
								</tr>						
								</c:forEach>
								<tr>
									<td colspan="5" align="right">
										<input class="button_type01" type="submit" value="리뷰작성" onclick="script:window.location='review'">
									</td>
								</tr>
								
							</table>
							</center>
							<br>						
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