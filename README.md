# ⭐️GodLife
Team.I/O - GodLife 프로젝트


# 🔖프로젝트 소개 및 선정 이유
* 저희 GodLife 목표달성 플랫폼 프로젝트는 자아실현과 성취감을 중요시하고, 자기 관리 욕구가 높은 MZ세대의 라이프스타일인 ‘갓생살기’를 타겟으로
일상을 공유하고 SNS를 통해 무엇인가를 인증하려는 욕구가 강한 MZ세대에게 더 나은 삶을 위한 건강한 습관과 목표를 만들 수 있도록 해당 서비스를 기획했습니다.

* 저희 서비스는 높은 동기부여를 위하여 챌린지를 생성 및 참가하여 스스로 포인트, 즉 돈을 걸어 미션을 수행하고 인증하며 목표를 달성할 수 있도록 도와주는 서비스 입니다.

* 같은 목표를 가진 이들끼리 커뮤니티에 인증샷을 올려 경쟁심과 성취욕구를 자극하기도 하고 응원과 격려를 주고 받기도 합니다.

* 목표 100프로 달성자 부터 각 달성 퍼센트 에따른 보상을 획득 합니다.


# 개발기간 및 인원
* 개발기간 ⏰ : 2022 / 05 / 02 ~ 2022 / 07 / 01 (총 9주)
* 개발인원    : 풀스택 엔지니어 5명 
    * Project Master👨🏻‍💻 : 유병문
    * Project Member👨‍👨‍👧‍👦 : 김호 황석현 이수아 이해동

# 개발방식
* 애자일 개발 프로세스와 그에 따른 스크럼 방법론에 의거해 일주일 단위의 스프린트를 기준으로 삼았습니다.
* 매 스프린트 시작마다 Planning Meeting을, 매일 아침 11시에는 Daily Meeting을 진행하며 현재 진행상황과 앞으로의 진행 예정 사항을 최신화 하고 일정을 조율했습니다.
* 매일 저녁 8시에는 각 팀원의 이슈를 체크하고, 스케쥴에 따른 프로젝트 방향성을 확립하였습니다.
* 모든 회의는 회의록을 작성하여 소통에 있어 혼선이 생기는 것을 최소화했습니다.


# 데모 영상 🎥
https://drive.google.com/file/d/1ahwCnU_mzMbUzneLaurN7cVvDUnDIXSp/view?usp=sharing


# 적용 기술 및 구현 기능 🛠

## 적용기술

## 공통사항
Git & Github, Slack, Trello, Google SpreadSheet, Google Document

Front-End
HTML, CSS, JavaScript, JSP, JQuery, AJAX, JSON, BootStrap, GSAP, Slick.js, Font AWESOME

Back-End
JAVA, Spring, MyBatis, Maven, Unit, GSON, Oracle, Oracle Developer, XML

API
CoolSMS, Kakao Open API, Import

Tool
Eclipse, StarUML, OvenAPP


## 공통 역할
* 프로젝트 분석(현업 요구사항 정의서, UseCase 유형정의, 요구사항 추적표, UseCase 정의서, UseCase Diagram, Class Diagram, VOPC, 화면정의서)
* 프로젝트 설계(설계 표준, VOPC, 화면정의서)
* Data 제작∙관리 및 최신화


## 개인별 역할 ❤️

### 유병문
* 프로젝트 스케쥴 작성
* ERD 다이어그램 작성
* 포인트 관리( 회원 보유포인트, 포인트 현금 결제, 상품 구매, 챌린지 참가비 결제, 챌린지 포인트 보상 환급, 이벤트 참가비용 결제, 이벤트 보상 환급, 포인트 이용내역) 구현
* 기부하기 구현
* 회원 관리( Top Nav 회원정보, 신고 카운트 증가 및 레드카드 발급, 레드카드 쿠폰 사용, 타회원 상세페이지 배지목록 및 챌린지 목록) 구현
* 통합 관리( 매일 출석하기 이벤트 ) 구현
* 챌린지 관리(메인화면 베스트 인증이미지 목록) 구현
* Import API를 사용하여 카카오 페이 결제, 페이코 카드 결제 구현
* CoolSMS를 사용하여 상품권 구매정보 문자메세지 전송 구현
* GodLife 프로젝트 최종 디버깅 작업

