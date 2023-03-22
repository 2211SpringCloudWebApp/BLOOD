<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>munjin</title>
  <meta property="og:type" content="website" />
  <meta property="og:site_name" content="heartbeat" />
  <meta property="og:title" content="Heart Beat" />
  <meta property="og:description" content="의사가 아니어도 생명을 구할 수 있는 방법" />
  <meta property="og:description" content="./images/bg.png">

  <link rel="icon" href="./images/favicon.png" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
  <link rel="stylesheet" href="../../../resources/css/munjin/success.css" />
</head>
<body>
<div class="container">
  <h1 class="letter">
    <span>축하합니다</span>
    <span>전자문진이</span>
    <span>모두 끝났습니다</span>
  </h1>
  <h2 class="letter">
    <span>메인 홈으로 돌아가시려면 </span>
    <span>홈으로 </span>
    <span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp를 눌러주세요</span>
  </h2>
</div>
<script src="./thanks.js"></script>
<div class="tohome">
  <button class="cta" type="button" onclick="location.href='/'">
    <span>홈으로</span>
    <svg viewBox="0 0 13 10" height="20px" width="15px">
      <path d="M1,5 L11,5"></path>
      <polyline points="8 1 12 5 8 9"></polyline>
    </svg>
  </button>
</div>
<script src="../../../resources/js/munjin/success.js"></script>
</body>
</html>
