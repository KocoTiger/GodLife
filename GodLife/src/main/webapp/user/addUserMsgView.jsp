<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


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
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
       body > div.container{
        	border: 3px solid #D6CDB7;
            margin-top: 10px;
        }
    </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		//============= "����"  Event ���� =============
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "button.btn.btn-primary" ).on("click" , function() {
				fncAddUser();
			});
		});	
		
		
		//============= "���"  Event ó�� ��  ���� =============
		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a[href='#' ]").on("click" , function() {
				$("form")[0].reset();
			});
		});	
	
		
		
		
		function fncAddUser() {
			
			var userEmail=$("input[name='userEmail']").val();
			var pwd=$("input[name='pwd']").val();
			var nick=$("input[name='nick']").val();
			
			
			if(userEmail == null || userEmail.length <1){
				alert("���̵�� �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			if(pwd == null || pwd.length <1){
				alert("�н������  �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			if(nick == null || nick.length <1){
				alert("�г�����  �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
				
			$("form").attr("method" , "POST").attr("action" , "/user/addUser").submit();
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

		
		 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	</script>		
    
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar  navbar-default">
        <div class="container">
        	<a class="navbar-brand" href="/index.jsp">GodLife</a>
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<h1 class="bg-primary text-center">ȸ �� �� ��</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal" form action="/sendMail/id" id="findForm" method="post">
		
 		<div class="form-group">
		    <label for="userEmail" class="col-sm-offset-1 col-sm-3 control-label">���̵�</label>
		    <div class="col-sm-4">
		      <input type="userEmail" class="form-control" id="userEmail" name="userEmail" placeholder="���̵�">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="pwd" class="col-sm-offset-1 col-sm-3 control-label">��й�ȣ</label>
		    <div class="col-sm-4">
		      <input type="pwd" class="form-control" id="pwd" name="pwd" placeholder="��й�ȣ">
		    </div>
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="nick" class="col-sm-offset-1 col-sm-3 control-label">�г���</label>
		    <div class="col-sm-4">
		      <input type="nick" class="form-control" id="nick" name="nick" placeholder="�г���">
		    </div>
		  </div>
		  
		    <div class="form-group">
		    <label for="categNo" class="col-sm-offset-1 col-sm-3 control-label">���ɻ�</label>
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
		  
			  <tr class="mobileNo">
		<th>
			<label for="phone">�޴��� ��ȣ</label>
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
				���� ���� �ÿ��� ����ϰ� �ֽ��ϴ�. ���� ������� �ʽ��ϴ�.(��ȣ�� �Է����ּ���.)
			</p>
		</td>
	</tr>
	
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >����</button>
			  <a class="btn btn-primary btn" href="#" role="button">���</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->
	
</body>

</html>