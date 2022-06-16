<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
<title>��ǰ�� ���� ���</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<link rel="stylesheet" href="/resources/css/purchaseLists.css" type="text/css">
	<style>
	  body {
            padding-top : 70px;
        }
      #mesaageimg{
      	width: 30px;
      	height: 30px;
      }
      td{
     	 width: 30px;
      	height: 40px;
      }
   
    </style>
	<script type="text/javascript">
	

function fncGetList(currentPage) {
	
	$("#currentPage").val(currentPage)
   
	$("form").attr("method" , "POST").attr("action" , "/point/getPointPurchaseVoucherList").submit();
}

$(function(){
	$("button:contains('�˻�')").on("click",function(){
		fncGetList(1);
	});
});

$(function(){
	$("a:contains('����')").click(function(){
		alert(productName+""+voucherUniqueNo+""+regDate);
		var productName = $(this).data("param1");
		var voucherUniqueNo = $(this).data("param2");
		var regDate = $(this).data("param3");
		$.ajax({
	        url:"/pointRest/sendPointVoucher?productName="+productName+
			"&voucherUniqueNo="+voucherUniqueNo+"&regDate="+regDate,
			method : "GET",
			dataType : "json",
			headers : {
				"Accept" : "application/json",
				"Content-Type" : "application/json"
			},
	        success:function(data){
	        		
	        	}
	        	});
	        });
	    });	

</script>
</head>

<body>
	
	<jsp:include page="/layout/toolbar.jsp" />
	<form class="form-inline" name="detailForm">
	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
		<div class="page-header text-info">
	       <h3>��ǰ�� ���Ÿ��</h3>
	    </div>
	    	    <!-- table ���� �˻� Start /////////////////////////////////////-->
	    <div class="row">
		    <div class="col-md-6 text-left">
		    	<p class="text-primary">
		    		��ü  ${resultPage.totalCount } ��
		    	</p>
		    </div>
		    <div class="col-md-6 text-right">
				  <div class="form-group">
				    <select class="form-control" name="searchCondition" >
						<option value="0"  ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>��ü</option>
						<option value="1"  ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>3000����</option>
						<option value="2"  ${ ! empty search.searchCondition && search.searchCondition==2 ? "selected" : "" }>5000����</option>
						<option value="3"  ${ ! empty search.searchCondition && search.searchCondition==3 ? "selected" : "" }>10000����</option>
						<option value="4"  ${ ! empty search.searchCondition && search.searchCondition==4 ? "selected" : "" }>30000����</option>
						<option value="5"  ${ ! empty search.searchCondition && search.searchCondition==5 ? "selected" : "" }>100000����</option>
					</select>
					</div>
				  
				  
				  <button type="button" class="btn btn-default">�˻�</button>
				  
				  <!-- PageNavigation ���� ������ ���� ������ �κ� -->
				  <input type="hidden" id="currentPage" name="currentPage" value=""/>
				  
			</div>
	    </div>
	  
	
		<!-- table ���� �˻� Start /////////////////////////////////////-->
		
		
<table class="table table-striped">
	<tr>
		<td>��ȣ<br></td>
		<td>��ǰ��<br></td>
		<td></td>
		<td>������ȣ</td>
		<td></td>
		<td>���ų�¥</td>
		<td></td>
		<td>�޼���</td>
		
	</tr>
	<c:set var = "i" value = "0"/>
	<c:forEach var ="point" items ="${list }">
		<c:set var="i"  value = "${i+1 }"/>
		<tr>
		<td>${i }</td>
		<td>${point.productName}</td>
		<td></td>
		<td>${point.voucherUniqueNo}</td>
		<td></td>
		<td>${point.regDate}</td>
		<td></td>
		<td><a href="#"
		data-param1="${point.productName}"
		data-param2="${point.voucherUniqueNo}"
		data-param3="${point.regDate}"
		><img src="/resources/images/uploadFiles/voucherMesaage.png" id="mesaageimg">����</a></td>
	</tr>
	
	</c:forEach>
</table>	
	
<!--  ������ Navigator ���� -->

<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top:10px;">
	<tr>
		<td align="center">
		   <input type="hidden" id="currentPage" name="currentPage" value=""/>
	
			<jsp:include page="../common/pageNavigator_new.jsp"/>	
			
    	</td>
	</tr>
</table>
<!--  ������ Navigator �� -->



</div>
</form>
</body>
</html>