<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>공지사항 내용조회</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
	<!--   jQuery , Bootstrap CDN  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<style>
	  .container {
            padding-top : 150px;
        }
        
    </style>
	<script type="text/javascript">
		
		 //$(function() {
			 //$( "td.ct_btn01:contains('수정')" ).on("click" , function() {
				//self.location = "/operator/updateOperatorNotice?noticeFaqNo=${operatorNoticeFaqs.noticeFaqNo}"
				//self.location = "/operator/updateOperatorNotice.jsp"
			//});
			
			//$( "td.ct_btn01:contains('목록')" ).on("click" , function() {
				//history.go(-1);
			//});
			
			//$( "td.ct_btn01:contains('삭제')" ).on("click" , function() {
			//	self.location = "/operator/deleteOperatorNotice?noticeFaqNo=${NoticeFaqs.noticeFaqNo}
			//});
		//});
		 	//============= 확인 Event  처리 =============	
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			 $( "button.btn.btn-primary.getList" ).on("click" , function() {
				history.go(-1);
				});
		});

		 
			//============= 수정 Event  처리 =============	
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			 $( "button.btn.btn-primary.update" ).on("click" , function() {
				 var noticeFaqNo =${operatorNotice.noticeFaqNo};
				 
					self.location = "/operator/updateOperatorNotice?noticeFaqNo="+noticeFaqNo
				});
		});
		 
		 
		 
		 
	</script>
	
</head>

<body bgcolor="#ffffff" text="#000000">
<jsp:include page="/layout/toolbar.jsp" />
	
	
	<div class="container">
		<div class="row">
		  <div class="col-md-2"></div>
		  <div class="col-md-8"><br><br>
		   <h3 class="text-center bg-info">공지사항</h3>
	    <div class="row">
	    
		    <div class="col-md-6 text-left">
		    	<p class="text-primary">
		    	</p>
		    </div>
		    
		    <div class="col-md-6 text-right">
		    
	    	</div>
	    	
		</div>

<form name="detailForm" method="post">
<!--  
<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif"	width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">공지사항</td>
					<td width="20%" align="right">&nbsp;</td>
				</tr>
			</table>
		</td>
		<td width="12" height="37">
			<img src="/images/ct_ttl_img03.gif"  width="12" height="37"/>
		</td>
	</tr>
</table>-->
<!--  
				<ul class="list-group">
				  <li class="list-group-item">
			  		<td width="104" class="ct_write">번호				  
				    <p class="text-left">${operatorNotice.noticeFaqNo}</p>
				    </td>
				  </li>
				</ul>
-->
<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 13px;">
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">번호</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${operatorNotice.noticeFaqNo}</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">작성일</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${operatorNotice.regDate}</td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">작성자</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${operatorNotice.userEmail}</td>
	</tr>
	
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	
	
	<!--  
	<tr>
		<td width="104" class="ct_write">제목</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${operatorNotice.title}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">내용</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${operatorNotice.detail}</td>
	</tr>
	-->
	
	
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
</table>

           <div class="board-view-title-wrap">
			<center>
               <h4>${operatorNotice.title}</h4>
			</center><br>
               <ul class="board-etc-wrap">
               
               
               </ul>
           </div>
           <div class="board-view-content-wrap board-view-txt">
               <div class="fr-view">
                   <div class="fr-view">
                       <!--  <p style="text-align: center;">
                       </p>-->
                       <p>
                           <!--  <span style="font-size: 20px;">${operatorNotice.detail}</span>-->
                        <span style="white-space: pre-line">${operatorNotice.detail}</span>                                                        
                       </p>
                   </div>
               </div>
           </div>
       </div>



<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 10px;">
	<tr>
		<td width="53%"></td>
		<td align="right">

		<table border="0" cellspacing="0" cellpadding="0">
			<tr>


			</tr>
		</table>
		

		</td>
	</tr>
</table>
	<br>
	<br>
		<div class="form-group">
			<div class="row">
		  		<div class="col-md-12 text-center ">
  		            <c:if test="${user.role == '2'}">		  		
		  			<button type="button" class="btn btn-primary update">수정</button>
		  			</c:if>
		  			<button type="button" class="btn btn-primary getList">목록</button>
		  		</div>
			</div>		
		</div>
</form>

</body>
</html>