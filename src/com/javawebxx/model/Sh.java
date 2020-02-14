package com.javawebxx.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

public class Sh {
private Integer id;
public Integer getId() {return id;}
public void setId(Integer id) {this.id = id;}
private Long ssId;
private String shqk;
private String isxf;
private Date beginDate;
private Date endDate;
private String remark;
public Long getSsId() {return ssId;}
public void setSsId(Long ssId) {this.ssId = ssId;}
public String getShqk() {return shqk;}
public void setShqk(String shqk) {this.shqk = shqk;}
public String getIsxf() {return isxf;}
public void setIsxf(String isxf) {this.isxf = isxf;}
public Date getBeginDate() {return beginDate;}
public void setBeginDate(Date beginDate) {this.beginDate = beginDate;}
public Date getEndDate() {return endDate;}
public void setEndDate(Date endDate) {this.endDate = endDate;}
public String getRemark() {return remark;}
public void setRemark(String remark) {this.remark = remark;}
}