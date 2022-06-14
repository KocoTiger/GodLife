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
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="../javascript/calendar.js"></script>
	<style>
	  body {
            padding-top : 50px;
        }
    
    #search{
    height: 32px;

    }
    
    #condition{
		width: 212px;
		text-align: center;
	}
    
	#resetSearch:focus {
		outline:0;
	}
	#resetSearch:hover{
		background: gray;
		cursor: pointer;
		box-shadow: 0 2px 4px rgba(0,79,255,0.6);
	}
	
	#search:focus {
		outline:0;
	}
	#search:hover{
		background: gray;
		cursor: pointer;
		box-shadow: 0 2px 4px rgba(0,79,255,0.6);
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
<form class="form-inline" name="detailForm">	
	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
		<div class="page-header text-info">
	       <h3>����Ʈ �̿볻�� ���</h3>
	    
	   
	    <!-- table ���� �˻� Start /////////////////////////////////////-->
	    <div class="row">
	    
		    </div>
		    <div class="col-md-6 text-right">
		    </div>
		    <div class="col-md-6 text-right">
		    
			    
			
						  <div class="input-group">
						  <div class="form-group">
						    
						  </div>
						
						  		<div class="form-group">
								    <select class="form-control" id="condition" name="orderCondition" >
										<option value="0" ${search.orderCondition == 0 ? "selected" : "" }>��ü ����</option>
										<option value="1" ${search.orderCondition == 1 ? "selected" : "" }>ç���� ����</option>
										<option value="2" ${search.orderCondition == 2 ? "selected" : "" }>�̺�Ʈ ����</option>
	
									</select>
								 </div>
								  &nbsp;
							  	<div class="form-group">
								    <select class="form-control" id="condition" name="searchCondition" >
								    	<option value="0" ${search.searchCondition == "0" ? "selected" : ""}>���� �ɼ�</option>
										<option value="1" ${search.searchCondition == "1" ? "selected" : ""}>����</option>
										<option value="2" ${search.searchCondition == "2" ? "selected" : ""}>�Һ�</option>
									</select>
									 &nbsp; &nbsp;
									<button class="btn btn-default" id="search">�˻�</button>
									<!-- PageNavigation ���� ������ ���� ������ �κ� -->
				  <input type="hidden" id="currentPage" name="currentPage" value=""/>
								 </div>
								 
				  </div>
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



</div>
</form>
</body>
</html>