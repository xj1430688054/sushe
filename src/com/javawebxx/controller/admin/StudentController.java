
package com.javawebxx.controller.admin;

import java.util.HashMap;
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
*学生
* @author Administratorxxxx
* @date2018-03-27
*/
@Controller("studentController")
@RequestMapping(value = "/admin/student")
public class StudentController extends MyController {
	

/**
* 查询frame
*/
	@RequestMapping(value = "/frame")
	public String frame(Model model, HttpServletRequest request,String flag)throws Exception {
		return "/admin/student/frame";
	}
	
/**
* 查询列表
*/
	@RequestMapping(value = "/list")
	public String list(Model model, HttpServletRequest request,String flag,String studentName,String phone,String address)throws Exception {
		//select date_format(insertDate, '%Y-%m-%d %H:%i:%s')
		//CONVERT(varchar, insertDate, 120 )
		//to_char(insertDate,'yyyy-mm-dd,hh24:mi:ss') 

		String sql="select a.*,(select bjName from t_bj b where a.bjId=b.id) bjName ,(select ssName from t_ss b where a.ssId=b.id) ssName  from t_student a where 1=1 ";


	if(studentName!=null&&!"".equals(studentName)){
			sql+=" and studentName like '%"+studentName+"%'";
		}
	if(phone!=null&&!"".equals(phone)){
			sql+=" and phone like '%"+phone+"%'";
		}
	if(address!=null&&!"".equals(address)){
			sql+=" and address like '%"+address+"%'";
		}
		sql+=" order by id desc";
		List list = db.queryForList(sql);
		request.setAttribute("list", list);
		return "/admin/student/list";
	}
	
	
	
/**
* 编辑保存（包含修改和添加）
*/
	@RequestMapping(value = "/editSave")
	public ResponseEntity<String> editSave(Model model,HttpServletRequest request,Long id,String flag
		,String studentName,String phone,String age,String sex,String address,String pic,Integer bjId,Integer ssId) throws Exception{
		
		String sqlString = "select ssId from t_student where id = " + id;
		Map map = db.queryForMap(sqlString);
		Integer string =(Integer) map.get("ssId");
		int result = 0;
		if(id!=0){
			if (0 != string) {
				String sql = "update t_student set studentName=?,phone=?,age=?,sex=?,address=?,pic=?,bjId=?,ssId=? where id=?";
				result = db.update(sql,
						new Object[] { studentName, phone, age, sex, address, pic, bjId, ssId, id });
			}else {
				String sql = "update t_student set studentName=?,phone=?,age=?,sex=?,address=?,pic=?,bjId=?,ssId=?,ssstatus=? where id=?";
				result = db.update(sql,
						new Object[] { studentName, phone, age, sex, address, pic, bjId, ssId,"入住",  id });
			}
		}else{
			String sql="insert into t_student(studentName,phone,age,sex,address,pic,bjId,ssId) values(?,?,?,?,?,?,?,?)";
			result = db.update(sql, new Object[]{studentName,phone,age,sex,address,pic,bjId,ssId});
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
		
		String sql="delete from t_student where id=?";
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
			String sql="select * from t_student where id=?";
			Map map = db.queryForMap(sql,new Object[]{id});
			model.addAttribute("map", map);
		}String sql="";

 sql="select * from t_bj";
model.addAttribute("bjList", db.queryForList(sql));

 sql="select * from t_ss";
model.addAttribute("ssList", db.queryForList(sql));

		return "/admin/student/edit";
	}
}
