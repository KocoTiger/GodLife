<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- ToolBar Start /////////////////////////////////////-->
<div class="navbar  navbar-inverse navbar-fixed-top">
	
	<div class="container">
	       
		<a class="navbar-brand" href="/index.jsp">GodLife</a>
		
		<!-- toolBar Button Start //////////////////////// -->
		<div class="navbar-header">
		    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#target">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		    </button>
		</div>
		<!-- toolBar Button End //////////////////////// -->
		
	    <!--  dropdown hover Start -->
		<div 	class="collapse navbar-collapse" id="target" 
	       			data-hover="dropdown" data-animations="fadeInDownNew fadeInRightNew fadeInUpNew fadeInLeftNew">
	         
	         	<!-- Tool Bar �� �پ��ϰ� ����ϸ�.... -->
	             <ul class="nav navbar-nav">
	             
	              <!--  ȸ������ DrowDown -->
	              <li class="dropdown">
	                     <a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
	                         <span >ȸ������</span>
	                         <span class="caret"></span>
	                     </a>
	                     <ul class="dropdown-menu">
	                         <li><a href="#">����������ȸ</a></li>
	                         <li><a href="#">ģ�������ȸ</a></li>
	                          <li><a href="#">������Ʈ�����ȸ</a></li>
	                          <li><a href="#">ģ����û�����ȸ</a></li>
	                         <li><a href="#">�������׸��</a></li>
	                         <li><a href="#">ȸ��������ȸ</a></li>
	                         <li><a href="#">�������װ���</a></li>
	                         <li><a href="#">�������������ȸ</a></li>
	                         <li><a href="#">�����߱޸����ȸ</a></li>
	                      
	                     </ul>
	                 </li>
	                 
	                 <!--  ȸ������ DrowDown -->
	              <li class="dropdown">
	                     <a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
	                         <span >��������</span>
	                         <span class="caret"></span>
	                     </a>
	                     <ul class="dropdown-menu">
	                         <li><a href="#">����������</a></li>
	                         <li><a href="#">�������� �����ȸ</a></li>
	                          <li><a href="#">�������� �����ȸ</a></li>
	                     </ul>
	                 </li>
	                 
	                 
	                 
	              <!-- �ǸŻ�ǰ���� DrowDown  -->
	               <c:if test="${sessionScope.user.role == 'admin'}">
		              <li class="dropdown">
		                     <a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
		                         <span >�ǸŰ���</span>
		                         <span class="caret"></span>
		                     </a>
		                     <ul class="dropdown-menu">
		                         <li><a href="#">�ǸŻ�ǰ���</a></li>
		                         <li><a href="#">�ǸŻ�ǰ����</a></li>
		                         <li><a href="#">�ǸŸ����ȸ</a></li>
		                     </ul>
		                </li>
	                 </c:if>

	              <!-- �������� DrowDown  -->
		              <li class="dropdown">
		                     <a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
		                         <span >��������</span>
		                         <span class="caret"></span>
		                     </a>
		                     <ul class="dropdown-menu">
		                         <li><a href="#">������ü���</a></li>
		                         <li><a href="#">��������ü���</a></li>
		                     </ul>
		                </li>
		                
	              <!-- ��ǰ���� DrowDown  -->
		              <li class="dropdown">
		                     <a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
		                         <span >��ǰ����</span>
		                         <span class="caret"></span>
		                     </a>
		                     <ul class="dropdown-menu">
	                         <li><a href="#">������ǰ��ü���</a></li>
	                         <li><a href="#">��ǰ�ǻ�ǰ��ü���</a></li>
	                         <li><a href="#">����Ʈ��ǰ��ü���</a></li>
		                     </ul>
		                </li>
	                 
	              <!-- ���Ű��� DrowDown -->
	              <li class="dropdown">
	                     <a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
	                         <span >��ǰ����</span>
	                         <span class="caret"></span>
	                     </a>
	                     <ul class="dropdown-menu">
	                         <li><a href="#">�� ǰ �� ��</a></li>
	                         
	                         <c:if test="${sessionScope.user.role == 'user'}">
	                           <li><a href="#">�����̷���ȸ</a></li>
	                         </c:if>
	                         
	                         <li><a href="#">�ֱ� �� ��ǰ</a></li>
	                     </ul>
	                 </li>
	              <li class="dropdown">
	                     <a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
	                         <span >Point</span>
	                         <span class="caret"></span>
	                     </a>
	                     <ul class="dropdown-menu">
	                         <li><a href="#">����ϱ�</a></li>
	                         <li><a href="#">��γ���</a></li>
	                         <li><a href="#">����Ʈ�̿볻��</a></li>
	         				 <li><a href="#">��ǰ�Ǳ��ų���</a></li>
	                     </ul>
	                 </li>
	             </ul>
	             
	             <ul class="nav navbar-nav navbar-right">
	                <li><a href="#">�α׾ƿ�</a></li>
	            </ul>
	            
	             <ul class="nav navbar-nav navbar-right">
	                <li><a href="#" id="addChallengeTos">ç���� ���</a></li>
	                <li class="dropdown">
	                     <a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
	                         <span >ç����</span>
	                         <span class="caret"></span>
	                     </a>
	                     <ul class="dropdown-menu">
	                         <li><a href="#" id="listChallenge">ç���� ���</a></li>
	                         <li><a href="#" id="listChallengeAdd">����� ç���� ���</a></li>
	                         <li><a href="#" id="listChallengeJoin">������ ç���� ���</a></li>
	         				 <li><a href="#" id="listChallengePick">���� ç���� ���</a></li>
	                     </ul>
	                 </li>
	            </ul>
	            
		</div>
		<!-- dropdown hover END -->	       
	    
	</div>
