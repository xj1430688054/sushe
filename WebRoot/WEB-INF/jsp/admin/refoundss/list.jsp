<%@page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@include file="/taglibs.jsp"%>
<%@taglib uri="http://displaytag.sf.net/el" prefix="display"%>
<style type="text/css">
@import url("${ctx}/resource/admin/displaytag/zdisplaytag.css");
@import url("${ctx}/resource/admin/displaytag/alternative.css");
</style>
<html>
	<body>
		<display:table name="list"
			requestURI="list.html" class="list"
			id="row" cellspacing="0" cellpadding="0" pagesize="5">
			<display:column style="width:60px;" media="html" title="编号">
				<c:out value="${row_rowNum}"/>
			</display:column>
			<display:column title="姓名" property="studentName"/>
			<display:column title="电话" property="phone"/>
			<display:column title="年龄" property="age"/>
			<display:column title="性别" property="sex"/>
			<display:column title="地址" property="address"/>
			<display:column title="班级" property="bjName"/>
			<display:column title="宿舍" property="ssName"/>
			<display:column title="宿舍状态" property="ssstatus"/>
			
			
			<display:column title="退宿审批" style="width:40px;">
			<c:if test="${row.ssstatus=='未审批'  }">
				<img src="${ctx}/resource/admin/images/pencil.png"
					onclick="return modifyOne('${row.id}','modify');" style="cursor:hand;"/>
			</c:if>
			</display:column>

		<c:if test="${1==1 }">
		</c:if>
		</display:table>
	</body>
	
	<script type="text/javascript">
	
		//更新字段内容
	function updateColumnsex(sex,id){
		if(!confirm("确定要更新为"+sex+"吗?")){
			return false;
		}
		//var aaa = prompt("请输入操作意见或说明：","");
		var params={id:id,sex:sex};
		$.post("updateColumnsex.html",params,function(
				result){
			result=eval("("+result+")");
			if(result.status=="true"||result.status==true){
				alert('成功');
			window.parent.form1.submit();
			}
		});
	}
		//更新字段内容
	function updateColumnbjId(bjId,id){
		if(!confirm("确定要更新为"+bjId+"吗?")){
			return false;
		}
		//var aaa = prompt("请输入操作意见或说明：","");
		var params={id:id,bjId:bjId};
		$.post("updateColumnbjId.html",params,function(
				result){
			result=eval("("+result+")");
			if(result.status=="true"||result.status==true){
				alert('成功');
			window.parent.form1.submit();
			}
		});
	}
		//更新字段内容
	function updateColumnssId(ssId,id){
		if(!confirm("确定要更新为"+ssId+"吗?")){
			return false;
		}
		//var aaa = prompt("请输入操作意见或说明：","");
		var params={id:id,ssId:ssId};
		$.post("updateColumnssId.html",params,function(
				result){
			result=eval("("+result+")");
			if(result.status=="true"||result.status==true){
				alert('成功');
			window.parent.form1.submit();
			}
		});
	}
	//删除确定
	function deleteOne(id){
		if(!confirm("确定要删除吗?")){
			return false;
		}
  //var aaa = prompt("请输入操作意见或说明：","");
		var params={id:id};
		$.post("editDelete.html",params,function(
				result){
			result=eval("("+result+")");
			if(result.status=="true"||result.status==true){
				alert('成功');
			window.parent.form1.submit();
			}
		});
	}
	//修改信息
	function modifyOne(id,method){
			MyWindow.OpenCenterWindow('edit.html?id='+id+'&flag=${param.flag}&method='+method,'modify',800,800);
	}
</script>
</html>
