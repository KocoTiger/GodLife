<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/mypage.css" />

<style>

#please{
position:absolute;
}


</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="side">
<ul class="list_lnb" id="please">
   <li class="lnb_admin2" >
      <strong><span class="ico_admin"></span> <span class="txt_lnb">회원관리</span></strong>
      <ul>
         <li id="managerMainChart" style="text-align: left;"><a href="/user/getUser?userEmail=${sessionScope.user.userEmail}" class="link_lnb">개인정보 조회 및 수정</a></li>
         <li id="managerMainCalender" style="text-align: left;"><a href="/point/getPointPurchaseList" class="link_lnb">포인트 이용내역</a></li>
         <li id="managerMainCalender" style="text-align: left;"><a href="/myBadge/getBadgeMyList?userEmail=${sessionScope.user.userEmail}" class="link_lnb">보유 배지</a></li>
         <li id="managerMainCalender" style="text-align: left;"><a href="/user/listFriend?userEmail=${sessionScope.user.userEmail}" class="link_lnb">친구 관리</a></li>
         <li id="managerMainCalender" style="text-align: left;"><a href="/user/listFriendRequest?targetEmail=${sessionScope.user.userEmail}" class="link_lnb">친구요청 관리</a></li>
         <li id="managerMainCalender" style="text-align: left;"><a href="/user/listBlack?userEmail=${sessionScope.user.userEmail}" class="link_lnb">블랙리스트 관리</a></li>
      </ul>
   </li>
   
   <li class="lnb_admin1">
      <strong><span class="ico_admin"></span> <span class="txt_lnb">챌린지 관리</span></strong>
      <ul>
         <li id="managerSaleboard" style="text-align: left;"><a href="/challenge/listChallenge?challengeListOpt=add" class="link_lnb">등록한 챌린지 목록</a></li>
         <li id="managerFreeboard" style="text-align: left;"><a href="/challenge/listChallenge?challengeListOpt=join" class="link_lnb">참여한 챌린지 목록</a></li>
         <li id="managerReviewboard" style="text-align: left;"><a href="/challenge/listChallenge?challengeListOpt=pick" class="link_lnb">찜한 챌린지 목록</a></li>
      	 <li id="managerReviewboard" style="text-align: left;"><a href="/challenge/listChallengeCertiImg?certiImgOpt=my" class="link_lnb">내가 인증한 이미지 목록</a></li>
      </ul>
   </li>
   
   <li class="lnb_admin3">
      <strong><span class="ico_admin"></span> <span class="txt_lnb">쪽지 관리</span></strong>
      <ul>
         <li id="managerSaleboard" style="text-align: left;"><a href="/user/addUserMsg?sendEmail=${sessionScope.user.userEmail}" class="link_lnb">쪽지 쓰기</a></li>
         <li id="managerFreeboard" style="text-align: left;"><a href="/user/listUserRecvMsg?recvEmail=${sessionScope.user.userEmail}"  class="link_lnb">받은 쪽지함</a></li>
         <li id="managerReviewboard" style="text-align: left;"><a href="/user/listUserSendMsg?sendEmail=${sessionScope.user.userEmail}" class="link_lnb">보낸 쪽지함</a></li>
      </ul>
   </li>
   
      <li class="lnb_admin4">
      <strong><span class="ico_admin"></span> <span class="txt_lnb">고객센터</span></strong>
      <ul>
          <li id="managerNotice" style="text-align: left;"><a href="/operator/listOperatorNotice" class="link_lnb">공지사항</a></li>
         <li id="managerServiceQuestion" style="text-align: left;"><a href="/operator/listOperatorFaqs" class="link_lnb">FAQ</a></li>
      </ul>
   </li>
</ul>
</div>
<jsp:include page="/layout/toolbar.jsp" />
</body>
</html>