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
         <td class="titlebox">
            <span class="title01">예매 확인 및 취소</span>
         </td>
      </tr>
      <tr>
         <td>
            <center>
            <table width="80%" border="0" cellspacing="0" cellpadding="10">
               <tr class="contentbox">
                  <td class="content">
                     <center>
                     <table border="0" cellspacing="0" cellpadding="10">
                        <form action="ticketingConfirm" method="post" name="">
                       
                           <tr>
                              <td><span class="content_text01">아 이 디 : </span></td>
                              <td><input class="input_type01" type="text" name="mid" value="${memberId }" readonly="readonly"></td>
                           </tr>
                           <tr>
                              <td><span class="content_text01">전시회 이름 :</span></td>
                              <td><input class="input_type01" type="text" name="ticketName" value="${tk.ticketName }" readonly="readonly"></td>
                           </tr>
                           <tr>
                              <td><span class="content_text01">이용날짜 :</span></td>
                              <td>
                                 <input class="input_type01" id="pickDate" type="text" name="rday" value="${tk.rday }" readonly="readonly">&nbsp;
                                
                                 </td>
                           </tr>
                           <tr>
                              <td><span class="content_text01">매수 :</span></td>
                              <td><input class="input_type01" type="text" name="count" value="${tk.count }" readonly="readonly"></td>
                           </tr>
                           <tr>
                              <td><span class="content_text01">1장 당 가격 :</span></td>
                              <td><input class="input_type01" type="text" name="price" value="${tk.price }" readonly="readonly"></td>
                           </tr>
                          
                           <tr>
                           		<td colspan="2" align="center">
                                	<input class="button_type01" type="button" value="예매취소" onclick="script:window.location='ticketingDelete?mid='${tk.mid}">
                                	<input class="button_type01" type="button" value="처음으로" onclick="script:window.location='index'">
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