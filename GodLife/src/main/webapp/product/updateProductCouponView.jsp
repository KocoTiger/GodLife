<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>    

<html>
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
      
   function fncUpdateProduct() {

      $("form").attr("method", "POST").attr("action",
            "/product/updateProductCoupon").submit();
   }
   
   function fncProductCouponImageUpdate() {
	      $("form").attr("enctype", "multipart/form-data").attr("method", "POST").attr("action",
	            "/product/updateProductCouponView").submit();
   }
   
   function fncDeleteProduct() {

	      $("form").attr("method", "POST").attr("action",
	            "/product/deleteProductCoupon").submit();
	}   
   

   //==> ??????????????? : "??????"  Event ??????
   $(function() {
      $("button.btn.btn-primary.update").on("click", function() {
         fncUpdateProduct();
      });
   });

   $(function() {
	  $("button.btn.btn-primary.delete").on("click", function() {
	     fncDeleteProduct();
	   });
	});   
 
   
   ////////?????? ?????????
	 $(function() {
			//==> DOM Object GET 3?????? ?????? ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( ".imageUplaod" ).on("change" , function() {
				fncProductCouponImageUpdate();
				alert(productNo + ": productNo   "+ productImg + ":productImg  " + productName + ":productName");	
			});
		});	
	////////?????? ?????????
   
   
   
   //==> ??????????????? : "??????"  Event ?????? ??? ??????
   $(function() {
      $("a[href='#' ]").on("click", function() {
         $("form")[0].reset();
      });
   });

	
	//============= ?????? ???????????? Event  ?????? =============	
	 $(function() {
		//==> DOM Object GET 3?????? ?????? ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		 $( "button.btn.btn-primary.back" ).on("click" , function() {
			history.go(-1);
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
   <!--  ???????????? div Start /////////////////////////////////////-->
   <div class="container">

      <div class="page-header text-center">
         <h3 class=" text-info">?????? ??????????????????</h3>
         <h5 class="text-muted">
            ?????? ????????? <strong class="text-danger">??????????????? ??????</strong>??? ?????????.
         </h5>
      </div>

      <!-- form Start /////////////////////////////////////-->
      <form class="form-horizontal" encType="multipart/form-data">

         <div class="form-group">
            <label for="productNo" class="col-sm-offset-1 col-sm-3 control-label"></label>
            <div class="col-sm-4">
               <input type="hidden" class="form-control" id="productNo" name="productNo" 
                  value="${product.productNo}">
            </div>
         </div>
<!-- ?????? ????????? ?????? ?????? Start  -->

		 <div class="form-group">
            <label for="productImg" class="col-sm-offset-1 col-sm-3 control-label">???????????????</label>            
            <div class="col-sm-4">
            <img  productNo="${ product.productNo }" width="400" height="400" src="/resources/images/uploadFiles/${product.productImg}" alt="..." 
					onerror="this.src='https://dummyimage.com/280x250/1af0d4/000000.gif'"/>
			    <input type="file" class="form-control" id="imageUpload" multiple="multiple" name="imageUpload">
            </div>
         </div>

<!-- ?????? ????????? ?????? ?????? End  -->
         <div class="form-group">
            <label for="productName" class="col-sm-offset-1 col-sm-3 control-label">??? ??? ???</label>
            <div class="col-sm-4">
               <input type="text" class="form-control" id="productName" name="productName" 
                  value="${product.productName}">
            </div>
         </div>

         <div class="form-group">
            <label for="productPrice" class="col-sm-offset-1 col-sm-3 control-label">??????</label>
            <div class="col-sm-4">
               <input type="number" class="form-control" id="productPrice" name="productPrice"
                  value="${product.productPrice}">
            </div>
         </div>

         <div class="form-group">
            <label for="productDetail" class="col-sm-offset-1 col-sm-3 control-label">??????????????????</label>
            <div class="col-sm-4">
               <textarea cols="50" rows="10" class="form-control" id="productDetail" name="productDetail" 
                  value="${product.productDetail}">${product.productDetail}</textarea>
            </div>
         </div>



		 <div class="form-group">
            <label for="status" class="col-sm-offset-1 col-sm-3 control-label"></label>
            <div class="col-sm-4">
               <input type="hidden" class="form-control" id="status"
                  name="status" value="1">
            </div>
         </div>


         <div class="form-group">
            <div class="col-sm-offset-4  col-sm-4 text-center">
               <button type="button" class="btn btn-primary update">????????????</button>
               <button type="button" class="btn btn-primary delete">??? ???</button>
               <a class="btn btn-primary btn" href="#" role="button">????????????</a>
               <button type="button" class="btn btn-primary back">?????????????????? ????????????</button>          
            </div>
         </div>
      </form>
      <!-- form Start /////////////////////////////////////-->

   </div>
   <!--  ???????????? div Start /////////////////////////////////////-->

</body>

</html>