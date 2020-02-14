package com.javawebxx.dao;
import java.util.List;

import com.javawebxx.model.Sh;
public interface ShDao {
    List<Sh> queryForList(Sh sh);
    int delete(Integer id);
    Sh getById(Integer id);
    int update(Sh sh);
    int insert(Sh sh);
}
