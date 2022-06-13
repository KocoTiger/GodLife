<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
<title>����Ʈ �̿� �����ȸ</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="../javascript/calendar.js"></script>
	<style>
	  body {
            padding-top : 70px;
        }
        
    </style>
	<script type="text/javascript">
	<!-- jQuery DatePicker -->
	 $(function() {
		 $.datepicker.setDefaults({
			 dateFormat: 'yy-mm-dd'
		 });
		 
   	$( "#startDatePicker" ).datepicker();
   	$( "#endDatePicker" ).datepicker();
	 });

function fncGetList(currentPage) {
	
	$("#currentPage").val(currentPage)
   
	$("form").attr("method" , "POST").attr("action" , "/point/getPointPurchaseList").submit();
}

$(function(){
	$("button:contains('�˻�')").on("click",function(){
		fncGetList(1);
	});
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
						    <label for="exampleInputEmail1">ç���� ������</label>
						    <div>
						    	<input type="text" name ="startDate" id="startDatePicker" readonly>
						    </div>
						  </div>
						  
						  <div class="form-group">
						    <label for="exampleInputEmail1">ç���� ������</label>
						    <div>
						    	<input type="text" name ="endDate" id="endDatePicker" readonly>
						    </div>
						  </div>
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
		<td>��ȣ<br></td>
		<td>�̿� ����<br></td>
		<td></td>
		<td>�ݾ�</td>
		<td></td>
		<td>����</td>
		<td></td>
		<td>��¥</td>
		
	</tr>


	<c:set var = "i" value = "0"/>
	<c:forEach var ="point" items ="${list }">
		<c:set var="i"  value = "${i+1 }"/>
		<tr>
		<td>${i }</td>
		<td>
				<c:if test="${! empty point.useStatus && point.useStatus=='1'}">�� ��</c:if>
				<c:if test="${! empty point.useStatus && point.useStatus=='2'}">�� ��</c:if>
			</td>
		<td></td>
		<td>${point.point}</td>
		<td></td>
		<td>
		<c:if test="${! empty point.useDetail && point.useDetail=='1'}">����Ʈ ����</c:if>
		<c:if test="${! empty point.useDetail && point.useDetail=='2'}">ç���� ����</c:if>
		<c:if test="${! empty point.useDetail && point.useDetail=='3'}">ç���� ȯ��</c:if>
		<c:if test="${! empty point.useDetail && point.useDetail=='4'}">ç���� ����</c:if>
		<c:if test="${! empty point.useDetail && point.useDetail=='5'}">�̺�Ʈ ����</c:if>
		<c:if test="${! empty point.useDetail && point.useDetail=='6'}">�̺�Ʈ ����</c:if>
		<c:if test="${! empty point.useDetail && point.useDetail=='7'}">����Ʈ ���</c:if>
		<c:if test="${! empty point.useDetail && point.useDetail=='8'}">�� �� ����</c:if>
		<c:if test="${! empty point.useDetail && point.useDetail=='9'}">��ǰ�� ����</c:if>
		</td>
		<td></td>
		<td>${point.regDate}</td>
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