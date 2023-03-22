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
    <link rel="stylesheet" href="../../../resources/css/munjin/form.css" />
</head>
<body>
<article>
    <form action="/munjin/form.bld" method="POST">
        <figure style="width: calc( 70%);">
            <div class="inner">
                <div class="ros">
                    <h2>1. 오늘 컨디션</h2>
                    <pre>
                    아래와 같은 경험을 해당 기간안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다.
                    아래 사항 중 선택해 주십시오.
                </pre>
                </div>
                <div class="ros_checkbox"><%--                <c:url value="/munjin/thanks.bld"/>--%>
                    <div class="ros_no">
                        <div>해당사항 없음</div>
                        <div>
                            <input type="checkbox" name="rosCondition" value="N1" checked/>
                        </div>
                    </div>
                    <div class="top_ros_yes">
                        <div class="ros_yes">
                            <div>있음</div>
                            <div class="ros_yes__itmes">
                                몸상태 안좋음<input type="checkbox" name="rosCondition" value="A">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="inner">
                <div class="ros">
                    <h2>2. 최근 3일 이내</h2>
                    <pre>
                    아래와 같은 경험을 해당 기간안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다.
                    아래 사항 중 선택해 주십시오.
                </pre>
                </div>
                <div class="ros_checkbox">
                    <div class="ros_no">
                        <div>해당사항 없음</div>
                        <div>
                            <input type="checkbox" name="rosDay" value="N2" checked/>
                        </div>
                    </div>
                    <div class="top_ros_yes">
                        <div class="ros_yes">
                            <div>있음</div>
                            <div class="ros_yes__itmes">
                                발열<input type="checkbox" name="rosDay" value="B">
                                인후통<input type="checkbox" name="rosDay" value="C">
                                설사<input type="checkbox" name="rosDay" value="D">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </figure>
        <!--2	 우 base -->
        <section style="width: calc( 30%);">
            <div>
                <h1>LEVEL 1</h1>
                <div>
                    <div class="dot-wave">
                        <div class="dot-wave__dot" ></div>
                        <div class="dot-wave__dot" ></div>
                        <div class="dot-wave__dot" ></div>
                        <div class="dot-wave__dot" ></div>
                    </div>
                </div>
            </div>
        </section>
        <!--3	 왼 1 -->
        <figure>
            <div class="inner">
                <div class="ros">
                    <h2>3. 최근 1주일 이내</h2>
                    <pre>
                    아래와 같은 경험을 해당 기간안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다.
                    아래 사항 중 선택해 주십시오.
                </pre>
                </div>
                <div class="ros_checkbox">
                    <div class="ros_no">
                        <div>해당사항 없음</div>
                        <div>
                            <input type="checkbox" name="rosWeek" value="N3" checked />
                        </div>
                    </div>
                    <div class="top_ros_yes">
                        <div class="ros_yes">
                            <div>있음</div>
                            <div class="ros_yes__itmes">
                                약물복용<input type="checkbox" name="rosWeek" value="E">
                                주사<input type="checkbox" name="rosWeek" value="F">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="inner">
                <div class="ros">
                    <h2>4. 최근 1개월 이내</h2>
                    <pre>
                    아래와 같은 경험을 해당 기간안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다.
                    아래 사항 중 선택해 주십시오.
                </pre>
                </div>
                <div class="ros_checkbox">
                    <div class="ros_no">
                        <div>해당사항 없음</div>
                        <div>
                            <input type="checkbox" name="rosMonth" value="N4" checked/>
                        </div>
                    </div>
                    <div class="top_ros_yes">

                        <div class="ros_yes">
                            <div>있음</div>
                            <div class="ros_yes__itmes">
                                반복적 고열, 춥고 떨림, 땀흘림<input type="checkbox" name="rosMonth" value="G">
                            </div>
                        </div>
                        <div class="ros_yes">
                            <div></div>
                            <div class="ros_yes__itmes">
                                시술<input type="checkbox" name="rosMonth" value="H">
                                질병진단<input type="checkbox" name="rosMonth" value="Y">
                                기타<input type="checkbox" name="rosMonth" value="J">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </figure>
        <!--4  우 1 -->
        <section>
            <div>
                <h1>LEVEL 2</h1>
                <div>
                    <div class="start_loader"></div>
                </div>
            </div>
        </section>
        <!-- 5 왼 2 -->
        <figure>
            <div class="inner">
                <div class="ros">
                    <h2>5. 최근 1년 이내</h2>
                    <pre>
                    아래와 같은 경험을 해당 기간안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다.
                    아래 사항 중 선택해 주십시오.
                </pre>
                </div>
                <div class="ros_checkbox">
                    <div class="ros_no">
                        <div>해당사항 없음</div>
                        <div>
                            <input type="checkbox" name="rosYear" value="N5" checked/>
                        </div>
                    </div>
                    <div class="top_ros_yes">
                        <div class="ros_yes">
                            <div>있음</div>
                            <div class="ros_yes__itmes">
                                입원<input type="checkbox" name="rosYear" value="K">
                                수혈<input type="checkbox" name="rosYear" value="L">
                                수술<input type="checkbox" name="rosYear" value="N">
                                경련<input type="checkbox" name="rosYear" value="M">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="inner">
                <div class="ros">
                    <h2>6. 기한에 관계없이</h2>
                    <pre>
                    아래와 같은 경험을 해당 기간안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다.
                    아래 사항 중 선택해 주십시오.
                </pre>
                </div>
                <div class="ros_checkbox">
                    <div class="ros_no">
                        <div>해당사항 없음</div>
                        <div>
                            <input type="checkbox" name="rosEE" value="M6" checked/>
                        </div>
                    </div>
                    <div class="top_ros_yes">
                        <div class="ros_yes">
                            <div>있음</div>
                            <div class="ros_yes__itmes">
                                암<input type="checkbox" name="rosEE" value="O">
                                심장질환<input type="checkbox" name="rosEE" value="P">
                                신장질환<input type="checkbox" name="rosEE" value="Q">
                                간질환<input type="checkbox" name="rosEE" value="R">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </figure>
        <!-- 6  우 2	 -->
        <section>
            <div>
                <h1>LEVEL 3</h1>
                <div>
                    <span class="second_loader"></span>
                </div>
            </div>
        </section>
        <!--7 	 왼3-->
        <figure>
            <div class="inner">
                <div class="ros">
                    <h2>7. 헌혈 금지 약물</h2>
                    <pre>
                    아래와 같은 경험을 해당 기간안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다.
                    아래 사항 중 선택해 주십시오.
                </pre>
                </div>
                <div class="ros_checkbox">
                    <div class="ros_no">
                        <div>해당사항 없음</div>
                        <div>
                            <input type="checkbox" name="rosDrug" value="N7" checked/>
                        </div>
                    </div>
                    <div class="top_ros_yes">

                        <div class="ros_yes">
                            <div>있음</div>
                            <div class="ros_yes__itmes">
                                건선치료제<input type="checkbox" name="rosDrug" value="S">
                                탈모증치료재<input type="checkbox" name="rosDrug" value="T">
                                여드름치료제<input type="checkbox" name="rosDrug" value="U">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="inner">
                <div class="ros">
                    <h2>8. 감염병</h2>
                    <pre>
                    아래와 같은 경험을 해당 기간안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다.
                    아래 사항 중 선택해 주십시오.
                </pre>
                </div>
                <div class="ros_checkbox">
                    <div class="ros_no">
                        <div>해당사항 없음</div>
                        <div>
                            <input type="checkbox" name="rosZrug" value="N8" checked/>
                        </div>
                    </div>
                    <div class="top_ros_yes">
                        <div class="ros_yes">
                            <div>있음</div>
                            <div class="ros_yes__itmes">
                                간염(B형,C형 등)
                                <input type="checkbox" name="rosZrug" value="V">
                                에이즈<input type="checkbox" name="rosZrug" value="W">
                                말라리아<input type="checkbox" name="rosZrug" value="X">
                                성병<input type="checkbox" name="rosZrug" value="Y">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </figure>
        <!--8 	우 3 -->
        <section>
            <div>
                <h1>LEVEL 4</h1>
                <div>
                    <div class="triple-spinner"></div>
                </div>
            </div>
        </section>
        <!--9 	왼 4-->
        <figure>
            <div class="inner">
                <div class="ros">
                    <h2>9. 말라리아</h2>
                    <pre>
                    아래와 같은 경험을 해당 기간안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다.
                    아래 사항 중 선택해 주십시오.
                </pre>
                </div>
                <div class="ros_checkbox">
                    <div class="ros_no">
                        <div>해당사항 없음</div>
                        <div>
                            <input type="checkbox" name="rosMosquito" value="true" checked/>
                        </div>
                    </div>
                    <div class="top_ros_yes">
                        <div class="ros_yes">
                            <div>있음</div>
                            <div class="ros_yes__itmes">
                                최근 1년이내 제한지역에서 1일이상 숙박<input type="checkbox" name="rosMosquito" value="Z1">
                            </div>
                        </div>
                        <div class="ros_yes">
                            <div></div>
                            <div class="ros_yes__itmes">
                                최근 2년이내 제한지역에서 6개월 이상 거주 <input type="checkbox" name="rosMosquito" value="Z2">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </figure>
        <!--10 	 우 4-->
        <section>
            <div>
                <h1>LEVEL 5</h1>
                <div>
                    <div class="half_loader">
                        <div class="waves"></div>
                    </div>
                </div>
            </div>
        </section>
        <!--11 	 우5 -->
        <figure>
            <div class="inner">
                <div class="ros">
                    <h2>10. 변종 크로이츠펠트-야콥병(vCJD)</h2>
                    <pre>
                    아래와 같은 경험을 해당 기간안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다.
                    아래 사항 중 선택해 주십시오.
                </pre>
                </div>
                <div class="ros_checkbox">
                    <div class="ros_no">
                        <div>해당사항 없음</div>
                        <div>
                            <input type="checkbox" name="rosVCJD" value="N10" checked/>
                        </div>
                    </div>
                    <div class="top_ros_yes">
                        <div class="ros_yes">
                            <div>있음</div>
                            <div class="ros_yes__itmes">
                                1980_1996 1개월 이상 영국<input type="checkbox" name="rosVCJD" value="ZZ1">
                            </div>
                        </div>
                        <div class="ros_yes">
                            <div></div>
                            <div class="ros_yes__itmes">
                                1997~현재 3개월 이상 영국<input type="checkbox" name="rosVCJD" value="ZZ2">
                            </div>
                        </div>
                        <div class="ros_yes">
                            <div></div>
                            <div class="ros_yes__itmes">
                                1980~현재 5년이상 유럽국가<input type="checkbox" name="rosVCJD" value="ZZ3">
                            </div>
                        </div>
                        <div class="ros_yes">
                            <div></div>
                            <div class="ros_yes__itmes">
                                1980년 이후 영국,프랑스에서 수혈 <input type="checkbox" name="rosVCJD" value="ZZ$">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </figure>
        <section>
            <div>
                <h1>LEVEL 6</h1>
                <div>
                    <span class="blood_loader"></span>
                </div>
            </div>
        </section>
        <!--13 	왼6 -->
        <figure>
            [ 위의 문진 선택사항들 출력 ]

            선택사항들을 확인해주세요
            우측의 완성된 구체를 클릭해주세요
        </figure>
        <!--14 	 우6-->
        <section>
            <div>
                <h1>LEVEL 7</h1>
                <div>
                    <button class="ball" type="submit">>>
                        <div class="star-1">
                            <svg xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 784.11 815.53"
                                 style="shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd; clip-rule:evenodd"
                                 version="1.1" xml:space="preserve" xmlns="http://www.w3.org/2000/svg">
                        <defs></defs>
                                <g id="Layer_x0020_1">
                                    <metadata id="CorelCorpID_0Corel-Layer"></metadata>
                                    <path d="M392.05 0c-20.9,210.08 -184.06,378.41 -392.05,407.78 207.96,29.37 371.12,197.68 392.05,407.74 20.93,-210.06 184.09,-378.37 392.05,-407.74 -207.98,-29.38 -371.16,-197.69 -392.06,-407.78z"  class="fil0"></path>
                                </g>
                        </svg>
                        </div>
                        <div class="star-2">
                            <svg xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 784.11 815.53" style="shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd; clip-rule:evenodd" version="1.1" xml:space="preserve" xmlns="http://www.w3.org/2000/svg">
                        <defs></defs>
                                <g id="Layer_x0020_1">
                                    <metadata id="CorelCorpID_0Corel-Layer"></metadata>
                                    <path d="M392.05 0c-20.9,210.08 -184.06,378.41 -392.05,407.78 207.96,29.37 371.12,197.68 392.05,407.74 20.93,-210.06 184.09,-378.37 392.05,-407.74 -207.98,-29.38 -371.16,-197.69 -392.06,-407.78z"  class="fil0"></path>
                                </g>
                        </svg>
                        </div>
                        <div class="star-3">
                            <svg xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 784.11 815.53" style="shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd; clip-rule:evenodd" version="1.1" xml:space="preserve" xmlns="http://www.w3.org/2000/svg">
                        <defs></defs>
                                <g id="Layer_x0020_1">
                                    <metadata id="CorelCorpID_0Corel-Layer"></metadata>
                                    <path d="M392.05 0c-20.9,210.08 -184.06,378.41 -392.05,407.78 207.96,29.37 371.12,197.68 392.05,407.74 20.93,-210.06 184.09,-378.37 392.05,-407.74 -207.98,-29.38 -371.16,-197.69 -392.06,-407.78z"  class="fil0"></path>
                                </g>
                    </svg>
                        </div>
                        <div class="star-4">
                            <svg xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 784.11 815.53" style="shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd; clip-rule:evenodd" version="1.1" xml:space="preserve" xmlns="http://www.w3.org/2000/svg">
                            <defs></defs>
                                <g id="Layer_x0020_1">
                                    <metadata id="CorelCorpID_0Corel-Layer"></metadata>
                                    <path d="M392.05 0c-20.9,210.08 -184.06,378.41 -392.05,407.78 207.96,29.37 371.12,197.68 392.05,407.74 20.93,-210.06 184.09,-378.37 392.05,-407.74 -207.98,-29.38 -371.16,-197.69 -392.06,-407.78z"  class="fil0"></path>
                                </g>
                        </svg>
                        </div>
                        <div class="star-5">
                            <svg xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 784.11 815.53" style="shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd; clip-rule:evenodd" version="1.1" xml:space="preserve" xmlns="http://www.w3.org/2000/svg">
                        <defs></defs>
                                <g id="Layer_x0020_1">
                                    <metadata id="CorelCorpID_0Corel-Layer"></metadata>
                                    <path d="M392.05 0c-20.9,210.08 -184.06,378.41 -392.05,407.78 207.96,29.37 371.12,197.68 392.05,407.74 20.93,-210.06 184.09,-378.37 392.05,-407.74 -207.98,-29.38 -371.16,-197.69 -392.06,-407.78z" class="fil0"></path>
                                </g>
                        </svg>
                        </div>
                        <div class="star-6">
                            <svg xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 784.11 815.53" style="shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd; clip-rule:evenodd" version="1.1" xml:space="preserve" xmlns="http://www.w3.org/2000/svg">
                        <defs></defs>
                                <g id="Layer_x0020_1">
                                    <metadata id="CorelCorpID_0Corel-Layer"></metadata>
                                    <path d="M392.05 0c-20.9,210.08 -184.06,378.41 -392.05,407.78 207.96,29.37 371.12,197.68 392.05,407.74 20.93,-210.06 184.09,-378.37 392.05,-407.74 -207.98,-29.38 -371.16,-197.69 -392.06,-407.78z" class="fil0"></path>
                                </g>
                        </svg>
                        </div>
                    </button>
                    <div class="shadow"></div>
                </div>
            </div>
        </section>
    </form>
</article>
<script src="../../../resources/js/munjin/form.js"></script>
</body>
</html>