### 김호
* 상품 관리( 상품권/쿠폰 상품 등록, 상품권/쿠폰 상품 수정, 상품권/쿠폰 상품 삭제, 상품권/쿠폰 상품 상세조회) 구현
* 배지 관리( 배지 등록, 배지 수정, 배지 삭제, 배지 상세조회) 구현
* File upload 를 통한 이미지 등록 구현
* 회원가입, 친구등록, 챌린지 달성률 100프로, 챌린지 종료 후 카테고리에 맞는 배지 활동 횟수량 증가 구현
* 마이배지 목록 조회 구현
* 배지 등급에 따른 디스플레이 변화 구현
* 프로젝트 최종 문서화 작성
* 관리자 UI 구현

### 황석현
* Oracle Developer 구현
* 통합관리(공지사항 등록, 공지사항 삭제, 공지사항 조회,FAQ 등록,FAQ 수정,FAQ 삭제, FAQ 조회, 룰렛 이벤트) 구현
* 메인화면 이벤트 배너 기능 구현

### 이수아
* Maven을 사용한 프로젝트 생성
* 회원관리(일반 회원가입, 소셜 회원가입, 로그인, 소셜로그인, 회원 상세조회, 회원정보수정, 쪽지 보내기, 쪽지읽기, 쪽지 신고, 쪽지 목록, 친구/블랙리스트 목록, 친구/블랙리스트 등록, 친구/블랙리스트 삭제, 관리자용 전체회원목록, 관리자용 신고목록) 구현
* CoolSMS를 통한 회원가입 시 본인인증 구현
* File upload를 통한 이미지 등록 구현
* Kakao Open API를 통한 카카오 소셜로그인 구현
* Top Nav 구현
* 마이페이지 사이드 바 구현

### 이해동
* Oracle Developer 최신화
* 챌린지 관리(챌린지 등록, 챌린지 조회, 챌린지 참여유저 목록, 챌린지 인증이미지 등록, 인증이미지 게시판 좋아요/싫어요, 인증이미지 게시판 댓글) 구현
* File upload를 통한 이미지 등록 구현
* 챌린지 관리(챌린지 찜하기, 챌린지 공유, 참여한 챌린지 목록) 구현
* 블랙리스트 상대가 등록한 챌린지,인증이미지 게시글 은 조회가 되지 않도록 구현
* Kakao Open ApI를 통한 카카오 공유하기 구현
* 인증이미지 게시판 무한 스크롤 구현
* Resources 관리 
* 메인화면 베스트 챌린지 목록, 신규 챌린지 목록, 친구가 등록한 챌린지 목록, 관심사에 따른 추천 챌린지 목록 구현

## 구현기능 📝

### 메인페이지🏠
* 이벤트 배너 스크롤 구현
    * 메인 배너 를 포함한 두개의 이벤트 배너
* 베스트 챌린지 목록 구현
    * 아직 시작 전인 챌린지를 상대로 참여자가 많은 순으로 디스플레이 되도록 구현
* 신규 챌린지 목록 구현
    * 아직 시작 전인 챌린지를 상대로 챌린지 생성날짜가 빠른 순으로 디스플레이 되도록 구현
* 추천 챌린지 목록 구현
    * 아직 시작 전인 챌린지를 상대로 회원이 등록한 관심사를 기준으로 챌린지 목록이 디스플레이 되도록 구현
* 친구 챌린지 목록 구현
    * 아직 시작 전인 챌린지를 상대로 회원의 친구가 등록한 챌린지 목록이 디스플레이 되도록 구현
* 베스트 인증이미지 목록 구현
    * 인증이미지 게시글에 좋아요가 많은 순으로 디스플레이 되도록 구현

