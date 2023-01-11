<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/board.js"></script>
<link rel="stylesheet" href="resources/css/ind.css">
<title>views</title>
</head>
<body>
	<%@ include file="inc/header.jsp" %>
	<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
				<center>
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<center>						
							<table border="0" cellspacing="0" cellpadding="10">
								<form action="comment2" method="post" name="board_frm">
									<tr>
										<td><span class="content_text01">아 이 디 : </span></td>
										<td><input class="input_type01" type="text" name="rid "value="${memberId }" readonly="readonly"></td>
									</tr>
									<tr>
										<td><span class="content_text01" name="myform" id="myform" method="post" >
											<fieldset>
									        <legend>별점</legend>
									        <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
									        <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
									        <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
									        <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
									        <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
									        </fieldset></span></td>
									</tr>
									<tr>
										<td><span class="content_text01">리뷰내용 : </span></td>
										<td><input class="input_type01" type="text" name=rcontent value="${rcontent }" ></td>
									</tr>									
									
									
									<tr>
										<td colspan="2">
										
											<input class="button_type01" type="submit" value="리뷰작성" >&nbsp;&nbsp;
											<input class="button_type01" type="button" value="글목록" onclick="script:window.location='event'">
										</td>
									</tr>
								</form>							
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