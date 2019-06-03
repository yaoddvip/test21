package com.by.mapper;

import com.by.model.Meet;

import java.util.List;

public interface MeetMapper {
    int deleteByPrimaryKey(Integer meetId);

    int insert(Meet record);

    int insertSelective(Meet record);

    Meet selectByPrimaryKey(Integer meetId);

    int updateByPrimaryKeySelective(Meet record);

    int updateByPrimaryKey(Meet record);

    List<Meet> list();
}