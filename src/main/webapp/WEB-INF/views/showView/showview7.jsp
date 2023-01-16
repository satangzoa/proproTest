<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지창들</title>
<!-- 새로 추가한 것들 -->
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"
    integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"
    integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.slim.min.js" integrity="sha512-6ORWJX/LrnSjBzwefdNUyLCMTIsGoNP6NftMy2UAm1JBm6PRZCO1d7OHBStWpVFZLO+RerTvqX/Z9mBFfCJZ4A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"
    integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  
<link rel="stylesheet"   href="resources/css/_front.css">

<script src="/resources/js/app.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.slim.min.js" integrity="sha512-jxwTCbLJmXPnV277CvAjAcWAjURzpephk0f0nO2lwsvcoDMqBdy1rh1jEwWWTabX1+Grdmj9GFAgtN22zrV0KQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" type="text/css" href="resources/css/slick.css"/>
<link rel="stylesheet" type="text/css" href="resources/css/slick-theme.css"/>

<script type="text/javascript" src="resources/js/slick.js"></script>
<script type="text/javascript" src="resources/js/slick.min.js"></script>
<script >
$(function(){
	$('#slider-div').slick({
		slide: 'div',		//슬라이드 되어야 할 태그 ex) div, li 
		infinite : true, 	//무한 반복 옵션	 
		slidesToShow : 3,		// 한 화면에 보여질 컨텐츠 개수
		slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
		speed : 300,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
		arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
		dots : true, 		// 스크롤바 아래 점으로 페이지네이션 여부
		autoplay : true,			// 자동 스크롤 사용 여부
		autoplaySpeed : 10000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
		pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
		vertical : false,		// 세로 방향 슬라이드 옵션
		prevArrow : "<button type='button' class='slick-prev'>Previous</button>",		// 이전 화살표 모양 설정
		nextArrow : "<button type='button' class='slick-next'>Next</button>",		// 다음 화살표 모양 설정
		dotsClass : "slick-dots", 	//아래 나오는 페이지네이션(점) css class 지정
		draggable : true, 	//드래그 가능 여부 
		
		responsive: [ // 반응형 웹 구현 옵션
			{  
				breakpoint: 600, //화면 사이즈 
				settings: {
					//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
					slidesToShow:2 
				} 
			},
			{ 
				breakpoint:550, //화면 사이즈
				settings: {	
					//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
					slidesToShow:1 
				} 
			}
		]

	});
	})
	

</script>
<style type="text/css">
.slider-div.services-body {
  width:300px;
  height:300px;
  margin:0px 10px;
  display:inline-block;
  background:white;
  border-radius: 5px;
}

</style>
</head>