### Top NAV바🧩
* 챌린지 관심사, 공지사항, 이벤트, (회원가입, 로그인), (회원간략정보, 마이페이지 이동, 포인트상품 구매 , 상품권상품 구매, 쿠폰상품 구매, 기부하기),관리자 UI로 구성됨
    * 로그인 상태 비회원 / 회원 / 관리자에 따라 UI 변화가 이루어진다.

### 마이페이지😼
* 본인 상세정보
    * 로그인한 회원의 정보를 조회, 수정 할 수 있습니다.
    * 수정 시에는 본인 인증이 필요합니다.
    * 서비스 활동을 하며 타회원으로 부터 받은 신고개수와 레드카드 개수, 레드카드소멸 쿠폰 개수가 보여집니다.
        * 신고개수는 5개가 된다면 자동으로 초기화 되며 레드카드가 증가합니다.
        * 레드카드를 3장 보유했을 시 서비스 활동이 제한됩니다.
        * 레드카드 소멸쿠폰을 통해 레드카드를 소멸할 수 있으며, 쿠폰은 쿠폰구매 화면에서 포인트로 구매가 가능합니다.
* 포인트 이용내역 조회
    * 포인트 전체 이용내역, 포인트 충전내역, 상품권 구매내역, 기부내역 으로 세분화 됩니다.
        * 포인트 전체 이용내역은 회원이 서비스를 이용하며 발생한 포인트 충전/소비, 금액, 이용처, 날짜로 조회됩니다.
        * 포인트 충전내역은 현금으로 포인트 상품을 구매한 내역이며 포인트 이용유형, 금액, 구매한 상품, 날짜로 조회됩니다.
        * 상품권 구매내역은 포인트로 구매한 상품권에 대한 정보 내역으로, 상품명, 상품권 고유번호,구매날짜, SMS문자 전송 기능이 있습니다.
        * 기부내역은 포인트로 기부한 내역으로 기부처, 기부금액, 기부날짜로 조회됩니다.
        * 모든 내역은 검색 조건으로 세분화된 검색을 할 수 있습니다.

* 보유 배지
    * 배지는 활동 배지, 관심사 배지로나뉘어지며 배지 활동량 증가에 따라 등급이 오릅니다.
        * 활동 배지 : 친구배지(친구등록시), 목표100프로 달성, 레벨배지 등 각 배지에 맞는 조건 달성 시 활동량 증가
        * 관심사 배지 : 관심사(운동,취미,예술,식습관,생활)에 맞는 챌린지를 참여하여 보상 받을 시 활동량 증가 
    * 배지 전체 보기 버튼을 통해 모든 배지의 정보 및 배지서비스의 규칙을 확인 할 수 있습니다.
        * 관리자는 배지 전체 보기 내에서 배지 등록, 수정, 삭제 가 가능합니다.

* 친구/블랙리스트 목록
    * 등록한 친구 또는 블랙리스트를 조회 할 수 있으며 쪽지를 보낼수도 있습니다.
    * 체크 박스를 통해 친구/블랙리스트를 삭제할 수 있습니다.
        * 친구가 등록된다면 친구가 등록한 챌린지를 메인페이지에서 확인 할 수 있습니다.
        * 블랙리스트로 등록된다면 해당 회원의 등록된 챌린지,인증이미지는 어디에서도 조회가 불가능 합니다. 

* 참여한/ 찜한 챌린지 목록
    * 본인이 참여한 / 찜한 챌린지 목록을 조회합니다. 
        * 참여한 챌린지 중 시작전 챌린지는 나가기 기능, 공유하기 기능이 있습니다.
        * 진행중인 챌린지는 목표달성을 위한 인증사진 등록 기능이 있습니다.
        * 종료된 챌린지는 목표달성률에 따른 보상포인트 받기 기능이 있습니다.
        * 찜한 챌린지는 시작전에만 보여지며 진행중인 상태가 된다면 사라집니다.

