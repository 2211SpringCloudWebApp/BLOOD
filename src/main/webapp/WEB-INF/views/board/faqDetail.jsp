<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세</title>
<link rel="icon" href="../../../resources/images/favicon.png" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="stylesheet" href="../../../resources/css/main.css" />
<script defer src="../../../resources/js/youtube.js"></script>
<script defer src="../../../resources/js/main.js"></script>

<link rel="stylesheet" href="../../../resources/css/table.css" />

</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
			<c:if test="${loginUser.memberType eq 0 && loginUser ne null}">
				<a href="javascript:void(0);" onclick="removeCheck(${faq.faqNo});">삭제하기</a>
			</c:if>

	<main style="margin-top: 150px;">
		<section>

			<h1>공지사항 상세</h1>

			제목 : ${faq.faqTitle } <br> 내용 : ${faq.faqContent } <br>

		</section>
	</main>
	


	<script>
			 function removeCheck(faqNo) {
				if(confirm("정말 삭제하시겠습니까?")) {
					location.href="/board/faqRemove.bld?faqNo="+faqNo;
				}
			}
		</script>
</body>
</html>
 --%>
 
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항</title>
<meta property="og:title" content="카카오톡 PC - 공지사항" />
<meta property="og:site_name" content="pc.kakao.com" />
<meta property="og:image"
	content="https://mk.kakaocdn.net/dn/talkserver/notice/og_talkpc_notice.png" />
<meta property="og:description" content="카카오톡 PC 공지 사항입니다." />
<link rel="stylesheet" media="all" href="../../../resources/css/faq.css" " />
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token"
	content="yBjzDo-zaLg9_xBTOcVuNVvebE0oFhsZtq6Do7PUUqB9KeoR-z7Q9Y2p_wEmqm3Ysu2Fw9sQYguh_4mhdW0h7w" />

<link rel="icon" href="../../../resources/images/favicon.png" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="stylesheet" href="../../../resources/css/main.css" />
<script defer src="../../../resources/js/youtube.js"></script>
<script defer src="../../../resources/js/main.js"></script>


</head>
<jsp:include page="../layout/header.jsp"></jsp:include>
<body style="margin-top: 120px;" cz-shortcut-listen="true">


<div id="kakaoContent" role="main">
    <div id="mArticle">
      <div class="cont_notice">
        <div class="wrap_tit">
          <h2 style="text-align:center;">FAQ</h2>
        </div>
            <div class="detail_head">
          <strong class="tit_detail">${faq.faqTitle }<span class="ico_notice ico_new">New</span></strong>
      <span class="screen_out">등록번호</span>
      <span class="txt_date">${faq.faqNo }</span>
    </div>
    <div class="detail_notice">
      <p><span style="font-family:Arial,Helvetica,sans-serif">${faq.faqContent }</span></p>



<h4>&nbsp;</h4>

<br><br><br><br><br>

<h4><span style="font-family:Arial,Helvetica,sans-serif"><strong>&nbsp; #신선한 가치, 건강한 습관</strong></span></h4>

<p><span style="font-family:Arial,Helvetica,sans-serif"><img alt="" src="https://www.bloodinfo.net/upload/bloodinfo/knrcbs/knrcbs/ba/img_290f6ac1-de9f-43ee-b870-c0788b146c681678244109623.jpg" style="max-width:100%"></span></p>

<p>&nbsp;</p>

<p dir="ltr"><span style="font-family:Arial,Helvetica,sans-serif">헌혈에 참여하신 ABO Freinds 분들께, &nbsp;</span></p>

<p dir="ltr"><span style="font-family:Arial,Helvetica,sans-serif">Fredit 홈페이지에서 사용하실 수 있는 '윌 5개' 무료 교환 쿠폰을 드립니다.</span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h4><span style="font-family:Arial,Helvetica,sans-serif"><strong>&nbsp; #튀르키예ㆍ시리아 지진 피해</strong></span></h4>

<p><span style="font-family:Arial,Helvetica,sans-serif"><img alt="" src="https://www.bloodinfo.net/upload/bloodinfo/knrcbs/knrcbs/ba/img_09f96062-729b-4b11-9ac9-170c218e203a1675921264938.jpg" style="max-width:100%"></span></p>

<p>&nbsp;</p>

<p dir="ltr"><span style="font-family:Arial,Helvetica,sans-serif">튀르키예, 시리아 지진피해 돕기</span></p>

<p dir="ltr"><span style="font-family:Arial,Helvetica,sans-serif">"절망에서 희망으로"</span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<br>

<p dir="ltr">&nbsp;</p>

<p dir="ltr">&nbsp;</p>

<p><span style="font-family:Arial,Helvetica,sans-serif">불편하신 점이 있으시다면,&nbsp;</span></p>

<p><span style="font-family:Arial,Helvetica,sans-serif">겪고계신 불편함과 상태를&nbsp;고객센터를 통해 알려주시면</span></p>

<p><span style="font-family:Arial,Helvetica,sans-serif">더 나은 서비스 제공에&nbsp;도움이 됩니다 :)</span></p>

<p dir="ltr">&nbsp;</p>


<p dir="ltr"><span style="font-family:Arial,Helvetica,sans-serif">@헌혈의집</span></p>
    </div>
    <a href="/board/faq.bld" id="linkList" data-locale="ko" class="link_list">목록</a>

      </div>
    </div>
  </div>



</body>
</html>