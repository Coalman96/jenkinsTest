<%@ page contentType="text/html; charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>Model2 MVC Shop</title>

<link href="/css/left.css" rel="stylesheet" type="text/css">
	<!-- CDN(Content Delivery Network) ȣ��Ʈ ��� -->
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
	
		 $(function() {

		 	$( ".Depth03:contains('����������ȸ')" ).on("click" , function() {

				$(window.parent.frames["rightFrame"].document.location).attr("href","/user/getUser?userId=${user.userId}");
			});
			
		 	$( ".Depth03:contains('ȸ��������ȸ')" ).on("click" , function() {
				//json
				//$(window.parent.frames["rightFrame"].document.location).attr("href","/user/json/listUser");
		 		$(window.parent.frames["rightFrame"].document.location).attr("href","/user/listUser");
			}); 
		 	
		 	$( ".Depth03:contains('�ǸŻ�ǰ���')" ).on("click" , function() {

		 		$(window.parent.frames["rightFrame"].document.location).attr("href","../product/addProductView.jsp");
			});
		 	
		 	$( ".Depth03:contains('�ǸŻ�ǰ����')" ).on("click" , function() {

		 		$(window.parent.frames["rightFrame"].document.location).attr("href","/product/listProduct?menu=manage");
			}); 
		 	
		 	$( ".Depth03:contains('��ǰ�˻�')" ).on("click" , function() {

		 		$(window.parent.frames["rightFrame"].document.location).attr("href","/product/listProduct?menu=search");
			});
		 	
		 	$( ".Depth03:contains('�����̷���ȸ')" ).on("click" , function() {

		 		$(window.parent.frames["rightFrame"].document.location).attr("href","/purchase/listPurchase?menu=search");
			}); 
		 	
		 	$( ".Depth03:contains('��۰���')" ).on("click" , function() {

		 		$(window.parent.frames["rightFrame"].document.location).attr("href","/purchase/listPurchase?menu=manage");
			});
		 	
		 	$( ".Depth03:contains('�ֱٺ���ǰ')" ).on("click" , function() {

		 		history()
		 		
			}); 
		 	
			function history(){
				popWin = window.open("/history.jsp",
															"popWin",
															"left=300, top=200, width=300, height=200, marginwidth=0, marginheight=0, scrollbars=no, scrolling=no, menubar=no, resizable=no");
			}
		});	
		 
	</script>
</head>

<body background="/images/left/imgLeftBg.gif" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"  >

<table width="159" border="0" cellspacing="0" cellpadding="0">

<!--menu 01 line-->
<tr>
	<td valign="top"> 
		<table  border="0" cellspacing="0" cellpadding="0" width="159" >	
			<tr>
				<c:if test="${ !empty user }">
					<tr>
						<td class="Depth03">
							<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
							<a href="/getUser.do?userId=${user.userId}" target="rightFrame">����������ȸ</a>
							////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
							����������ȸ
						</td>
					</tr>
				</c:if>
			
				<c:if test="${user.role == 'admin'}">
					<tr>
						<td class="Depth03" >
							<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
							<a href="/listUser.do" target="rightFrame">ȸ��������ȸ</a>
							////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
							ȸ��������ȸ
						</td>
					</tr>
				</c:if>
			
				<tr>
					<td class="DepthEnd">&nbsp;</td>
				</tr>
		</table>
	</td>
</tr>

<!--menu 02 line-->
<c:if test="${user.role == 'admin'}">
	<tr>
		<td valign="top"> 
			<table  border="0" cellspacing="0" cellpadding="0" width="159">
				<tr>
					<td class="Depth03">
					<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
							<a href="../product/addProductView.jsp;" target="rightFrame">�ǸŻ�ǰ���</a>
							////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
						�ǸŻ�ǰ���
					</td>
				</tr>
				<tr>
					<td class="Depth03">
					<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
							<a href="/product/listProduct?menu=manage"  target="rightFrame">�ǸŻ�ǰ����</a>
							////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
						�ǸŻ�ǰ����
					</td>
				</tr>
				<tr>
					<td class="DepthEnd">&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
</c:if>

<!--menu 03 line-->
<tr>
	<td valign="top"> 
		<table  border="0" cellspacing="0" cellpadding="0" width="159">
			<tr>
				<td class="Depth03">
				<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					<a href="/product/listProduct?menu=search" target="rightFrame">��ǰ�˻�</a>
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
					��ǰ�˻�
				</td>
			</tr>
			
			<c:if test="${user.role eq 'user'}">
			<tr>
				<td class="Depth03">
				<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					<a href="/purchase/listPurchase.do?menu=search"  target="rightFrame">�����̷���ȸ</a>
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
					�����̷���ȸ
				</td>
			</tr>
			</c:if>
			<c:if test="${user.role eq 'admin'}">
			<tr>
				<td class="Depth03">
					��۰���
				</td>
			</tr>
			</c:if>
			
			<tr>
				<td class="DepthEnd">&nbsp;</td>
			</tr>
			<tr>
			<td class="Depth03">�ֱٺ���ǰ</td>
			</tr>
		</table>
	</td>
</tr>

</table>

</body>
</html>