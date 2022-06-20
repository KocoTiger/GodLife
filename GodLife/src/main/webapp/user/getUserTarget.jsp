<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	
	
<!-- CSS-->
<link rel="stylesheet" href="/css/getUser.css" />

<style>

body {
           padding-top : 50px;
           padding-right: :5px;
       }
       
  #getUser{
       padding-top : 130px;
       }
        
img
{
border : 5px solid white;
width : 200px;
height : 200px;
float : center;
}

#writeBtn, #writeBtn1, #writeBtn2, #myBtn{
width : 140px;
height : 40px;
}

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 40%; /* Could be more or less, depending on screen size */                          
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

</style>

<!-- 상단바삽입 -->
	<jsp:include page="/layout/toolbar.jsp" />
	<!-- 왼쪽 레이아웃 삽입-->
	<jsp:include page="/user/mypageMain.jsp" />


<script type="text/javascript">


//====================친구 등록 중복방지... 에이작스 안쓰고 컨트롤러에서 다 처리해버림 블랙리스트 중복방지도 컨트롤러에서 처리예정 =========================
/*
	  //var targetEmail = $('#userEmail').val();
	$( "#writeBtn" ).on("click" , function() {
	        
	        $.ajax({
	        	 url: "/user/json/checkFriend", //Controller에서 요청 받을 주소
	        	 method:"POST", //POST 방식으로 전달
	        	 data:{targetEmail:targetEmail},
	        	 
	        	 success:function(cnt){//컨트롤러에서 넘어온 cnt값을 받는다 
	                if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 친구등록 가능한 사이 
	                	$("form").attr("method" , "POST").attr("action" , "/user/addFriend?targetEmail=${user.userEmail}").submit();
	                	alert("친구 등록이 완료되었습니다.");
	                }
	                 else { // cnt가 1일 경우 -> 이미 친구사이 
	                    alert("이미 친구로 등록된 상태입니다.");
	                 return
	                }
	            },
	            error:function(){
	                alert("에러입니다");
	            }
	        })
	})*/
	

//====================친구 등록 =========================
$(function() {
	//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
	$( "#writeBtn" ).on("click" , function() {
		$("form").attr("method" , "POST").attr("action" , "/user/addFriend?targetEmail=${user.userEmail}").submit();
	});
});	


//====================블랙리스트 등록 =========================
$(function() {
	//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
	$( "#writeBtn1" ).on("click" , function() {
		$("form").attr("method" , "POST").attr("action" , "/user/addBlack?targetEmail=${user.userEmail}").submit();
	});
});	

//===================쪽지 보내기 모달 =========================
	$(function() {
		
	        // Get the modal
        var modal = document.getElementById('myModal');
 
        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");
 
        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];                                          
 
        // When the user clicks on the button, open the modal 
        btn.onclick = function() {
            modal.style.display = "block";
        }
 
        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        }
 
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

	});	
	
	
	
	   //==>"받는사람 이메일" 있는지 없는지 검사 
	
	function checkUserEmail(){
     var userEmail = $('#recvEmail').val(); //id값이 "id"인 입력란의 값을 저장
     
     $.ajax({
     	 url: '/user/json/checkUserEmail', //Controller에서 요청 받을 주소
         type:'post', //POST 방식으로 전달
         data:{userEmail:userEmail},
    
         success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
             if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 디비에 없으니까 보낼수없는 이메일  
                 $('.id_ok').css("display","inline-block"); 
                 $('.id_already').css("display", "none");
                 //alert("해당 이메일은 존재하지 않습니다.");
             } else { // cnt가 1일 경우 -> 이미 존재하는 이메일이니까 보낼수있음
                 $('.id_already').css("display","inline-block");
                 $('.id_ok').css("display", "none");
                 //alert("이메일을 다시 입력해주세요");
             }
         },
         error:function(){
             alert("에러입니다");
         }
     });
     };
	
	
		//============= "쪽지보내기"  Event 연결 =============
	 $(function() {
		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$( "#writeBtn" ).on("click" , function() {
			fncAddUserMsg();
		});
	});	
	
	function fncAddUserMsg() {
		
		var recvEmail=$("input[name='recvEmail']").val();
		var name=$("input[name='title']").val();
		
		if(recvEmail == null || recvEmail.length <1){
			alert("이메일은  반드시 입력하셔야 합니다.");
			return;
		}
		
		if(name == null || name.length <1){
			alert("제목은  반드시 입력하셔야 합니다.");
			return;
		}
		
		
		$("form").attr("method" , "POST").attr("action" , "/user/addUserMsg").submit();
		alert("전송이 완료되었습니다")
	}
	
	
	//============= "내용 글자수 검사" =============
		
	$(document).ready(function() {
 $('#detail').on('keyup', function() {
     $('#test_cnt').html("("+$(this).val().length+" / 1000)");

     if($(this).val().length > 1000) {
         $(this).val($(this).val().substring(0, 1000));
         $('#test_cnt').html("(1000 / 1000)");
     }
 });
});
	
	//============= "제목 글자 수 검사" =============
	
	$(document).ready(function() {
 $('#title').on('keyup', function() {
     $('#test_cnt1').html("("+$(this).val().length+" / 50)");

     if($(this).val().length > 50) {
         $(this).val($(this).val().substring(0, 50));
         $('#test_cnt1').html("(50 / 50)");
     }
 });
});
	
	


	</script>

