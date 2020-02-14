package com.javawebxx.dao;
import java.util.List;

import com.javawebxx.model.Ss;
public interface SsDao {
    List<Ss> queryForList(Ss ss);
    int delete(Integer id);
    Ss getById(Integer id);
    int update(Ss ss);
    int insert(Ss ss);
}
