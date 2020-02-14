package com.javawebxx.dao;
import java.util.List;

import com.javawebxx.model.Sspf;
public interface SspfDao {
    List<Sspf> queryForList(Sspf sspf);
    int delete(Integer id);
    Sspf getById(Integer id);
    int update(Sspf sspf);
    int insert(Sspf sspf);
}
