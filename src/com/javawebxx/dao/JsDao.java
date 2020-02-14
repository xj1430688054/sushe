package com.javawebxx.dao;
import java.util.List;

import com.javawebxx.model.Js;
public interface JsDao {
    List<Js> queryForList(Js js);
    int delete(Integer id);
    Js getById(Integer id);
    int update(Js js);
    int insert(Js js);
}