* 쪽지 보내기, 받은 쪽지함
    * 회원,관리자에게 쪽지를 보낼 수 있습니다.
    * 받은 쪽지함에서 해당 회원에게 답장을 보낼 수 있으며 신고또한 가능합니다.

### 상품 구매🎁
* 포인트상품 구매, 상품권상품 구매, 쿠폰상품 구매가있습니다.
    * 포인트상품 구매는 현금결제를 통해 구매가 가능하며 결제 방식으로는 계좌이체, 페이코 카드결제, 카카오페이가 있습니다.
    * 상품권상품 구매는 포인트를 통해 구매가 가능합니다.
        * 상품권 구매 시 영문+숫자로 조합된 랜덤번호가 고유번호로 저장됩니다.
    * 쿠폰상품 구매는 포인트를 통해 구매가 가능합니다.

### 기부하기🍀
* 기부하기 화면에는 지금껏 기부했던 회원들 중 상위 3명의 랭킹이 보여집니다.
* 기부하기는 포인트를 통해 기부가 가능합니다.

### 이벤트🤹🏻‍♂️
* 매일 출석하기 이벤트와 룰렛 이벤트가 있습니다.
* 매일 출석하기 이벤트는 회원만 하루에 한번 참여가 가능하며 월이 바뀐다면 초기화 됩니다.
    * 매월 14,28번째 출석은 보다 좋은 보상을 받을 수 있습니다.
* 룰렛 이벤트는 회원만 하루에 한번 참여가 가능합니다
    * 관리자가 지정한 확률에 따른 보상이 나뉘어져 있습니다.
    * 룰렛이벤트 참여시 일정 포인트를 지불해야 합니다.

### 챌린지 생성🎯
* 회원은 챌린지를 생성할 수 있습니다.
* 챌린지 생성시 타이틀, 입장 포인트, 썸네일, 관심사, 시작날짜, 종료날짜, 인증주기, 챌린지 설명, 챌린지 규칙을 작성합니다.
    * 관심사는 추천 챌린지 목록에 이용됩니다.
    * 지정한 시작날짜, 종료날짜, 인증주기(월화수목금토일 다중 선택가능)에 맞추어 챌린지 인증이미지 등록 개수와 달성률이 조정됩니다.
* 최종 등록시 지정한 정보들을 한번더 확인하여 수정 및 최종등록을 할 수 있습니다.

### 챌린지 상세페이지❤️
* 챌린지 상세페이지는 시작전, 진행중, 종료된 상태로 나뉩니다.
    * 챌린지 시작전 메인화면 또는 챌린지 검색에 조회가 되며, 다른 회원들은 입장포인트를 지불하고 참여가 가능합니다. 또한 친구에게 카카오 공유도 할 수 있습니다.
    * 챌린지 진행중 참여한 회원들은 인증이미지 등록 가능 날짜에 맞춰 조건에 맞는 인증이미지를 등록할 수 있으며 그에따른 달성률이 증가합니다
        * 호스트와 관리자는 타회원이 등록한 인증이미지가 불건전 하거나 챌린지 조건에 맞지않다면 삭제를 할 수있습니다.
        * 인증이미지가 삭제 된다면 달성률에 지장이 있으며 인증이미지 등록 가능날짜가 지난다면 재등록 할 수 없습니다.
    * 챌린지 종료 시 회원인 자신의 목표달성률에 따른 보상을 지급받을 수 있습니다.

### 공지사항 및 FAQ❓
* 관리자가 등록한 공지사항과 FAQ를 비회원을 포함하여 모든 회원이 조회가 가능합니다.


# 분석 단계 DataBase Model
 <img width="1248" alt="스크린샷 2022-07-07 오후 3 33 28" src="https://user-images.githubusercontent.com/98165704/177708017-e6747854-9711-4407-91b0-e951aea0438a.png">


# 설계 단계 DataBase Model
<img width="1285" alt="스크린샷 2022-07-07 오후 3 34 24" src="https://user-images.githubusercontent.com/98165704/177708160-46e71af8-5b14-4b57-bc29-bc3f46916a23.png">

