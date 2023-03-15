<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="./resources/css/main.css" />
	</head>
	<body>
		<!--     HEADER                                -->
  <header>
    <div class="inner">
      <a href="/" class="logo">
        <div class="heartbeat">
          <span>HeartBeat</span>
          <span>HeartBeat</span>
          <div class="blur"></div>
        </div>
      </a>
      <div class="sub-menu">
        <ul class="menu">
          <c:if test="${loginUser ne null }">
          <li>
            <a href="/member/logout.bld">logout</a>
          </li>
          <li>
            <a href="/member/mypage.bld">My Page</a>
          </li>
            </c:if>
        </ul>
        	<c:if test="${loginUser eq null }">
        <ul class="menu">
          <li>
            <a href="/member/login.bld">login</a>
          </li>
          <li>
            <a href="/member/register.bld">join</a>
          </li>
        </ul>
        	</c:if>
        <div class="search">
          <input type="text" />
          <span class="material-icons">
            <div class="loader">
              <div></div>
            </div>
          </span>


        </div>
      </div>

      <ul class="main-menu">
        <li class="item">
          <div class="item__name"><a href="#">헌혈예약</a></div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <ul>
                    <li>헌혈예약</li>
                    <li>헌혈내역조회</li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name"><a href="#">전자문진</a></div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <ul>
                    <li>전자문진</li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name"><a href="#">커뮤니티</a></div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <ul>
                    <li>자유게시판</li>
                    <li>FAQ</li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>


    </div>

  </header>
	</body>
</html>