<title>유저 상세정보 조회</title>
</head>
<body>
	<div class="page_aticle">
		<div class="type_form getUser" id="getUser">
			<form id="form" name="frmMember">
				<div class="field_head">
					<h3 class="tit">유저 상세정보 조회</h3>
				</div>
				
				<table class="tbl_comm">
				
				
				<tr class="profileImg">
						<th>프로필이미지</th>
						<td>
								<img src="/images/uploadFiles/${user.profileImg} " onerror="this.onerror=null; this.src='https://via.placeholder.com/240X200?text=No Image';" > 
						</td>
					</tr>
				
					<tr class="userEmail">
						<th>이메일</th>
						<td>
							<input type="text" name="userEmail" id="userEmail" required="" fld_esssential="" option="regId" label="아이디" placeholder="${user.userEmail}" readonly/>
						</td>
					</tr>
					<tr>
					
					<tr class="nick">
						<th>닉네임</th>
						<td>
							<input type="text" name="nick" id="nick" value="" required="" fld_esssential="" label="닉네임" placeholder="${user.nick}" readonly/>
						</td>
					</tr>
					
					
					<tr class="categNo">
						<th>관심사</th>
						<td>
								<input type="text" value=""  name="categNo" id="categNo" placeholder="${user.categName}"  readonly/>
						</td>
					</tr>
					
					<tr class="intro">
						<th>자기소개</th>
						<td>
							<textarea id = "intro" name="intro" cols="30" rows="10" placeholder="${user.intro}"  readonly/></textarea>
						</td>
					</tr>
					
					<!-- 챌린지랑 배지 관련 넣어야함 -->
					
					
					</table>
	
	
				<div id="formSubmit" class="form_footer">
					<div id="checkDiv" class="checkDiv"></div>
					<button type="button" class="btn active btn_join" id="writeBtn">친구 요청</button>
					<button type="button" class="btn active btn_join" id="writeBtn1">블랙리스트 등록</button>
					  <button type="button" class="btn active btn_join" id="myBtn">쪽지 보내기</button>
					  
					  <!-- 모달 시작 -->
					 
    <!-- The Modal -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content" id="modal-content">
        <span class="close">&times;</span>                                                               
        
        <div class="page_aticle">
		<div class="type_form getUser" id="getUser1">
			<form id="form" name="frmMember" >
			
				<div class="field_head">
					<h3 class="tit">쪽지 보내기</h3>
				</div>
				
				<table class="tbl_comm">
				
				<tr class="fst">
						<th>이메일</th>
						<td>
							<input type="text" class="form-control" id="recvEmail" name="recvEmail" placeholder="이메일" oninput = "checkUserEmail()" >
							<span id="helpBlock" class="id_ok">해당 이메일은 존재하지 않습니다. </span>
			 				 <span id="helpBlock" class="id_already"></span>
						</td>
					</tr>
				
					<tr>
						<th>제목</th>
						<td>
						      <input type="text" class="form-control" id="title" name="title"  style="width :455px; height : 45px;">
						      <div id="test_cnt1" style ="font-size : 13px">(0 / 50)</div>
						  </td>
					</tr>
					
					<tr class="detail">
						<th>내용</th>
						<td>
								<textarea id = "detail" name="detail" cols="50" rows="20"  style="width :455px; height : 327px;"></textarea>
								<div id="test_cnt" style ="font-size : 13px">(0 / 1000)</div>
						</td>
					</tr>
					
					</table>
	
				<div id="formSubmit" class="form_footer">
					<div id="checkDiv" class="checkDiv"></div>
					<button type="button"  class="btn active btn_join" id="writeBtn">전송</button>
				</div>
			</form>
		</div>
	</div>
        
        
      </div>
 
    </div>
    
    
    <!-- 모달끝 -->
					
					
					
					
					
					
					
				</div>
			</form>
		</div>
		
		
	</div>
</body>
</html>