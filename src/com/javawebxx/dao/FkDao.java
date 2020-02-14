package com.javawebxx.dao;
import java.util.List;

import com.javawebxx.model.Fk;
public interface FkDao {
    List<Fk> queryForList(Fk fk);
    int delete(Integer id);
    Fk getById(Integer id);
    int update(Fk fk);
    int insert(Fk fk);
}
