
package com.javawebxx.controller.admin;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javawebxx.controller.MyController;
/**
 * 
 * @author https://www.javabysj.cn    东哥毕设
 * 备注：更多毕业设计代做代写
 * 
 */
/**
*角色
* @author Administratorxxxx
* @date2018-03-27
*/
@Controller("jsController")
@RequestMapping(value = "/admin/js")
public class JsController extends MyController {
	

/**
* 查询frame
*/
	@RequestMapping(value = "/frame")
	public String frame(Model model, HttpServletRequest request,String flag)throws Exception {
		return "/admin/js/frame";
	}
	
/**
* 查询列表
*/
	@RequestMapping(value = "/list")
	public String list(Model model, HttpServletRequest request,String flag,String jsName,String jsms)throws Exception {
		//select date_format(insertDate, '%Y-%m-%d %H:%i:%s')
		//CONVERT(varchar, insertDate, 120 )
		//to_char(insertDate,'yyyy-mm-dd,hh24:mi:ss') 

		String sql="select a.* from t_js a where 1=1 ";


	if(jsName!=null&&!"".equals(jsName)){
			sql+=" and jsName like '%"+jsName+"%'";
		}
	if(jsms!=null&&!"".equals(jsms)){
			sql+=" and jsms like '%"+jsms+"%'";
		}
		sql+=" order by id desc";
		List list = db.queryForList(sql);
		request.setAttribute("list", list);
		return "/admin/js/list";
	}
	
/**
* 编辑保存（包含修改和添加）
*/
	@RequestMapping(value = "/editSave")
	public ResponseEntity<String> editSave(Model model,HttpServletRequest request,Long id,String flag
		,String jsName,String jsms,String v1,String v2,String v3,String v4,String v5,String v6,String v7,String v8) throws Exception{
		int result = 0;
		if(id!=null){
			String sql="update t_js set jsName=?,jsms=?,v1=?,v2=?,v3=?,v4=?,v5=?,v6=?,v7=?,v8=? where id=?";
			result = db.update(sql, new Object[]{jsName,jsms,v1,v2,v3,v4,v5,v6,v7,v8,id});
		}else{
			String sql="insert into t_js(jsName,jsms,v1,v2,v3,v4,v5,v6,v7,v8) values(?,?,?,?,?,?,?,?,?,?)";
			result = db.update(sql, new Object[]{jsName,jsms,v1,v2,v3,v4,v5,v6,v7,v8});
		}
		if(result==1){
			return renderData(true,"操作成功",null);
		}else{
			return renderData(false,"操作失败",null);
		}
	}
	
/**
* 删除信息
*/
	@RequestMapping(value = "/editDelete")
	public ResponseEntity<String> editDelete(Model model,HttpServletRequest request,Long id,String flag) throws Exception {
		
		String sql="delete from t_js where id=?";
		int result = db.update(sql, new Object[]{id});
		if(result==1){
			return renderData(true,"操作成功",null);
		}else{
			return renderData(false,"操作失败",null);
		}
		
	}
	
/**
* 跳转到编辑页面
*/
	@RequestMapping(value = "/edit")
	public String edit(Model model, HttpServletRequest request,Long id,String flag)throws Exception {
		if(id!=null){
			//修改
			String sql="select * from t_js where id=?";
			Map map = db.queryForMap(sql,new Object[]{id});
			model.addAttribute("map", map);
		}String sql="";

		return "/admin/js/edit";
	}
}
