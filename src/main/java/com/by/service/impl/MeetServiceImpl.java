package com.by.service.impl;

import com.by.mapper.MeetMapper;
import com.by.model.Meet;
import com.by.service.MeetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MeetServiceImpl  implements MeetService {

    @Autowired
    private MeetMapper meetMapper;


    @Override
    public List<Meet> list() {
        return meetMapper.list();
    }

    @Override
    public Meet selectOne(Integer id) {
        return meetMapper.selectByPrimaryKey(id);
    }

    @Override
    public void addMeet(Meet meet) {
        meetMapper.insertSelective(meet);
    }

    @Override
    public void deleteMeet(Integer id) {
        meetMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void updateMeet(Meet meet) {
        meetMapper.updateByPrimaryKeySelective(meet);
    }
}
