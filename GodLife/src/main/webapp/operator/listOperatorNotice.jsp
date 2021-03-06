<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>공지사항</title>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--   jQuery , Bootstrap CDN  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/resources/css/animate.min.css" rel="stylesheet">
   <link href="/resources/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/resources/javascript/bootstrap-dropdownhover.min.js"></script>

	<style>
	  .container {
            padding-top : 150px;
        }
        
    </style>
    
	<script type="text/javascript">
	
		function fncGetList(currentPage) {
			
			$("#currentPage").val(currentPage)
			$("form").attr("method" , "POST").attr("action" , "/operator/listOperatorNotice").submit();	
		}

		//============= "검색"  Event  처리 =============	
		 $(function() {
			 //==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "button.btn.btn-default" ).on("click" , function() {
			fncGetList(1);
			});
		 });

		
		$(function() {

			$( "td.ct_btn01:contains('검색')" ).on("click" , function() {
				fncGetList(1);
			});

			 
			$( ".ct_list_pop td:nth-child(3)" ).on("click" , function() {
					self.location ="/operator/getOperatorNotice?noticeFaqNo="+$(this).data("value");
			});
			
			var noticeFaqNo = $(this).text().trim();
			$.ajax( 
					{
						url : "/operator/json/getOperatorNotice/"+noticeFaqNo ,
						method : "GET" ,
						dataType : "json" ,
						headers : {
							"Accept" : "application/json",
							"Content-Type" : "application/json"
						},
						success : function(JSONData , status) {
		
							//Debug...
							//alert(status);
							//Debug...
							//alert("JSONData : \n"+JSONData);
							
							var displayValue = "<h3>"
														+"번  호 : "+JSONData.noticeFaqNo+"<br/>"
														+"제  목 : "+JSONData.title+"<br/>"
														+"작성자 : "+JSONData.userEmail+"<br/>"
														+"작성일 : "+JSONData.regDate+"<br/>"
														+"</h3>";
							//Debug...									
							//alert(displayValue);
							$("h3").remove();
							$( "#"+noticeFaqNo+"" ).html(displayValue);
						}
				});
		
		
		});
	</script>
</head>

<body>
<jsp:include page="/layout/toolbar.jsp" />	
	<div class="container">
		<div class="page-header text-info">
	       <h3>공지사항</h3>
	    </div>
	    <div class="row">	    
		    <div class="col-md-6 text-left">
		    	<p class="text-primary">
		    		전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
		    	</p>
		    </div>
		    
		    
	    	
		</div>
		
<table class="table table-striped">
	<tr>
		<br></br>
		<td>번호<br></td>
		<td></td>
		<td>제목</td>
		<td></td>
		<td>작성자</td>
		<td>작성일</td>
		<td></td>	
	</tr>
	<tr>
		<td colspan="11" bgcolor="808285" height="1"></td>
	</tr>

	<c:set var = "i" value = "0"/>
	<c:forEach var ="operatorNoticeFaqs" items ="${list }">
		<c:set var="i"  value = "${i+1 }"/>
		<tr class="ct_list_pop">
		<td align="center">${ i }</td>
		<td></td>
			  <td align="left" data-value="${ operatorNoticeFaqs.noticeFaqNo }" title="Click :내용보기">${ operatorNoticeFaqs.title }</td>
			  <td align="left">
			  <input type="hidden" value="${operatorNoticeFaqs.noticeFaqNo}"></td>

			  <td align="left">${ operatorNoticeFaqs.userEmail }</td>
			  <td align="left">${ operatorNoticeFaqs.regDate }</td>
			  <td align="left">
			  <input type="hidden" value="${operatorNoticeFaqs.noticeFaqNo}">
			  </td>
	</tr>	
	</c:forEach>
</table>	



	
<!--  페이지 Navigator 시작 -->

<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top:10px;">
	<tr>
		<td align="center">
		   <input type="hidden" id="currentPage" name="currentPage" value=""/>
	
			<jsp:include page="../common/pageNavigator_new.jsp"/>	
			
    	</td>
	</tr>
</table>
<!--  페이지 Navigator 끝 -->


	<!-- 새글쓰기 누를 때 -->
	<form action="/operator/addOperatorNotice" method="GET">
		<c:if test="${user.role == '2'}">
			<input type="submit" class="btn btn-primary " value="글쓰기"/>
		</c:if>
	<!-- 새글의 계층 정보 -->
	<!--  <button type="submit" class="btn btn-secondary mb-3">글쓰기</button>-->
	</form>		

</div>

</body>
</html>