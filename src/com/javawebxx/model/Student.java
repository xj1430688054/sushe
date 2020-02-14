package com.javawebxx.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

public class Student {
private Integer id;
public Integer getId() {return id;}
public void setId(Integer id) {this.id = id;}
private String studentName;
private String phone;
private String age;
private String sex;
private String address;
private String pic;
private Long bjId;
private Long ssId;
public String getStudentName() {return studentName;}
public void setStudentName(String studentName) {this.studentName = studentName;}
public String getPhone() {return phone;}
public void setPhone(String phone) {this.phone = phone;}
public String getAge() {return age;}
public void setAge(String age) {this.age = age;}
public String getSex() {return sex;}
public void setSex(String sex) {this.sex = sex;}
public String getAddress() {return address;}
public void setAddress(String address) {this.address = address;}
public String getPic() {return pic;}
public void setPic(String pic) {this.pic = pic;}
public Long getBjId() {return bjId;}
public void setBjId(Long bjId) {this.bjId = bjId;}
public Long getSsId() {return ssId;}
public void setSsId(Long ssId) {this.ssId = ssId;}
}