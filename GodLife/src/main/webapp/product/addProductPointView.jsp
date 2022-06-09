<%@ page contentType="text/html; charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>

<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<title>��ǰ���</title>


	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	   body {
	   		margin: 100px;
	   }
	
       body > div.container{
        	border: 3px solid #D6CDB7;
            margin-top: 10px;
        }
    </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">


//=====����Code �ּ� ó�� ��  jQuery ���� ======//
function fncAddProduct(){

	//document.detailForm.action='/product/addProduct';
	//document.detailForm.submit();
	
	//���� ���ε带 ���� �Ʒ��� ���� ��///���� �̱���
	//$("form").attr("method", "POST").attr("enctype", "multipart/form-data").attr("action", "/product/addProduct").submit();
	$("form").attr("method", "POST").attr("action", "/product/addProductPoint").submit();

	
}

//============= "���"  Event ó�� ��  ���� =============
$(function() {
	//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
	$("a[href='#' ]").on("click" , function() {
		$("form")[0].reset();
	});
});	
	
	///////////////////////////////////////////////////////////////
	//==> �߰��Ⱥκ� : "���"  Event ó�� ��  ����
	$(function(){
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		//==> 1 �� 3 ��� ���� : $("tagName.className:filter�Լ�") �����.	
		 $( "button.btn.btn-primary" ).on("click" , function() {
				//Debug..
				//alert(  $( "td.ct_btn01:contains('���')" ).html() );
				fncAddProduct();
		});
	});	
	
///////////////////���߿� �ؿ� �κ� �ٲٰ� ���� ��ϰ� ��� �κе� �ٲ�� ��//////////////////////////	

	</script>
</head>

<body>



	<!-- ToolBar Start /////////////////////////////////////-->

   	
    <jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<h1 class="bg-primary text-center">����Ʈ ��ǰ���</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		  
		  <div class="form-group">
		    <label for="productName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="productName" name="productName" placeholder="��ǰ��">
		    </div>
		  </div>

		  <div class="form-group">
		    <label for="productPrice" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="productPrice" name="productPrice" placeholder="��ǰ����"> 
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="productDetail" class="col-sm-offset-1 col-sm-3 control-label">��ǰ������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="productDetail" name="productDetail" placeholder="��ǰ ������">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="productImg" class="col-sm-offset-1 col-sm-3 control-label">��ǰ�̹���</label>
		    <div class="col-sm-4">
		    <input type="text" class="form-control" id="productImg" name="productImg" placeholder="�����̹���">
		    </div>
		  </div>

		  <div class="form-group">
		    <label for="status" class="col-sm-offset-1 col-sm-3 control-label">3�� �־��</label>
		    <div class="col-sm-4">
		    <input type="text" class="form-control" id="status" name="status" placeholder="status">
		    </div>
		  </div>

		
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >�� &nbsp;��</button>
			  <a class="btn btn-primary btn" href="#" role="button">��&nbsp;��</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->
	
</body>

</html>
		
		
							
					
					
					
		