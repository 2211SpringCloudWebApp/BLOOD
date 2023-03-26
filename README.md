
![HEARTBEATlogo](https://user-images.githubusercontent.com/119032817/227755306-8ff53025-7aa1-4225-9d98-1fe0f01ee253.PNG)
# ❤️ HAERTBEAT : 마음과 마음을 연결하는 헌혈사이트  
![mainpage](https://user-images.githubusercontent.com/119032817/227756646-9c3c88ef-cebf-44a3-8789-d813be36003f.jpg)
</br></br>

## [목차]
* 프로젝트 소개
* 개발 기간
* 팀원 소개 및 역할분담
* 주요 기능
  * 회원 관리
  * 게시판 관리
  * 전자문진 서비스
  * 예약 서비스
* 프로젝트 살펴보기
  * 구현기능
  * 시연영상
* 개발 스택
  * 주요언어
  * 개발환경
</br>

## 💻 프로젝트 소개
✨ 헌혈을 위한 준비를 미리 할 수 있도록 정보와 서비스를 제공하는 헌혈 사이트 </br>
수혈이 필요한 환자의 생명을 구하는 유일한 수단에 도움을 주고자하는 사람들의 마음을 연결해주며 </br>
의사가 아니어도 생명을 구할 수 있는 헌혈을 통해 세상에 부는 선한 영향력을 응원한다.  
</br>

## 📅 개발 기간
<pre>
  2023.02.27 ~ 2023.03.24
</pre>
</br>

## 🧑‍🤝‍🧑 팀원 소개 및 역할분담
🅱️ 윤지연👑 | 🅰️ 구기효 | 🅾️ 김승현 | 🅰️ 박은서
-------------|-----------|-----------|-----------|
**[전자문진]**|**[회원관리]**|**[게시판관리]**|**[헌혈예약]**
헌혈 자격조건 안내 및 확인|마이페이지|FAQ|헌혈자인증
동의서 확인|회원가입|게시판|헌혈예약
상세사항 확인|로그인|댓글 기능|헌혈의집 선택
.|정보수정|페이징처리|헌혈예약 내역|
.|회원탈퇴
</br>

## ✨ 주요기능
### 1. 회원 관리
기능명 | 상세
-------|-----
마이페이지|마이페이지에서 정보수정, 회원탈퇴를 진행할 수 있다.
회원가입|기본적인 개인정보(아이디, 비밀번호, 이름, 주민번호, 혈액형, 이메일, 주소, 전화번호)를 입력하여 회원가입을 진행한다. 모든 정보는 필수 입력사항으로 null값을 받을 수 없고, 각 입력정보에 대한 유효성 검사 후 회원가입을 완료할 수 있다.
로그인|아이디와 비밀번호를 회원가입 시 입력한 정보와 일치하게 입력할 경우 로그인이 가능하다.
정보수정|'아이디, 이름, 주민번호, 혈액형'은 변경이 불가하며, 이외의 다른 데이터들은 유효성 검사 후 변경이 가능하다.
회원탈퇴|마이페이지 하단에 회원탈퇴 버튼을 생성하고, 회원탈퇴 버튼 클릭 후 비밀번호를 일치하게 입력할 경우 회원탈퇴가 가능하다.
</br>

### 2. 게시판 관리
기능명 | 상세
-------|-----
FAQ(자주묻는질문)|FAQ(자주묻는질문)페이지는 관리자계정(admin)으로 로그인 시에만 게시글 작성이 가능하다. 일반회원계정(user)는 검색 및 조회만 가능하다.
게시판|일반회원계정(user)로 로그인 시 게시판 페이지에서 게시글 작성 및 검색이 가능하다. 본인이 작성한 게시글은 이후 수정 및 삭제가 가능하다.
댓글 기능|댓글은 하나의 게시글에 여러 명의 회원(user)이 작성할 수 있다.
페이징처리|FAQ와 게시판페이지는 한 페이지당 글이 10개씩 보이도록 구현하였다.
</br>

### 3. 전자문진 서비스
기능명 | 상세
-------|-----
회원정보입력|이름과 주민등록번호를 입력받아 입력한 데이터를 저장하여 전자문진을 시행한다. 이름과 주민등록번호는 정규표현식을 사용하여 유효한 데이터를 입력받을 수 있도록 한다.
헌혈 자격조건 안내 및 확인|수혈자에게 영향을 미칠 수 있는 공혈자의 예방접종 및 복용 약물을 안내하고, 국외 말라리아 관련 헌혈 제한지역 및 감염병 종류, 헌혈 후 생길 수 있는 증상을 안내한 후 혈액관리법과 관련한 사항에 관해 확인 및 동의가 필요하다.
상세문진|오늘 컨디션, 최근 3일 발열, 인후통, 설사 유무, 최근 1개월 이내 외국여행 또는 의료기관 진단 치료사항 및 기타 사항, 최근 6개월 이내 임신/분만/유산 또는 피부시술, 최근 1년 이내 입원 수혈/수술/경련/마약/예방접종/교도소 등 기간에 관계없이 암 또는 질환/정신질환/중독/장기이식과 헌혈 금지약물/감염병/말라리아 등을 체크한다.
전자문진 종료 안내| 문진을 완료 후 행동까지 이를 수 있도록 독려하는 UI를 제공한다.
</br>

### 4. 헌혈예약 서비스
기능명 | 상세
-------|-----
헌혈자인증|이름과 주민등록번호를 입력받아 인증된 회원만이 헌혈예약이 가능하다. 이름과 주민등록번호는 회원가입 시 입력한 회원정보와 일치해야만 헌혈예약 페이지로 이동이 가능하다.
헌혈예약|헌혈예약 페이지는 로그인이 완료된 회원(user)만 진행이 가능하다. '예약자/전화번호/헌혈의집 선택/예약날짜/예약시간'을 입력한 후 예약하기 버튼 클릭 시 예약이 가능하다. 이름은 한글만 작성가능하고, 전화번호는 11자리 입력이 가능하도록 유효성 검사를 진행한다. 예약하기 버튼 클릭 시 헌혈예약 내역 페이지로 이동하며, 해당 회원(user)의 헌혈예약 내역을 확인할 수 있다.
헌혈의집 검색|헌혈의집 선택은 새로운 창에서 진행한다. '시도'와 '시군구' 등 지역을 선택하여 검색하거나 직접 헌혈원(헌혈의집) 키워드를 입력하여 검색이 가능하다. 검색결과로 '헌혈의집/주소/전화번호'를 확인할 수 있다. 검색결과 우측의 [선택] 버튼을 클릭하여 헌혈예약 페이지의 '헌혈의집 항목'에 앞서 선택한 정보를 나타내도록 한다.
헌혈예약내역|헌혈예약 내역조회 페이지는 로그인이 완료된 회원(user)만 진행이 가능하다. 로그인한 회원의 정보와 일치하는 예약 내역을 조회할 수 있다.
</br>  


## 👀 프로젝트 살펴보기
### 📌 구현기능
### 메인페이지
-----
![HEARTBEATmain](https://user-images.githubusercontent.com/119032817/227732881-f5af3de3-4dd5-4168-bdde-10b56ba08d84.jpg)
### 회원가입
-----
![joinPage](https://user-images.githubusercontent.com/119032817/227756705-4f93e2c9-7e23-48ea-ab04-bd7ed58a440c.PNG)
### 로그인
-----
![loginPage](https://user-images.githubusercontent.com/119032817/227756687-3e18b5ce-8eb8-49fe-9bc7-bef60d197b02.PNG)
### 아이디/비밀번호 찾기
-----
![아이디찾기](https://user-images.githubusercontent.com/119032817/227756727-b9734ea7-7b69-4899-ab52-f9d4a89a91c1.PNG)
![비밀번호찾기](https://user-images.githubusercontent.com/119032817/227756735-9f1c6007-50cf-47b7-8087-d581cb807940.PNG)
### 회원정보 수정
-----
![mypage](https://user-images.githubusercontent.com/119032817/227756748-7d37aa0d-aac0-42f4-8538-b1c17db24e4c.PNG)
### 회원탈퇴
-----
![outpage](https://user-images.githubusercontent.com/119032817/227756760-54aa81af-6eb1-495e-a202-de168e58d2f1.PNG)

### 자유게시판
-----
![자유게시판](https://user-images.githubusercontent.com/119032817/227756789-8d25e0ca-2d99-4316-80a1-0fd21dfdfd15.PNG)
### 자유게시판 상세페이지 및 검색
-----
![자유게시판detail](https://user-images.githubusercontent.com/119032817/227756809-a8968ba8-bfec-4a52-b0be-9b9c74fe61d1.PNG)
![자유게시판search](https://user-images.githubusercontent.com/119032817/227756820-b56b6bed-6e38-4e38-b9fa-de756454320c.PNG)
### FAQ (자주묻는질문)
-----
![FAQ](https://user-images.githubusercontent.com/119032817/227756835-d1368db5-6def-42a9-935d-0844eb65a50b.PNG)
### FAQ 상세페이지
-----
![FAQdetail](https://user-images.githubusercontent.com/119032817/227756845-a28bf707-94d8-4e59-bd4e-2346ead05fd1.png)

### [관리자] 자유게시판 상세페이지
-----
![(관리자)자유게시판detail](https://user-images.githubusercontent.com/119032817/227756856-20e46f37-b704-4d95-9752-b0c934f715ce.PNG)
### [관리자] FAQ 상세페이지
-----
![(관리자)FAQdetail](https://user-images.githubusercontent.com/119032817/227756863-3253240a-54c0-4058-9be9-73903cd3b3ff.png)

### 전자문진
-----
![munjin](https://user-images.githubusercontent.com/119032817/227757147-d5c076fa-6c0e-4716-8042-3c05e9dbaa54.PNG)

### 헌혈자인증
-----
![bookCertify](https://user-images.githubusercontent.com/119032817/227757156-8e224f58-af74-4164-ad0a-5330d95932e0.PNG)
### 헌혈예약
-----
![booking](https://user-images.githubusercontent.com/119032817/227757170-9c46e129-ebdf-4874-bc7c-4e14eb6ad4f1.png)
### 헌혈의집 검색 및 선택
-----
![bookPlace](https://user-images.githubusercontent.com/119032817/227757175-a575e349-b01c-4937-8f24-8d95c703dc26.PNG)
### 헌혈예약 내역
-----
![bookList](https://user-images.githubusercontent.com/119032817/227757190-b2ff8f44-fccd-461b-ab65-2d9262894df9.PNG)
</br>
-----

### 📌 시연영상
</br>


## ⚒️ 개발 스택

### ⚙️ 사용언어
<img src="https://img.shields.io/badge/Java-007396?style=flat&logo=Java&logoColor=white"/> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=JavaScript&logoColor=white">
<img src="https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=HTML5&logoColor=white"/>
<img src="https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=CSS3&logoColor=white"/>
<img src="https://img.shields.io/badge/MyBatis-ffffff?style=flat&logo=MyBatis&logoColor=black"/>
</br>

### ⚙️ 기술스택
<img src="https://img.shields.io/badge/Oracle-F80000?style=flat&logo=Oracle&logoColor=white"/> <img src="https://img.shields.io/badge/Spring-6DB33F?style=flat&logo=Spring&logoColor=white">

### ⚙️ 개발환경
<img src="https://img.shields.io/badge/Eclipse IDE-2C2255?style=flat&logo=Eclipse IDE&logoColor=white"/> <img src="https://img.shields.io/badge/IntelliJ-000000?style=flat&logo=IntelliJ IDEA&logoColor=white"/> <img src="https://img.shields.io/badge/Apache Maven-C71A36?style=flat&logo=Apache Maven&logoColor=white"/>
<img src="https://img.shields.io/badge/Apache Tomcat-F8DC75?style=flat&logo=Apache Tomcat&logoColor=black"/>

