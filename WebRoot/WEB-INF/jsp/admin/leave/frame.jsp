<%@ page language="java" pageEncoding= "UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/taglibs.jsp"%>
<link rel="StyleSheet" href="${ctx }/resource/admin/css/mobile_main.css" type="text/css" />
<html>
	<body class= "mobile">
		<form id= "form1" name="form1" method="post" action= "list.html"
			target= "query">
<input type="hidden" value="${param.flag }" name="flag"/>
			<table class= "mobile">
				<tr class= "pageheader" height="6%">
					<td colspan= "2">
						晚归请假审批管理
					</td>
				</tr>
				<tr class= "pagesearch" height="5%">
					<td style= "text-align: left;">
						&nbsp;&nbsp;
						姓名模糊查询：
						<input type= "text" name= "studentName" style= "width:100px;">
						&nbsp;&nbsp;
						电话模糊查询：
						<input type= "text" name= "phone" style= "width:100px;">
						&nbsp;&nbsp;
						地址模糊查询：
						<input type= "text" name= "address" style= "width:100px;">
						<input type= "button" class= "btn" value= "查 询 " onClick= "sch();" />
						&nbsp;&nbsp;
						<c:choose>
							<c:when test="${param.flag==1 }"></c:when>
							<c:when test="${param.flag==2 }"></c:when>
							<c:when test="${param.flag==3 }"></c:when>
							<c:otherwise>
							
							</c:otherwise>
						</c:choose>
<c:if test="${1==1 }"></c:if>
					</td>
				</tr>
			</table>
			<iframe id= "query" name= "query" frameborder= "0" height= "88%"
				width= "100%" scrolling= "yes"></iframe>
		</form>
		<script>
		sch();
		function sch() {
			form1.action= "list.html";
			form1.submit();
		}
		function keylog() {
			if(window.event.keyCode == 13){
				sch();
			}
		}

		function add(){
			MyWindow.OpenCenterWindow('edit.html?flag=${param.flag}','addOld',800,800);
		}
   </script>
	</body>
</html>
