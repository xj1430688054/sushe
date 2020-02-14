package com.javawebxx.dao;
import java.util.List;

import com.javawebxx.model.Bj;
public interface BjDao {
    List<Bj> queryForList(Bj bj);
    int delete(Integer id);
    Bj getById(Integer id);
    int update(Bj bj);
    int insert(Bj bj);
}
