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
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
		body {
            padding-top : 50px;
        }
    </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		//============= "����"  Event ���� =============
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "button.btn.btn-primary" ).on("click" , function() {
				fncUpdateUser();
			});
		});	
		
		
		//============= "���"  Event ó�� ��  ���� =============
		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a[href='#' ]").on("click" , function() {
				$("form")[0].reset();
			});
		});	
		
		//=============���̵�" ��ȿ��Check  Event ó�� =============
		 $(function() {
			 
			 $("input[name='userEmail']").on("change" , function() {
					
				 var userEmail=$("input[name='userEmail']").val();
			    
				 if(userEmail != "" && (userEmail.indexOf('@') < 1 || userEmail.indexOf('.') == -1) ){
			    	alert("�̸��� ������ �ƴմϴ�.");
			     }
			});
			 
		});	
		
		///////////////////////////////////////////////////////////////////////
		function fncUpdateUser() {
		
						
			$("form").attr("method" , "POST").attr("action" , "/user/updateUser").submit();
		}
		
		
		
		//�޴��� ��ȣ ����
		 $(function(){
			 
		var code2 = "";
		$("#phoneChk").click(function(){
			alert("������ȣ �߼��� �Ϸ�Ǿ����ϴ�.\n�޴������� ������ȣ Ȯ���� ���ֽʽÿ�.");
			var phone = $("#phone").val();
			$.ajax({
		        type:"GET",
		        url:"/user/phoneCheck?phone=" + phone,
		        cache : false,
		        success:function(data){
		        	if(data == "error"){
		        		alert("�޴��� ��ȣ�� �ùٸ��� �ʽ��ϴ�.")
						$(".successPhoneChk").text("��ȿ�� ��ȣ�� �Է����ּ���.");
						$(".successPhoneChk").css("color","red");
						$("#phone").attr("autofocus",true);
		        	}else{	        		
		        		$("#phone2").attr("disabled",false);
		        		$("#phoneChk2").css("display","inline-block");
		        		$(".successPhoneChk").text("������ȣ�� �Է��� �� ���������� �����ֽʽÿ�.");
		        		$(".successPhoneChk").css("color","green");
		        		$("#phone").attr("readonly",true);
		        		code2 = data;
		        	}
		        }
		    });
		});

		//�޴��� ������ȣ ����
		$("#phoneChk2").click(function(){
			if($("#phone2").val() == code2){
				$(".successPhoneChk").text("������ȣ�� ��ġ�մϴ�.");
				$(".successPhoneChk").css("color","green");
				$("#phoneDoubleChk").val("true");
				$("#phone2").attr("disabled",true);
			}else{
				$(".successPhoneChk").text("������ȣ�� ��ġ���� �ʽ��ϴ�. Ȯ�����ֽñ� �ٶ��ϴ�.");
				$(".successPhoneChk").css("color","red");
				$("#phoneDoubleChk").val("false");
				$(this).attr("autofocus",true);
			}
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
	
		<div class="page-header text-center">
	       <h3 class=" text-info">ȸ����������</h3>
	       <h5 class="text-muted">�� ������ <strong class="text-danger">�ֽ������� ����</strong>�� �ּ���.</h5>
	    </div>
	    
	    <!-- form Start /////////////////////////////////////-->
		<form name="detailForm"  class="form-horizontal" encType="multipart/form-data" >
		
		  <div class="form-group">
		    <label for="userEmail" class="col-sm-offset-1 col-sm-3 control-label">�� �� ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="userEmail" name="userEmail" value="${user.userEmail }" placeholder="�ߺ�Ȯ���ϼ���"  readonly>
		       <span id="helpBlock" class="help-block">
		      	<strong class="text-danger">���̵�� �����Ұ�</strong>
		      </span>
		    </div>
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="nick" class="col-sm-offset-1 col-sm-3 control-label">�г���</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="nick" name="nick" value="${user.nick}" placeholder="����г���">
		    </div>
		  </div>
		  
		    <div class="form-group">
		    <label for="intro" class="col-sm-offset-1 col-sm-3 control-label">�ڱ�Ұ�</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="intro" name="intro" value="${user.intro}" placeholder="�ڱ�Ұ��� �Է����ּ���">
		    </div>
		  </div>
		  
		  	<div class="form-group">
	   		 <label for="profileImg" class="col-sm-offset-1 col-sm-3 control-label"> ������ �̹��� </label>
		 	   <div class="col-sm-4">
		      <input type="file" class="form-control" id="fileInfo" multiple="multiple"  name="fileInfo">
	    		</div>
	    	
		     </div> 
		  
			
		  
		   <tr class="mobileNo">
		<th>
			<label for="phone">�޴��� ��ȣ ����</label>
		</th>
		<td>
			<p>
				<input id="phone" type="text" name="phone" title="��ȭ��ȣ �Է�" required/>
				<span id="phoneChk" class="doubleChk">������ȣ ������</span><br/>
				<input id="phone2" type="text" name="phone2" title="������ȣ �Է�" disabled required/>
				<span id="phoneChk2" class="doubleChk">��������</span>
				<span class="point successPhoneChk">�޴��� ��ȣ �Է��� ������ȣ �����⸦ ���ֽʽÿ�.</span>
				<input type="hidden" id="phoneDoubleChk"/>
			</p>
			<p class="tip">
				������ �޴�����ȣ�� ������ȣ�� ���� ���������� �Ϸ����ּ���. 
			</p>
		</td>
	</tr>
	
	
	
	 <div class="form-group">
		    <label for="categNo" class="col-sm-offset-1 col-sm-3 control-label" >���ɻ�</label>
		    <div class="col-sm-4">
		      <input type="checkbox" id="sports" name="categNo" value="1">
					<label for="sports">�</label>
					<input type="checkbox" id="eatingHabit" name="categNo" value="2">
					<label for="eatingHabit">�Ľ���</label>
					<input type="checkbox" id="studying" name="categNo" value="3">
					<label for="studying">����</label>
					<input type="checkbox" id="hobby" name="categNo" value="4">
					<label for="hobby">���</label>
					<input type="checkbox" id="life" name="categNo" value="5">
					<label for="life">��Ȱ</label>
		    </div>
		  </div>
	

		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >�� &nbsp;��</button>
			  <a class="btn btn-primary btn" href="#" role="button">�� &nbsp;��</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
	    
 	</div>
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
 	
</body>

</html>