</div>
		<!-- ToolBar End /////////////////////////////////////-->
 	
   	
   	
   	<script type="text/javascript">
	
		//============= logout Event  ó�� =============	
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		 	$("a:contains('�α׾ƿ�')").on("click" , function() {
				$(self.location).attr("href","/user/logout");
				//self.location = "/user/logout"
			}); 
		 });
		
		//============= ȸ��������ȸ Event  ó�� =============	
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		 	$("a:contains('ȸ��������ȸ')").on("click" , function() {
				//$(self.location).attr("href","/user/logout");
				self.location = "/user/listUser"
			}); 
		 });
		
		//=============  ����������ȸ Event  ó�� =============	
	 	$( "a:contains('����������ȸ')" ).on("click" , function() {
	 		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(self.location).attr("href","/user/getUser?userEmail=${sessionScope.user.userEmail}");
		});
		
		//=============  ģ�������ȸ Event  ó�� =============	
	 	$( "a:contains('ģ�������ȸ')" ).on("click" , function() {
	 		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(self.location).attr("href","/user/listFriend?userEmail=${sessionScope.user.userEmail}");
		});
		
	 	//=============  ������Ʈ�����ȸ Event  ó�� =============	
	 	$( "a:contains('������Ʈ�����ȸ')" ).on("click" , function() {
	 		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(self.location).attr("href","/user/listBlack?userEmail=${sessionScope.user.userEmail}");
		});
	 	
	 	//=============  ģ����û�����ȸ Event  ó�� =============	
	 	$( "a:contains('ģ����û�����ȸ')" ).on("click" , function() {
	 		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(self.location).attr("href","/user/listFriendRequest");
		});
	 	
	 	
		//=============  ���������� Event  ó�� =============	
	 	$( "a:contains('����������')" ).on("click" , function() {
	 		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(self.location).attr("href","/user/add?");
		});
		
	 	//=============  �������� �����ȸ Event  ó�� =============	
	 	$( "a:contains('�������� �����ȸ')" ).on("click" , function() {
	 		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$(self.location).attr("href","/user/listUserRecvMsg?recvEmail=${sessionScope.user.userEmail}");
		});
			
		
	 	
	 	
	 	
	 	
	 	
	 	
	 	
	 	
	 	
	 	
		
	 	 $(function() {
	 		//=============  �ǸŻ�ǰ��� Event  ó�� =============
		 	$("a:contains('�ǸŻ�ǰ���')").on("click" , function() {
				self.location = "/product/addProductView.jsp"
			}); 			 		
		 });
	 	 
	 	$(function() {
	 	//=============  �ǸŻ�ǰ���� Event  ó�� =============
		 	$("a:contains('�ǸŻ�ǰ����')").on("click" , function() {
				self.location = "/product/listProduct?menu=manage"
			}); 
	 	 });
	 	
	 	$(function() {
		//=============  �� ǰ �� �� Event  ó�� =============
			$("a:contains('�� ǰ �� ��')").on("click" , function() {
				self.location = "/product/listProduct?menu=search"
			}); 
		});
	 	
	 	$(function() {
		 //=============  �ǸŸ����ȸ Event  ó�� =============
		 	$("a:contains('�ǸŸ����ȸ')").on("click" , function() {
				self.location = "/purchase/listSale?menu=manage"
			}); 
		});
	 	
	 	$(function() {
		//=============  �����̷���ȸ Event  ó�� =============
		 	$("a:contains('�����̷���ȸ')").on("click" , function() {
				self.location = "/purchase/listPurchase"
			}); 
		});
	 	
	 	$(function() {
		 	$("a:contains('�������װ���')").on("click" , function() {
		 		self.location = "/operator/getOperatorNoticeFaqs"
			}); 
		});
	 	
	 	$(function() {
		 	$("a:contains('�������׸��')").on("click" , function() {
		 		self.location = "/operator/listOperatorNoticeFaqs"
			}); 
		});