<body>
<%@ include file="../inc/header.jsp" %>

			<div id="carousel-front-slides" class="carousel slide" data-bs-ride="carousel">
			    <div class="carousel-indicators">
			      <button type="button" data-bs-target="#carousel-front-slides" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			      <button type="button" data-bs-target="#carousel-front-slides" data-bs-slide-to="1" aria-label="Slide 2"></button>
			      <button type="button" data-bs-target="#carousel-front-slides" data-bs-slide-to="2" aria-label="Slide 3"></button>
			    </div>
			    
			    <div class="carousel-inner">
			      <div class="carousel-item active">
			        <img id="outer-slide"  src="resources/images/bg1.png" class="d-block w-100" alt="First slide">
			        <div id="inner-slide" class="carousel-caption col-8">
			          <img src="resources/images/bg1.png" alt="First slide" class="d-none d-md-block shadow-xl w-100">
			          <div class="carousel-caption">
			            <h3>오페라의 유령</h3>
			          </div>
			        </div>
			      </div>
			      <div class="carousel-item">
			        <img id="outer-slide"  src="resources/images/bg2.png"  class="d-block w-100" alt="Second slide">
			        <div id="inner-slide" class="carousel-caption col-8">
			          <img src="resources/images/bg2.png" alt="Second slide" class="d-none d-md-block shadow-xl w-100">
			          <div class="carousel-caption">
			            <h3>광주</h3>
			          </div>
			        </div>
			      </div>
			      <div class="carousel-item">
			        <img id="outer-slide"  src="resources/images/bg4.png" class="d-block w-100" alt="Third slide">
			        <div id="inner-slide" class="carousel-caption col-8">
			          <img  src="resources/images/bg4.png"alt="Third slide" class="d-none d-md-block shadow-xl w-100">
			          <div class="carousel-caption">
			            <h3>이상한 나라의 아빠</h3>
			          </div>
			        </div>
			      </div>
			    </div>
			    
			    
			  <button class="carousel-control-prev" type="button" data-bs-target="#carousel-front-slides" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carousel-front-slides" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </button>
			</div>

		<section id="services">
		   
		  <div style="padding:300px 100px; background-color: skyblue;">
		        <div id="slider-div" class="services-body">
		          <div class="services-col mx-2 my-3">
		            <div class="card">
		              <a href="#">
		                <img  src="resources/images/y1.png"    class="card-img-top " >
		              </a>
		              <div class="card-body">
		                <h4 class="card-title">영감 공감</h4>
		                <p class="card-text fw-light mb-4">
		                  공감을 통한 영감 스토리채널. 공감의 힘으로 영감을 얻는다.
		                </p>
		                <a href="#" class="btn btn-primary">View more...</a>
		              </div>
		            </div>
		          </div>
		          <div class="services-col mx-2 my-3">
		            <div class="card">
		              <a href="#">
		                <img  src="resources/images/b1.png"  class="card-img-top">
		              </a>
		              <div class="card-body">
		                <h4 class="card-title">꽃이피다</h4>
		                <p class="card-text fw-light mb-4">
		                 서울공예박물관에서 상설 전시로 진행되고 있는 <자수, 꽃이 피다>는 서울공예박물관 허동화·박영숙 컬렉션에서 선정한 자수 병풍을 회화적 관점으로 재조명하고있다.
		                </p>
		                <a href="#" class="btn btn-primary">View more...</a>
		              </div>
		            </div>
		          </div>
		          <div class="services-col mx-2 my-3">
		            <div class="card">
		              <a href="#">
		                <img  src="resources/images/s4.png" class="card-img-top">
		              </a>
		              <div class="card-body">
		                <h4 class="card-title">펜타그램</h4>
		                <p class="card-text fw-light mb-4">
		                  뚜렷한 작품세계와 따뜻한 시선을 가진 작가분들의 많은 참여했다.
		                </p>
		                <a href="#" class="btn btn-primary">View more...</a>
		              </div>
		            </div>
		          </div>
		          <div class="services-col mx-2 my-3">
		            <div class="card">
		              <a href="#">
		                <img  src="resources/images/s5.png"  class="card-img-top ">
		              </a>
		              <div class="card-body">
		                <h4 class="card-title">감성으로부터 자연</h4>
		                <p class="card-text fw-light mb-4">
		                  생태적 감성이란 나의 존재가 자연으로부터 시작되었고, 자연과 깊게 연결되어 있음을 느낄 줄 아는 것이다.
		                </p>
		                <a href="#" class="btn btn-primary">View more...</a>
		              </div>
		            </div>
		          </div>
		          <div class="services-col mx-2 my-3">
		            <div class="card">
		              <a href="#">
		                <img  src="resources/images/s7.png"  class="card-img-top ">
		              </a>
		              <div class="card-body">
		                <h4 class="card-title">푸우는 내친구</h4>
		                <p class="card-text fw-light mb-4">
		                  이번 곰돌이 푸 전시회는 총 4개의 전시공간과 한 개의 영상관, 포토존과 기념품샵이로 구성되어 있다.
		                </p>
		                <a href="#" class="btn btn-primary">View more...</a>
		              </div>
		            </div>
		          </div>
		          <div class="services-col mx-2 my-3">
		            <div class="card">
		              <a href="#">
		                <img src="resources/images/s6.png"   class="card-img-top ">
		              </a>
		              <div class="card-body">
		                <h4 class="card-title">앙리마티스</h4>
		                <p class="card-text fw-light mb-4">
		                 20세기 미술에서 가장 위대한 작가로 손꼽히는 앙리 마티스(1869~1954)의 국내 최대 규모 회고전이 한국을 찾아온다
		                </p>
		                <a href="#" class="btn btn-primary">View more...</a>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		   </div>
		  </section>
		

		<!-- Front latest news -->
		  <section id="latest-news">
		    <div class="section-content">
		      <div class="container">
		        <div class="row">
		          <div class="col-10 offset-1">
		            <h3>Latest News</h3>
		          </div>
		          <br><br>
		          <div class="col-lg-4 col-md-6 mb-4">
		            <div class="card shadow-xl">
		              <div class="card-body">
		                <h6 class="text-danger">
		                  <i class="fas fa-heartbeat"></i> review1
		                </h6>
		                <h5 class="card-title">
		                  <a href="post.html" class="text-purple">무민 원화전을 보고나서</a>
		                </h5>
		                <p>티케팅을 하고보니 종이 티켓에 무민이 새겨진 그림을 보고 소장하고 싶다는 생각이 바로 들었습니다!</p>
		                <div class="card-footer">
		                  <img  src="resources/images/h1.png" alt="My photo" class="rounded-circle me-2" width="30px">
		                  <span>홍길동</span>
		                  <span class="float-end">
		                    <i class="fas fa-thumbs-up"></i> 342
		                  </span>
		                </div>
		              </div>
		            </div>
		          </div>
		          <div class="col-lg-4 col-md-6 mb-4">
		            <div class="card shadow-xl">
		              <div class="card-body">
		                <h6 class="text-danger">
		                  <i class="fas fa-heartbeat"></i> review2
		                </h6>
		                <h5 class="card-title">
		                  <a href="post.html" class="text-purple">너의 이름은 후기</a>
		                </h5>
		                <p>작화가 예쁘기로 소문한 신카이 마코토 작품 중에서도 최고로 꼽히는 애니인지라 이번 전시회를 유독 많은 사람들이 찾은 것이 아닐까 생각이 듭니다.</p>
		                <div class="card-footer">
		                  <img  src="resources/images/p1.png"  alt="My photo" class="rounded-circle me-2" width="30px">
		                  <span>펭수</span>
		                  <span class="float-end">
		                    <i class="fas fa-thumbs-up"></i> 122
		                  </span>
		                </div>
		              </div>
		            </div>
		          </div>
		          <div class="col-lg-4 col-md-12 mb-4">
		            <div class="list-group">
		              <a href="post.html" class="list-group-item list-group-action flex-column align-items-start">
		                <div class="d-flex w-100 justify-content-between">
		                  <h5 class="text-purple mb-1">차이비스전 후기</h5>
		                  <small>2 days ago</small>
		                </div>
		                <p class="mb-1">치바이스의 그림 옆에는 항상 그림과 관련된 시구가 있는데 작품과 시를 하나로 넣고 해석하며 감상하는 것이 좋았습니다. </p>
		              </a>
		              <a href="post.html" class="list-group-item list-group-action flex-column align-items-start">
		                <div class="d-flex w-100 justify-content-between">
		                  <h5 class="text-purple mb-1">더 퀸즈 시크릿 후기</h5>
		                  <small>4 days ago</small>
		                </div>
		                <p class="mb-1">드레스에 꽃이 하나씩 만개하며 빛나는 모습이 장관으로 드레스가 살아 숨쉬는 듯한 느낌을 받았습니다.</p>
		              </a>
		              <a href="post.html" class="list-group-item list-group-action flex-column align-items-start">
		                <div class="d-flex w-100 justify-content-between">
		                  <h5 class="text-purple mb-1">모네 빛을 그리다 후기</h5>
		                  <small>5 days ago</small>
		                </div>
		                <p class="mb-1">모네가 사랑한 지베르니의 정원와 그곳에 있었던 수많은 꽃을 컨버전스 아트로 되살린 공간은 굉장히 이색적으로 느껴졌습니다. </p>
		              </a>
		              <a href="post.html" class="list-group-item list-group-action flex-column align-items-start">
		                <div class="d-flex w-100 justify-content-between">
		                  <h5 class="text-purple mb-1">테이트 명작전 후기</h5>
		                  <small>1 days ago</small>
		                </div>
		                <p class="mb-1">'키스'가 다시 한국에 올 일은 쉽지 않기 때문에 볼 사람은 이번 전시회에서 꼭 보시길 추천드립니다.</p>
		              </a>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
		  </section>

<%@ include file="../inc/footer.jsp" %>
</body>
</html>