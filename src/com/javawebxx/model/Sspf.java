package com.javawebxx.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

public class Sspf {
private Integer id;
public Integer getId() {return id;}
public void setId(Integer id) {this.id = id;}
private Long ssId;
private Integer df;
private Date dfDate;
public Long getSsId() {return ssId;}
public void setSsId(Long ssId) {this.ssId = ssId;}
public Integer getDf() {return df;}
public void setDf(Integer df) {this.df = df;}
public Date getDfDate() {return dfDate;}
public void setDfDate(Date dfDate) {this.dfDate = dfDate;}
}