
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
*损耗
* @author Administratorxxxx
* @date2018-03-27
*/
@Controller("shController")
@RequestMapping(value = "/admin/sh")
public class ShController extends MyController {
	

/**
* 查询frame
*/
	@RequestMapping(value = "/frame")
	public String frame(Model model, HttpServletRequest request,String flag)throws Exception {
		return "/admin/sh/frame";
	}
	
/**
* 查询列表
*/
	@RequestMapping(value = "/list")
	public String list(Model model, HttpServletRequest request,String flag,String isxf)throws Exception {
		//select date_format(insertDate, '%Y-%m-%d %H:%i:%s')
		//CONVERT(varchar, insertDate, 120 )
		//to_char(insertDate,'yyyy-mm-dd,hh24:mi:ss') 

		String sql="select a.*,(select ssName from t_ss b where a.ssId=b.id) ssName  from t_sh a where 1=1 ";


	if(isxf!=null&&!"".equals(isxf)){
			sql+=" and isxf = '"+isxf+"'";
		}
		sql+=" order by id desc";
		List list = db.queryForList(sql);
		request.setAttribute("list", list);
		return "/admin/sh/list";
	}
	
/**
* 编辑保存（包含修改和添加）
*/
	@RequestMapping(value = "/editSave")
	public ResponseEntity<String> editSave(Model model,HttpServletRequest request,Long id,String flag
		,Integer ssId,String shqk,String isxf,String beginDate,String endDate,String remark) throws Exception{
		int result = 0;
		if(id!=null){
			String sql="update t_sh set ssId=?,shqk=?,isxf=?,beginDate=?,endDate=?,remark=? where id=?";
			result = db.update(sql, new Object[]{ssId,shqk,isxf,beginDate,endDate,remark,id});
		}else{
			String sql="insert into t_sh(ssId,shqk,isxf,beginDate,endDate,remark) values(?,?,?,?,?,?)";
			result = db.update(sql, new Object[]{ssId,shqk,isxf,beginDate,endDate,remark});
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
		
		String sql="delete from t_sh where id=?";
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
			String sql="select * from t_sh where id=?";
			Map map = db.queryForMap(sql,new Object[]{id});
			model.addAttribute("map", map);
		}String sql="";

 sql="select * from t_ss";
model.addAttribute("ssList", db.queryForList(sql));

		return "/admin/sh/edit";
	}
}
