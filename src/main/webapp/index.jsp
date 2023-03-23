<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <title>Heart Beat</title>

  <meta property="og:type" content="website" />
  <meta property="og:site_name" content="heartbeat" />
  <meta property="og:title" content="Heart Beat" />
  <meta property="og:description" content="의사가 아니어도 생명을 구할 수 있는 방법" />
  <meta property="og:description" content="./resources/images/bg.png">

  <link rel="icon" href="./resources/images/favicon.png" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
  <link rel="stylesheet" href="./resources/css/main.css" />
  <script defer src="./resources/js/youtube.js"></script>
  <script defer src="./resources/js/main.js"></script>

</head>

<body>
<jsp:include page="./WEB-INF/views/layout/header.jsp"></jsp:include>


<!--     MAIN                                                       -->
<main>

  <section class="intro_photo">
    <img src="../resources/images/mainfirst.png" alt="mainfirst">



  </section>

  <!--     ICONMENU                                                       -->
  <section class="iconmenu">
    <div class="bg-left"></div>
    <div class="bg-right"></div>
    <div class="inner">
      <div class="iconmenu__bg">
        <button class="material-symbols-outlined">calendar_month</button>
        <button class="material-symbols-outlined">format_ink_highlighter</button>
        <button class="material-symbols-outlined">diagnosis</button>
        <button class="material-symbols-outlined">event_note</button>
        <button class="material-symbols-outlined">empty_dashboard</button>
        <button class="material-symbols-outlined">print</button>
      </div>
    </div>
  </section>


  <!--     YOUTUBE VIDEO                                               -->

  <section class="youtube">
    <div class="youtube__area">
      <div id="player"></div>
    </div>
    <div class="youtube__cover"></div>
    <div class="inner">
    </div>
  </section>

  <!--     GET DETAIL                                               -->
  <section class="getdetail">

    <!--blood droop-->

    <section class="blood_drop">
      <div class="inner">
        <div style="padding-top: 40px;">


          <h2 style="font-size: x-large; text-align: center; font-weight: 900;">National blood inventory</h2><br>
          <p style="font-size: medium; text-align: center; font-weight: 900;">We manage the national supply of blood
            products for all the provinces and territories (excluding Quebec). Many variables can impact our inventory
            such as weather, holidays or tragic events. Below is an overview of our inventory levels across all blood
            types. </p>

        </div>
        <div class="BLDROP">
          <div class="BLDROP1" style="height: 87.5%;"><span class="span-bl">A형</span><img
                  src="https://www.blood.ca/modules/custom/cbs_blood_inventory_block/assets/icons/icon-inventory-drop-nomask.svg">
          </div>
          <div class="BLDROP2" style="height: 87.5%;"><span class="span-bl">B형</span> <img
                  src="https://www.blood.ca/modules/custom/cbs_blood_inventory_block/assets/icons/icon-inventory-drop.svg">
          </div>
          <div class="BLDROP3" style="height: 87.5%;"><span class="span-bl">O형</span><img
                  src="https://www.blood.ca/modules/custom/cbs_blood_inventory_block/assets/icons/icon-inventory-drop-nomask.svg">
          </div>
          <div class="BLDROP">
            <div class="BLDROP1" style="height: 87.5%;"><span class="span-bl">A형</span><img
                src="https://www.blood.ca/modules/custom/cbs_blood_inventory_block/assets/icons/icon-inventory-drop-nomask.svg">
            </div>
            <div class="BLDROP2" style="height: 87.5%;"><span class="span-bl">B형</span> <img
                src="https://www.blood.ca/modules/custom/cbs_blood_inventory_block/assets/icons/icon-inventory-drop.svg">
            </div>
            <div class="BLDROP3" style="height: 87.5%;"><span class="span-bl">O형</span><img
                src="https://www.blood.ca/modules/custom/cbs_blood_inventory_block/assets/icons/icon-inventory-drop-nomask.svg">
            </div>
            <div class="BLDROP4" style="height: 87.5%;"><span class="span-bl">AB형</span> <img
                src="https://www.blood.ca/modules/custom/cbs_blood_inventory_block/assets/icons/icon-inventory-drop.svg">
            </div>
          </div>
        </div>
      </div>
    </section>

    <!--     CARD                                               -->
    <section class="cards">
      <div class="inner">
        <div style="padding-top: 150px;">
          <h2 style="font-size: x-large; text-align: center; font-weight: 900;">
          헌혈의 집에서 알립니다
          </h2><br>
          <p style="font-size: medium; text-align: center; font-weight: 900; margin: 0 100px;">
            대한적십자사 지사에 소속되어 있던 혈액원은 2002년 혈액사업본부 체계가 출범하게 됨에 따라 본부소속기관으로 개편되어 독립적인 혈액사업조직체계를 이루게 되었습니다. 현재 전국 15개 주요 지역에 설치된 대한적십자사의 혈액원은 헌혈자 모집 및 관리, 채혈, 제제, 보존, 공급 및 품질관리 등의 업무를 수행하고 있습니다. 각 혈액원에서는 관할 지역 내 헌혈의집과 헌혈버스, 혈액공급소를 운영하고 있습니다.
          </p>
          <p style="font-size: medium; text-align: center; font-weight: 900;">
            혈액은 생명입니다
          </p>
        </div>
        <div class="cards_container">
          <section class="cards_layer1">
            <div class="single_card">
              <div class="card_top">
                <img src="./resources/images/card1.png" alt="firstCard">
              </div>
              <div class="card_bottom">
                <h5>단체 헌혈</h5>
                <p class="card_text">
                  단체 헌혈의 소개와 신청 방법을 알려드립니다.
                </p>
                <a class="card_link" href="#">
                  <span> 단체 헌혈 방법 확인하기</span>
                </a>
              </div>
            </div>

            <div class="single_card">
              <div class="card_top">
                <img src="./resources/images/card2.png" alt="firstCard">
              </div>
              <div class="card_bottom">
                <h5> 헌혈의 필요성</h5>
                <p class="card_text">
                  헌혈이 필요한 이유와 헌혈의 영향을 알려드립니다.                </p>
                <a class="card_link" href="#">
                  <span>헌혈의 필요성 확인하기</span>
                </a>
              </div>
            </div>

            <div class="single_card">
              <div class="card_top">
                <img src="./resources/images/card3.png" alt="firstCard">
              </div>
              <div class="card_bottom">
                <h5>헌혈에 대한 오해와 진실</h5>
                <p class="card_text">
                  헌혈에 대한 오해와 진실 확인하기                </p>
                <a class="card_link" href="#">
                  <span>헌혈과정 헌혈과정을 자세히 알려드립니다</span>
                </a>
              </div>
            </div>
          </section>
          <section class="cards_layer2">
            <div class="single_card">
              <section class="card_top">
                <img src="./resources/images/card4.png" alt="firstCard">
              </section>
              <section class="card_bottom">
                <h5>헌혈과정 알아보기</h5>
                <p class="card_text">
                  뉴스 보도자료 언론보도 뉴스레터를 확인할 수 있습니다.
                </p>
                <a class="card_link" href="#">
                  <span>관련 뉴스 확인하기</span>
                </a>
              </section>
            </div>

            <div class="single_card">
              <div class="card_top">
                <img src="./resources/images/card5.png" alt="firstCard">
              </div>
              <div class="card_bottom">
                <h5> 헌혈관리본부 소개 </h5>
                <p class="card_text">
                 안전보건 경영방침을 알려드립니다. </p>
                <a class="card_link" href="#">
                  <span> 헌혈관리본부 소개</span>
                </a>
              </div>
            </div>
            <div class="single_card">
              <div class="card_top">
                <img src="./resources/images/card6.png" alt="firstCard">
              </div>
              <div class="card_bottom">
                <h5>전혈 혈청과 혈액비교</h5>
                <p class="card_text">
                  전혈혈청은 노란색입니다
                </p>
                <a class="card_link" href="#">
                  <span>노란피도 하얀피도 혈액으로 분류됩니다</span>
                </a>
              </div>
            </div>

            </section>
          </div>
        </div>
      </div>
    </section>
  </section>
</main>
<jsp:include page="./WEB-INF/views/layout/main_footer.jsp"></jsp:include>
</body>
</html>