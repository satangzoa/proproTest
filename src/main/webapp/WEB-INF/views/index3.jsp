<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>hover</title>

<head>
	<body>

<style>

body {
    position: relative;
    height: 100vh;
    overflow: hidden;
}

.image {
    position: absolute;
    width: 100%;
    height: 100%;
    object-fit: cover;
    z-index: -1;
    transform: scale(1.8);
    animation: scaleImage 5s ease-out forwards;
}

.text {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
    font-family: 'Roboto', Arial, sans-serif;
    font-size: calc(10px + 8vw);
    font-weight: 700;
    line-height: 1.2;
    letter-spacing: 0.05em;
    white-space: nowrap;
    text-transform: uppercase;
    color: #fff;
    background-color: #000;
    mix-blend-mode: multiply;
    opacity: 0;
    animation: fadeInText 3s 2s ease-out forwards;
}

@keyframes scaleImage {
    100% {
        transform: scale(1);
    }
}

@keyframes fadeInText {
    100% {
        opacity: 1;
    }
}
</style>

 
</head>
<body>


<img src="https://source.unsplash.com/VW8MUbHyxCU/1920x1080" alt="" class="image">

<h1 class="text">돈 내놩</h1>



</body>
</html>