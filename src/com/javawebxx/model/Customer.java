package com.javawebxx.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

public class Customer {
private Integer id;
public Integer getId() {return id;}
public void setId(Integer id) {this.id = id;}
private String username;
private String password;
private String customerName;
private String phone;
private String age;
private String sex;
private String address;
private String email;
private String zw;
private String zwsm;
private String status;
private Long jsId;
public String getUsername() {return username;}
public void setUsername(String username) {this.username = username;}
public String getPassword() {return password;}
public void setPassword(String password) {this.password = password;}
public String getCustomerName() {return customerName;}
public void setCustomerName(String customerName) {this.customerName = customerName;}
public String getPhone() {return phone;}
public void setPhone(String phone) {this.phone = phone;}
public String getAge() {return age;}
public void setAge(String age) {this.age = age;}
public String getSex() {return sex;}
public void setSex(String sex) {this.sex = sex;}
public String getAddress() {return address;}
public void setAddress(String address) {this.address = address;}
public String getEmail() {return email;}
public void setEmail(String email) {this.email = email;}
public String getZw() {return zw;}
public void setZw(String zw) {this.zw = zw;}
public String getZwsm() {return zwsm;}
public void setZwsm(String zwsm) {this.zwsm = zwsm;}
public String getStatus() {return status;}
public void setStatus(String status) {this.status = status;}
public Long getJsId() {return jsId;}
public void setJsId(Long jsId) {this.jsId = jsId;}
}