package com.javawebxx.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

public class Fk {
private Integer id;
public Integer getId() {return id;}
public void setId(Integer id) {this.id = id;}
private String fkName;
private Long studentId;
private String gx;
private Date beginDate;
private Date endDate;
private String remark;
public String getFkName() {return fkName;}
public void setFkName(String fkName) {this.fkName = fkName;}
public Long getStudentId() {return studentId;}
public void setStudentId(Long studentId) {this.studentId = studentId;}
public String getGx() {return gx;}
public void setGx(String gx) {this.gx = gx;}
public Date getBeginDate() {return beginDate;}
public void setBeginDate(Date beginDate) {this.beginDate = beginDate;}
public Date getEndDate() {return endDate;}
public void setEndDate(Date endDate) {this.endDate = endDate;}
public String getRemark() {return remark;}
public void setRemark(String remark) {this.remark = remark;}
}