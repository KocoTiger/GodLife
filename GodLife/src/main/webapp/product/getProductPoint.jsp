<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="UTF-8">
	
<!--   jQuery , Bootstrap CDN  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/resources/css/animate.min.css" rel="stylesheet">
   <link href="/resources/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   <link rel="stylesheet" href="/resources/css/toolbar2.css" />
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/resources/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	body{
		font-weight : 600;
	}	
        
		textarea {
		    width: 100%;
		    height: 6.25em;
		    border: none;
		    resize: none;
		  }        
        
        
        
     </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
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
					self.location = "/product/updateProductPointView?productNo=${product.productNo}"
				});
		});

		
		
		
		
	</script>
	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header">
	       <h3 class=" text-info" style="color:#000000; ">포인트상품상세조회</h3>
	    </div>
	    
<!-- 이미지 미리 보기 -->	
		<div class="row">
	  		<div class="col-xs-4 col-md-2 " ><strong>상품이미지</strong></div>
			<img  productNo="${ product.productNo }" width="400" height="400" src="/resources/images/uploadFiles/${product.productImg}" alt="..." 
					onerror="this.src='https://dummyimage.com/280x250/1af0d4/000000.gif'"/>
		<hr/>
<!-- 이미지 미리 보기 -->
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>상품번호</strong></div>
			<div class="col-xs-8 col-md-4">${product.productNo}</div>
		</div>
		<br>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 "><strong>상품명</strong></div>
			<div class="col-xs-8 col-md-4">${product.productName}</div>
			
			<div class="col-xs-4 col-md-2 "><strong>상품가격</strong></div>
			<div class="col-xs-8 col-md-4">${product.productPrice}</div>
		</div>
		<br>

		
		<div class="row">
	  		<div class="col-xs-4 col-md-2 " ><strong>상품상세정보</strong></div>
			<div class="col-xs-8 col-md-4">
				<textarea cols="50" rows="10" readonly="readOnly" placeholder="Disabled" >${product.productDetail}</textarea>
			</div>
		</div>
		
		


		<div class="row">
	  		<div class="col-xs-4 col-md-2 "></div>
			<div class="col-xs-8 col-md-4"></div>
			<input type="hidden" class="form-control" id="status" name="status" value="3">
		</div>

		
		<hr/>
		
		
		<div class="form-group">
			<div class="row">
		  		<div class="col-md-12 text-center ">
		  			<button type="button" class="btn btn-primary update">수정</button>
		  			<button type="button" class="btn btn-primary getList">리스트로 돌아가기</button>
		  		</div>
			</div>		
		</div>


		
		<br/>
		
 		</div>
 	</div>
 	<!--  화면구성 div Start /////////////////////////////////////-->

</body>

</html>