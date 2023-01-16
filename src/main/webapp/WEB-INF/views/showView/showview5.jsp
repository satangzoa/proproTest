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
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.compat.min.css" integrity="sha512-b42SanD3pNHoihKwgABd18JUZ2g9j423/frxIP5/gtYgfBz/0nDHGdY/3hi+3JwhSckM3JLklQ/T6tJmV7mZEw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/css/lightbox.min.css" integrity="sha512-ZKX+BvQihRJPA8CROKBhDNvoc2aDMOdAlcm7TUQY+35XYtrd3yh95QOOhsPDQY9QnKE0Wqag9y38OIgEvb88cA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/js/lightbox-plus-jquery.min.js" integrity="sha512-6gudNVbNM/cVsLUMOb8g2b/RBqtQJ3aDfRFgU+5paeaCTtbYY/Dg00MzZq7r6RvJGI2KKtPBhjkHGTL/iOe21A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js" integrity="sha512-Eak/29OTpb36LLo2r47IpVzPBLXnAMPAVypbSZiZ4Qkf8p/7S/XRG5xp7OKWPPYfJT6metI+IORkR5G8F900+g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <link rel="stylesheet"   href="resources/css/main.css">
<link rel="stylesheet"   href="resources/css/_front.css">
<script src="/resources/js/main.js"></script>


<style >


.section-info {
  background-image: url("./../images/tile.jpg");
  background-repeat: repeat;
}
 .gallery-item {
  position: relative;
  overflow: hidden;
  transition: 0.5s;
  
}

 .gallery-item img {

  display: block;
  
}

.gallery-item:hover .img-overlay {
  top: 0;
}

.gallery-item .img-overlay{
  position: absolute;
  top: 100%;
  bottom: 0;
  right: 13px;
  left: 13px;
  padding: 2rem;
  background-color: rgba(234, 128, 252, 0.75);
  color: #fff;
  transition: top 0.25s ease-in-out;
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


		<!-- Gallery section -->
		  <section id="gallery" class="bg-white">
		  
		    <div class="section-content">
		      <div class="container">
		        <div class="row">
		          <div class="col-8 offset-2 text-center mb-5 wow fadeInUp">
		            <h3 class="text-black">Our gallery</h3>
		          <h4 class="lead text-black">전시회를 소개합니다</h4>
		          </div>
		          
		          <div class="gallery-item col-lg-4 col-md-6 mb-5 wow fadeIn" data-wow-delay="0.2s">
		            <img src="resources/images/y1.png"   width="500"  height="700" class="img-fluid">
		            <div class="img-overlay d-flex flex-column text-center">
		              <h4 class="mb-auto">영감 공감</h4>
		              <a href="page.html" class="lead text-danger">Read more...</a>
		            </div>
		          </div>
		          
		          <div class="gallery-item col-lg-4 col-md-6 mb-5 wow fadeIn" data-wow-delay="0.4s">
		            <img src="resources/images/b1.png" width="500"  height="700" class="img-fluid">
		            <div class="img-overlay d-flex flex-column text-center">
		              <h4 class="mb-auto">꽃이피다</h4>
		              <a href="page.html" class="lead text-danger">Read more...</a>
		            </div>
		          </div>
		          
		          <div class="gallery-item col-lg-4 col-md-6 mb-5 wow fadeIn" data-wow-delay="0.6s">
		            <img  src="resources/images/s4.png" width="500"  height="700"  class="img-fluid">
		            <div class="img-overlay d-flex flex-column text-center">
		              <h4 class="mb-auto">펜타그램</h4>
		              <a href="page.html" class="lead text-danger">Read more...</a>
		            </div>
		          </div>
		          
		          <div class="gallery-item col-lg-4 col-md-6 mb-5 wow fadeIn" data-wow-delay="0.8s">
		            <img src="resources/images/s5.png" width="500"  height="700" class="img-fluid">
		            <div class="img-overlay d-flex flex-column text-center">
		              <h4 class="mb-auto">감성으로부터 자연</h4>
		              <a href="page.html" class="lead text-danger">Read more...</a>
		            </div>
		          </div>
		          
		          <div class="gallery-item col-lg-4 col-md-6 mb-5 wow fadeIn" data-wow-delay="1.0s">
		            <img src="resources/images/s7.png" width="500"  height="700"  class="img-fluid">
		            <div class="img-overlay d-flex flex-column text-center">
		              <h4 class="mb-auto">푸우는 내친구</h4>
		              <a href="page.html" class="lead text-danger">Read more...</a>
		            </div>
		          </div>
		          
		          <div class="gallery-item col-lg-4 col-md-6 mb-5 wow fadeIn" data-wow-delay="1.2s">
		            <img  src="resources/images/s6.png" width="500"  height="700"  class="img-fluid">
		            <div class="img-overlay d-flex flex-column text-center">
		              <h4 class="mb-auto">앙리마티스</h4>
		              <a href="page.html" class="lead text-danger">Read more...</a>
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