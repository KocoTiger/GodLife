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
	<script type="text/javascript">
	

function fncGetList(currentPage) {
	
	$("#currentPage").val(currentPage)
   
	$("form").attr("method" , "POST").attr("action" , "/point/getPointPurchaseList").submit();
}
$(function() {
	 
	$( ".ct_list_pop td:nth-child(1)" ).on("click" , function() {
		self.location ="/purchase/getPurchase?tranNo="+$(this).children("input").val();
	});
	
	$( ".ct_list_pop td:nth-child(3)" ).on("click" , function() {
			self.location ="/user/getUser?userId="+$(this).children("input").val();
	});
	
	$( ".ct_list_pop td:nth-child(5)" ).on("click" , function() {
		var tranNo = $(this).children("input").val().trim();
		$.ajax({
			url : "/purchase/json/getPurchase/" + tranNo,
			method : "GET",
			dataType : "json",
			headers : {
				"Accept" : "application/json",
				"Content-Type" : "application/json"
			},
			success : function(JSONData, status) {

				//alert(status);
				//alert("JSONData : \n"+JSONData.tranNo);

				var displayValue = "<h3>" + 
				"��ǰ��ȣ : "+JSONData.purchaseProd.prodNo + "<br/>" +
				"������ �̸� : "+JSONData.purchaseProd.receiverName + "<br/>" +
				"��� : "+ JSONData.quantity + "<br/>" +
				"������ ����ó : "+ JSONData.receiverPhone + "<br/>" +
				"������ �ּ� : "+ JSONData.divyAddr + "<br/>" +
				"���� ��û ����: "+ JSONData.divyRequest + "<br/>" +
				"��������: "+ JSONData.divyDate + "<br/>" +
				"�ֹ���: "+ JSONData.orderDate + "<br/>" +
				"��ǰ�̹��� : <img src=/images/uploadFiles/"+ JSONData.purchaseProd.fileName+ "/><br/>" 
				"</h3>";

				//alert(displayValue);
				$("h3").remove();
				$("#" + tranNo + "").html(displayValue);
			}
		});
	});
	
	$(".ct_list_pop td:nth-child(11):contains('���ǵ���')" ).on("click",function() {
		//alert( $(this).children("input").val() );
		var tranNo =$(this).children("input").val().trim();
		self.location="/purchase/updateTranCode?tranNo="+$(this).children("input").val()+"&tranCode=3";
	});
	

	
$( ".ct_list_pop td:nth-child(1)" ).css("color" , "#5F04B4");
$( ".ct_list_pop td:nth-child(3)" ).css("color" , "#4C0B5F");
$( ".ct_list_pop td:nth-child(5)" ).css("color" , "#610B5E");
$( ".ct_list_pop td:contains('���ǵ���')" ).css("color" , "#B4045F");
//$( ".ct_list_pop td:nth-child(9)" ).css("color" , "red");
		
$(".ct_list_pop:nth-child(4n+6)" ).css("background-color" , "whitesmoke");

});
</script>
</head>

<body>
	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
		<div class="page-header text-info">
	       <h3>����Ʈ �̿볻�� ���</h3>
	    </div>
	    
	    <!-- table ���� �˻� Start /////////////////////////////////////-->
	    <div class="row">
	    
		    <div class="col-md-6 text-left">
		    	<p class="text-primary">
		    		��ü  ${resultPage.totalCount } �Ǽ�, ���� ${resultPage.currentPage}  ������
		    	</p>
		    </div>
		    
		    <div class="col-md-6 text-right">
		    
			    <form class="form-inline" name="detailForm">
			    
				  <div class="form-group">
				    <select class="form-control" name="searchCondition" >
						<option value="0"  ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>����Ʈ����</option>
						<option value="1"  ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>ç����</option>
						<option value="2"  ${ ! empty search.searchCondition && search.searchCondition==2 ? "selected" : "" }>�̺�Ʈ</option>
						<option value="3"  ${ ! empty search.searchCondition && search.searchCondition==3 ? "selected" : "" }>���</option>					
					</select>
				  </div>
				  
				  <div class="form-group">
				    <label class="sr-only" for="searchKeyword">�˻���</label>
				    <input type="text" class="form-control" id="searchKeyword" name="searchKeyword"  placeholder="�˻���"
				    			 value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
				  </div>
				  
				  <button type="button" class="btn btn-default">�˻�</button>
				  
				  <!-- PageNavigation ���� ������ ���� ������ �κ� -->
				  <input type="hidden" id="currentPage" name="currentPage" value=""/>
				  
				</form>
	    	</div>
	    	
		</div>
		<!-- table ���� �˻� Start /////////////////////////////////////-->
		
		
<table class="table table-striped">
	<tr>
		<td colspan="11">��ü ${resultPage.totalCount} �Ǽ�, ���� ${resultPage.currentPage } ������</td>
	</tr>
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
	<tr>
		<td colspan="11" bgcolor="808285" height="1"></td>
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
		<td>����</td>
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

</form>

</div>

</body>
</html>