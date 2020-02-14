package com.javawebxx.dao;

import java.util.List;

import com.javawebxx.model.Admin;

public interface AdminDao {
    List<Admin> isAdminExists(Admin admin);
    
    Admin getById(Integer id);
}