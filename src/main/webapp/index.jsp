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
          <li>
            <a href="/signin">Sign In</a>
          </li>
          <li>
            <a href="javascript:void(0)">My Page</a>
          </li>
        </ul>
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
          <div class="item__name">헌혈예약</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>헌혈예약</h4>
                  <ul>
                    <li>헌혈예약</li>
                    <li>헌혈내역조회</li>
                  </ul>
                </li>
                <li>
                  <h4></h4>
                  <ul>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <h4></h4>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name">전자문진</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>전자문진</h4>
                  <ul>
                    <li>전자문진</li>
                  </ul>
                </li>
                <li>
                  <h4></h4>
                  <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <h4></h4>
                  <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <h4></h4>
                  <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name">커뮤니티</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>커뮤니케이션</h4>
                  <ul>
                    <li>자유게시판</li>
                    <li>FAQ</li>
                  </ul>
                </li>
                <li>
                  <h4></h4>
                  <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <h4></h4>
                  <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <h4></h4>
                  <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>


    </div>

  </header>



  <!--     MAIN                                                       -->
  <main>

    <section class="intro_photo">
      <img src="./resources/images/threepeopleback.png" alt="">



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
            <div class="BLDROP4" style="height: 87.5%;"><span class="span-bl">AB형</span> <img
                src="https://www.blood.ca/modules/custom/cbs_blood_inventory_block/assets/icons/icon-inventory-drop.svg">
            </div>
          </div>
        </div>
      </section>


      <!--     CARD                                               -->
      <section class="cards">
        <div class="inner">
          <div style="padding-top: 150px;">
            <h2 style="font-size: x-large; text-align: center; font-weight: 900;">
              Make All The Difference
            </h2><br>
            <p style="font-size: medium; text-align: center; font-weight: 900;">
              The greatest human connection is made when we give to each other. Whether it’s time, knowledge, expertise,
              or a lifesaving donation. These connections are what make us South-Korea's Lifeline.
            </p>
            <p style="font-size: medium; text-align: center; font-weight: 900;">
              Join us. You won’t just make a difference, you’ll make all the difference.
            </p>

          </div>
          <div class="cards_container">

            <section class="cards_layer1">

              <div class="single_card">
                <div class="card_top">
                  <img src="./resources/images/card1.png" alt="firstCard">
                </div>
                <div class="card_bottom">
                  <h5>Lancer</h5>
                  <p class="card_text">
                    "See if you are eligible to donate blood today, or find answers to frequestly asked questions."
                  </p>
                  <a class="card_link" href="#">
                    <span>Check your eligibility</span>
                  </a>
                </div>
              </div>

              <div class="single_card">
                <div class="card_top">
                  <img src="./resources/images/card2.png" alt="firstCard">
                </div>
                <div class="card_bottom">
                  <h5>Making your donation</h5>
                  <p class="card_text">
                    Discover how you can give blood, plasma or platelets, and book your next donation.
                  </p>
                  <a class="card_link" href="#">
                    <span>Know how to donate</span>
                  </a>
                </div>
              </div>

              <div class="single_card">
                <div class="card_top">
                  <img src="./resources/images/card3.png" alt="firstCard">
                </div>
                <div class="card_bottom">
                  <h5>Find a blood donor centre</h5>
                  <p class="card_text">
                    There are donor centres all across the country. Find one that's closest to you.
                  </p>
                  <a class="card_link" href="#">
                    <span>Find a donor centre</span>
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
                  <h5>Learn about blood</h5>
                  <p class="card_text">
                    Know the fine details about blood, like what’s in it, who needs it, and where it goes after you give
                    it.
                  </p>
                  <a class="card_link" href="#">
                    <span>See the details</span>
                  </a>
                </section>
              </div>

              <div class="single_card">
                <div class="card_top">
                  <img src="./resources/images/card5.png" alt="firstCard">
                </div>
                <div class="card_bottom">
                  <h5>Blood testing and safety</h5>
                  <p class="card_text">
                    Australia has one of the safest blood supplies in the world. Find out what we test, and how.
                  </p>
                  <a class="card_link" href="#">
                    <span>Learn about safety</span>
                  </a>
                </div>
              </div>

              <div class="single_card">
                <div class="card_top">
                  <img src="./resources/images/card6.png" alt="firstCard">
                </div>
                <div class="card_bottom">
                  <h5>Donate as a group</h5>
                  <p class="card_text">
                    Be part of our group donation program, Lifeblood Teams. It’s about friendship, community and making
                    a
                    bigger difference together.
                  </p>
                  <a class="card_link" href="#">
                    <span>Join Lifeblood Teams</span>
                  </a>
                </div>
              </div>

            </section>
          </div>



        </div>
      </section>
    </section>
  </main>



  <!--     FOOTER                                               -->
  <section class="bumper">
    <img src="./resources/images/footer.png" class="fimage" alt="dd">
    <div class="inner">

    </div>
  </section>

  <footer>

    <div class="inner">

      <ul class="menu">
        <li><a href="javascript:void(0)" class="green">
            <h1>이용안내</h1>
          </a></li>
        <li><a
            href="https://www.redcross.or.kr/redcross_customer/redcross_customer_quidance_policyofprivateinfo.do?_ga=2.16263862.1060173293.1678072756-776120876.1677479931">개인정보처리방침</a>
        </li>
        <li><a href="https://www.bloodinfo.net/knrcbs/cm/cntnts/cntntsView.do?mi=1180&cntntsId=1039">추천 사이트</a></li>
        <li><a href="https://www.bloodinfo.net/knrcbs/sm/sitemap/sitemapPage.do?mi=1362">사이트맵</a></li>
      </ul>
      <div class="info">
        <span>대한 적십자사 혈액관리 본부</span>
        <span>[26465] 강원도 원주시 혁신로 50 대한적십자사 혈액관리본부</span><br>
        <span>CRM센터 - 1600-3705유료/발신자 부담(월~금 09:00~20:00/토, 일, 공휴일 10:00~18:00)</span>
      </div>

      <p class="copyright">
        &copy; <span class="this-year"></span> COPYRIGHT(C) KOREAN Redcross Blood Services. ALL RIGHT RESERVED
      </p>

    </div>

  </footer>


</body>

</html>