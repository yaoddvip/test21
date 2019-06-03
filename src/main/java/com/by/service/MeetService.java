package com.by.service;

import com.by.model.Meet;

import java.util.List;

public interface MeetService {
    List<Meet> list();

    Meet selectOne(Integer id);

    void addMeet(Meet meet);

    void deleteMeet(Integer id);

    void updateMeet(Meet meet);
}
