<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<c:if test="${loginUser ne null }">
		<ul class="menu">
		  <li>
		    <a href="/member/logout.bld">logout</a>
		  </li>
		  <li>
		    <a href="/member/mypage.bld">My Page</a>
		  </li>
		</ul>
		</c:if>
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
   	</div>
	<ul class="main-menu">
	  <li class="item">
	    <!-- <div class="item__name"><a href="/book/identityView.bld">헌혈예약</a></div> -->
	    <div class="item__name"><a href="/book/reserveView.bld">헌혈예약</a></div>
	    <div class="item__contents">
	      <div class="contents__menu">
	        <ul class="inner">
	          <li>
	            <ul>
	              <li><a href="/book/reserveView.bld">헌혈예약</a></li>
	              <li><a href="/book/reservelistView.bld">헌혈내역조회</a></li>
	            </ul>
	          </li>
	        </ul>
	      </div>
	    </div>
	  </li>
	  <li class="item">
	    <div class="item__name"><a href="/munjin/intro.bld">전자문진</a></div>
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
	    <div class="item__name"><a href="/board/allChoice.bld">커뮤니티</a></div>
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
	</ul>
  </div>
</header>