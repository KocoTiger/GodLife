<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--   jQuery , Bootstrap CDN  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   <link href="/resources/css/main.css" rel="stylesheet">
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  CSS �߰� : ���ٿ� ȭ�� ������ ���� �ذ� :  �ּ�ó�� ��, �� Ȯ��-->
	<style>
	
	
   	</style>
   	<script type="text/javascript">
   	$( document ).ready( function() {
        $( '.slider' ).slick( {
          autoplay: false,
          infinite: false,
          slidesToShow: 4,
          slidesToScroll: 1,
          
        } );
      } );
   	</script>
	
</head>
	
<body>
	<div id=tool-bar>
		<jsp:include page="/layout/toolbar.jsp" />
	</div>
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			  </ol>
			
			  <!-- Wrapper for slides -->
			  <div class="carousel-inner" role="listbox">
			    
			    <div class="item active">
			     <img src="/resources/images/uploadFiles/temp.jpg" 
				      onerror="this.src='https://dummyimage.com/2000x260/404040/bababa.gif'"
				      class="img-responsive center-block">
			      <div class="carousel-caption">
			      </div>
			    </div>
			  </div>
			
			  <!-- Controls -->
			  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			  </a>
			  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			  </a>
			</div>
   
   
   
	<div class="container">
		
		<div class="challenge-list" id="best-challenge">
			<div class="c-header">
	   			<p class="search-title">Best ç����</p>
	   			<a href="/challenge/listChallenge?searchCondition=1">
	   				<p class="more-view">�� ����</p>
	   			</a>
   			</div>
			 <div class="slider">
			 <c:forEach var="challenge" items="${bestChallengeList}">
		      <div>
		      		<div class="col-sm-6 col-md-4">
				    <div class="thumbnail">
				    <div id="imgArea">
				      <a id="img" href="/challenge/getChallenge?challengeNo=${challenge.challengeNo }">
				      <img style="width:230px; height:230px;" src="/resources/images/uploadFiles/${challenge.challengeThumbnailImg }" 
				      onerror="this.src='https://dummyimage.com/230x230/1af0d4/000000.gif'">
				      </a>
				      	<div id="startEndDate">
				      			<p>�Ⱓ : ${challenge.startDate} ~ ${challenge.endDate }</p>
				      	</div>
				      </div>
				      <div class="caption">
					       <h4 id="title">${challenge.challengeTitle }</h4>
					       <h5 id="joinCount">������ �� : (${challenge.joinCount })</h5>
					       <h5 class="info">Host : ${challenge.hostNick }</h5>
					       <h5 class="info" id="categ">���ɻ� : ${challenge.challengeCategName }</h5>
					       <c:if test="${challenge.challengeStatus == 0}">
					       		<h5 class="status">���� : ������</h5>
					       </c:if>
					       <c:if test="${challenge.challengeStatus == 1}">
					       		<h5 class="status">���� : ������</h5>
					       </c:if>
					       <c:if test="${challenge.challengeStatus == 2}">
					       		<h5 class="status">���� : ����</h5>
					       </c:if>
					       <h5 id="regDate">����� : ${challenge.challengeRegDate }</h5>
				      </div>
				    </div>
				  </div>
		      </div>
		      </c:forEach>
    		</div>
		</div>
	  	
   		
   		<div class="challenge-list" id="best-challenge">
			<div class="c-header">
	   			<p class="search-title">�ű� ç����</p>
	   			<a href="/challenge/listChallenge?searchCondition=1">
	   				<p class="more-view">�� ����</p>
	   			</a>
   			</div>
			 <div class="slider">
			 <c:forEach var="challenge" items="${newChallengeList}">
		      <div>
		      		<div class="col-sm-6 col-md-4">
				    <div class="thumbnail">
				    <div id="imgArea">
				      <a id="img" href="/challenge/getChallenge?challengeNo=${challenge.challengeNo }">
				      <img style="width:230px; height:230px;" src="/resources/images/uploadFiles/${challenge.challengeThumbnailImg }" 
				      onerror="this.src='https://dummyimage.com/230x230/1af0d4/000000.gif'">
				      </a>
				      	<div id="startEndDate">
				      			<p>�Ⱓ : ${challenge.startDate} ~ ${challenge.endDate }</p>
				      	</div>
				      </div>
				      <div class="caption">
					       <h4 id="title">${challenge.challengeTitle }</h4>
					       <h5 id="joinCount">������ �� : (${challenge.joinCount })</h5>
					       <h5 class="info">Host : ${challenge.hostNick }</h5>
					       <h5 class="info" id="categ">���ɻ� : ${challenge.challengeCategName }</h5>
					       <c:if test="${challenge.challengeStatus == 0}">
					       		<h5 class="status">���� : ������</h5>
					       </c:if>
					       <c:if test="${challenge.challengeStatus == 1}">
					       		<h5 class="status">���� : ������</h5>
					       </c:if>
					       <c:if test="${challenge.challengeStatus == 2}">
					       		<h5 class="status">���� : ����</h5>
					       </c:if>
					       <h5 id="regDate">����� : ${challenge.challengeRegDate }</h5>
				      </div>
				    </div>
				  </div>
		      </div>
		      </c:forEach>
    		</div>
		</div>
   		
   	 <c:if test="${!empty user}">
   		<div class="challenge-list" id="best-challenge">
			<div class="c-header">
	   			<p class="search-title">��õ ç����</p>
	   			<a href="/challenge/listChallenge?searchCondition=1">
	   				<p class="more-view">�� ����</p>
	   			</a>
   			</div>
			 <div class="slider">
			 <c:forEach var="challenge" items="${categChallengeList}">
		      <div>
		      		<div class="col-sm-6 col-md-4">
				    <div class="thumbnail">
				    <div id="imgArea">
				      <a id="img" href="/challenge/getChallenge?challengeNo=${challenge.challengeNo }">
				      <img style="width:230px; height:230px;" src="/resources/images/uploadFiles/${challenge.challengeThumbnailImg }" 
				      onerror="this.src='https://dummyimage.com/230x230/1af0d4/000000.gif'">
				      </a>
				      	<div id="startEndDate">
				      			<p>�Ⱓ : ${challenge.startDate} ~ ${challenge.endDate }</p>
				      	</div>
				      </div>
				      <div class="caption">
					       <h4 id="title">${challenge.challengeTitle }</h4>
					       <h5 id="joinCount">������ �� : (${challenge.joinCount })</h5>
					       <h5 class="info">Host : ${challenge.hostNick }</h5>
					       <h5 class="info" id="categ">���ɻ� : ${challenge.challengeCategName }</h5>
					       <c:if test="${challenge.challengeStatus == 0}">
					       		<h5 class="status">���� : ������</h5>
					       </c:if>
					       <c:if test="${challenge.challengeStatus == 1}">
					       		<h5 class="status">���� : ������</h5>
					       </c:if>
					       <c:if test="${challenge.challengeStatus == 2}">
					       		<h5 class="status">���� : ����</h5>
					       </c:if>
					       <h5 id="regDate">����� : ${challenge.challengeRegDate }</h5>
				      </div>
				    </div>
				  </div>
		      </div>
		      </c:forEach>
    		</div>
		</div>
   		</c:if>
   		
   		<c:if test="${!empty user}">
   		<div class="challenge-list" id="best-challenge">
			<div class="c-header">
	   			<p class="search-title">ģ���� ����� ç����</p>
	   			<a href="/challenge/listChallenge?searchCondition=1">
	   				<p class="more-view">�� ����</p>
	   			</a>
   			</div>
			 <div class="slider">
			 <c:forEach var="challenge" items="${friendChallengeList}">
		      <div>
		      		<div class="col-sm-6 col-md-4">
				    <div class="thumbnail">
				    <div id="imgArea">
				      <a id="img" href="/challenge/getChallenge?challengeNo=${challenge.challengeNo }">
				      <img style="width:230px; height:230px;" src="/resources/images/uploadFiles/${challenge.challengeThumbnailImg }" 
				      onerror="this.src='https://dummyimage.com/230x230/1af0d4/000000.gif'">
				      </a>
				      	<div id="startEndDate">
				      			<p>�Ⱓ : ${challenge.startDate} ~ ${challenge.endDate }</p>
				      	</div>
				      </div>
				      <div class="caption">
					       <h4 id="title">${challenge.challengeTitle }</h4>
					       <h5 id="joinCount">������ �� : (${challenge.joinCount })</h5>
					       <h5 class="info">Host : ${challenge.hostNick }</h5>
					       <h5 class="info" id="categ">���ɻ� : ${challenge.challengeCategName }</h5>
					       <c:if test="${challenge.challengeStatus == 0}">
					       		<h5 class="status">���� : ������</h5>
					       </c:if>
					       <c:if test="${challenge.challengeStatus == 1}">
					       		<h5 class="status">���� : ������</h5>
					       </c:if>
					       <c:if test="${challenge.challengeStatus == 2}">
					       		<h5 class="status">���� : ����</h5>
					       </c:if>
					       <h5 id="regDate">����� : ${challenge.challengeRegDate }</h5>
				      </div>
				    </div>
				  </div>
		      </div>
		      </c:forEach>
    		</div>
		</div>
   		</c:if>
   		
   		<div class="challenge-list" id="best-challenge">
			<div class="c-header">
	   			<p class="search-title">Best �α� ���� �̹���</p>
	   			<a href="/challenge/listChallengeCertiImg">
	   				<p class="more-view">�� ����</p>
	   			</a>
   			</div>
			 <div class="slider">
			 <c:forEach var="certiImg" items="${bestCertiImgList}">
		      <div>
		      		<div class="col-sm-6 col-md-4">
				  
				    <div id="imgArea">
				      <a id="img" href="/challenge/getChallengeCertiImg?certiImgNo=${certiImg.certiImgNo }">
				      <img style="width:230px; height:230px;" src="/resources/images/uploadFiles/${certiImg.certiImg }" 
				      onerror="this.src='https://dummyimage.com/230x230/1af0d4/000000.gif'">
				      </a>
				      </div>
				  </div>
		      </div>
		      </c:forEach>
    		</div>
		</div>
   		
   		
   		
	</div>

</body>

</html>