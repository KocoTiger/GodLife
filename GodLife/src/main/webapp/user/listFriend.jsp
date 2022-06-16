<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
      <link href="../css/kfonts2.css" rel="stylesheet">
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
   
   <!-- jQuery UI toolTip ��� CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip ��� JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  
  <!-- ��ܹٻ��� -->
	<jsp:include page="/layout/toolbar.jsp" />
	<!-- ���� ���̾ƿ� ����-->
	<jsp:include page="/user/mypageMain.jsp" />
	
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	 
        h2{
                font-size: 2.3rem;
                padding-right: 100px;
            }
            
            #head_aticle{
            padding-top : 80px;
            }
            
            #container{
            padding-left: 250px;
            }
            
            #caption{
            font-size: 15px;
            }
            
            h3{
            font-size: 15px;
            }
            
           #writeBtn1{
           border: 1px solid #064acb;
	      background-color: #064acb;
	      color: #fff;
	      WIDTH: 60pt;
	      HEIGHT: 30pt;
	      margin-left: 380px;
           }
           
            
            
    </style>
    
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		//=============    �˻� / page �ΰ��� ��� ���  Event  ó�� =============	
		function fncGetList(currentPage) {
			$("#currentPage").val(currentPage)
			$("form").attr("method" , "POST").attr("action" , "/user/listFriend?userEmail=${user.userEmail}").submit();
		}
		
		//============= "�˻�"  Event  ó�� =============	
		 $(function() {
			 //==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "button.btn.btn-default" ).on("click" , function() {
			fncGetList(1);
			});
		 });
		
		//============= "ģ�� ���� ��ư"  Event  ó�� =============	
	   $(function() {
			 //==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "#writeBtn1" ).on("click" , function() {
				self.location ="/user/deleteFriend?userEmail=${user.userEmail}"
			});
		 });
		
		 
	</script>
	
</head>

<body>
	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	
	<div class="container" id="container" >
	
		<div class="head_aticle" align="center" id = "head_aticle">
	      <h2 class="tit" style="color: #333;">���� ģ�� �����ȸ</h2>
	    </div>
	    
	    <!-- table ���� �˻� Start /////////////////////////////////////-->
	    <div class="row" id="myFollowForm" >
	    
		    <div class="col-md-6 text-left">
		    	<p class="text-secondary" >
		    		��ü  ${resultPage.totalCount } �Ǽ�, ���� ${resultPage.currentPage}  ������
		    	</p>
		    </div>
		    
		    <div class="col-md-6 text-right">
			    <form class="form-inline" name="detailForm" >
			    
				  <div class="form-group">
				    <select class="form-control" name="searchCondition" >
						<option value="0"  ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>�г���</option>
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
		
		<!-- table ���� �˻� Start /////////////////////////////////////-->
		
      <!--  table Start /////////////////////////////////////-->
      		<br></br>
      		
      		
      		 <c:set var="i" value="0" />
	   <c:forEach var="user" items="${list}">
		<c:set var="i" value="${ i+1 }" />
		
		<div class="col-sm-3 col-md-3 "  id= "md3">
      
      <div class="thumbnail"  style="height: 300px;">
       <img class="img-responsive" src="/images/uploadFiles/${user.profileImg }"  onerror="this.onerror=null; this.src='https://via.placeholder.com/240X200?text=No Image';" style= "width:200; height:200px;" > 
     
         <div class="caption"  id = "rego">
           <h3>�г���  :${user.nick}</h3>
          <a  href="/user/getUserTarget?userEmail=${user.userEmail}"> ${user.userEmail}</a>
            
            <input type="hidden" value="${user.userEmail}" >
            </div>
            
      </div>
    </div>
    
	</c:forEach>	

</div>

	</div>
	
	<!--  <button type="button" class="btn active btn_join" id="writeBtn1">���û���</button>-->
		
		
 	
 	<!-- PageNavigation Start... -->
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<!-- PageNavigation End... -->
	
	
	
</body>

</html>