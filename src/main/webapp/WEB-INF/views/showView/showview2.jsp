<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/board.css" rel="stylesheet" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://unpkg.com/bootstrap-datepicker@1.9.0/dist/js/bootstrap-datepicker.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css" integrity="sha512-rxThY3LYIfYsVCWPCW9dB0k+e3RZB39f23ylUYTEuZMDrN/vRqLdaCBo/FbvVT6uC2r0ObfPzotsfKF9Qc5W5g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/datepicker.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
  <link rel="stylesheet" href="resources/css/ind.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"  href="resources/css/app.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="/resources/js/app.js"></script>
<title>예약뷰페이지</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/datepicker.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/jquery-ui.css">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"  href="resources/css/test.css">
</head>

<body>

<%@ include file="../inc/header.jsp" %>
							
		<center>
			<script type="text/javascript">

				function popUp(){
					// open("경로", "이름", "옵션")
					window.open("showview3", "예매완료", "width=800px, height=700");
				}
				
			</script>
			</head>
			<body>
			
			 	<button onclick="popUp();">팝업창!</button>
			</body>
		<a href="Contact" data-bs-toggle="modal" data-bs-target="#ourModal" >Contact</a>
				 	</center>
			
			
			<div class="overlay">아하하하</div>
			
			
		
  
			<center>	
		    <div>
		        <p>window open/clode 테스트</p>
		    </div>
		    <div>
		        <button onclick="newTabClick()">새창 열기</button>
		        <button onclick="closeTabClick()">새창 닫기</button>
		    </div>
		    <script>
		      let myWindow;
		        function newTabClick() {
		            myWindow = window.open('http://www.naver.com', '네이버팝업', 'width=700px,height=800px,scrollbars=yes');
		        }
		
		        function closeTabClick() {
		            myWindow.close();
		        }
		    </script>
			</center>
			
			
			<center>
			 <br>
			    <b><font size="5" color="gray">부모창</font></b>
			    <br><br>
			    
			    <input type="button" value="자식창 열기" onclick="openChild()">
			    <br>전달할 값 : <input type="text" id="pInput"> 
			    <input type="button" value="전달" onclick="setChildText()">
			    
			    <script type="text/javascript">
			        let openWin;
			 
			        function openChild() {
			            // window.name = "부모창 이름"; 
			            window.name = "parentForm";
			            
			            // window.open("open할 window", "자식창 이름", "팝업창 옵션");
			            openWin = window.open("Child", "childForm", "width=570, height=350, resizable = no, scrollbars = no");    
			        }
			 
			        function setChildText(){
			            openWin.document.getElementById("cInput").value = document.getElementById("pInput").value;
			        }
			    </script>
				</center>
				<%@ include file="../inc/footer.jsp" %>
</body>
</html>