///////////////////////////////////////////////////////////////	 	
	 	$(function() {
		 	$("a:contains('������ǰ��ü���')").on("click" , function() {
		 		self.location = "/product/getProductCouponList"
			}); 
		});
		
	
	 	$(function() {
		 	$("a:contains('��ǰ�ǻ�ǰ��ü���')").on("click" , function() {
		 		self.location = "/product/getProductVoucherList"
			}); 
		});
	 	
	 	$(function() {
		 	$("a:contains('����Ʈ��ǰ��ü���')").on("click" , function() {
		 		self.location = "/product/getProductPointList"
			}); 
		});
///////////
	 	$(function() {
		 	$("a:contains('������ü���')").on("click" , function() {
		 		self.location = "/badge/getBadgeList"
			}); 
		});	 	
///////////////////////////////////////////////////////////////	 	 	 	
		$(function() {
		 	$("a:contains('�����߱�')").on("click" , function() {
		 		self.location = "/coupon/addCouponView"
			}); 
		});
		
		$(function() {
		 	$("a:contains('�������������ȸ')").on("click" , function() {
		 		self.location = "/coupon/listCoupon"
			}); 
		});
		
		$(function() {
		 	$("a:contains('�����߱޸����ȸ')").on("click" , function() {
		 		self.location = "/coupon/listIssuedCoupon"
			}); 
		});
	 	
	 	$( "a:contains('�ֱ� �� ��ǰ')" ).bind("click" , function() {
	 		popWin = window.open("/history.jsp", "popWin",
	 		"left=300, top=200, width=300, height=200, marginwidth=0, marginheight=0, scrollbars=no, scrolling=no, menubar=no, resizable=no");
		});
	 	$(function() {
		 	$("a:contains('����ϱ�')").on("click" , function() {
		 		self.location = "/point/addPointDonationView"
			}); 
		});
	 	$(function() {
		 	$("a:contains('��γ���')").on("click" , function() {
		 		self.location = "/point/getPointPurchaseDonationList"
			}); 
		});
	 	$(function() {
		 	$("a:contains('����Ʈ�̿볻��')").on("click" , function() {
		 		self.location = "/point/getPointPurchaseList"
			}); 
		});
	 	$(function() {
		 	$("a:contains('��ǰ�Ǳ��ų���')").on("click" , function() {
		 		self.location = "/point/getPointPurchaseVoucherList"
			}); 
		});
		
	 	$(function(){
	 		$("a#addChallengeTos").on("click",function(){
	 			self.location = "/challenge/addChallengeTos.jsp"
	 		});
	 		
	 		$("a#listChallenge").on("click",function(){
	 			self.location = "/challenge/listChallenge" //�׽�Ʈ
	 		});
	 		
	 		$("a#listChallengeAdd").on("click",function(){
	 			self.location = "/challenge/listChallenge?challengeListOpt=add";
	 		});
	 		
	 		$("a#listChallengeJoin").on("click",function(){
	 			self.location = "/challenge/listChallenge?challengeListOpt=join";
	 		});
	 		
	 		$("a#listChallengePick").on("click",function(){
	 			self.location = "/challenge/listChallenge?challengeListOpt=pick";
	 		});
	 		
	 	});
		
	</script>  