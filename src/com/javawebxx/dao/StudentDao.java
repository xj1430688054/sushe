package com.javawebxx.dao;
import java.util.List;

import com.javawebxx.model.Student;
public interface StudentDao {
    List<Student> queryForList(Student student);
    int delete(Integer id);
    Student getById(Integer id);
    int update(Student student);
    int insert(Student student);
}
