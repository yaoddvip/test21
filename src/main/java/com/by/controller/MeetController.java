package com.by.controller;


import com.by.model.Meet;
import com.by.service.MeetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


@Controller
@RequestMapping("meet")
public class MeetController {

    @Autowired
    private MeetService meetService;

    /*
        查看全部
     */
    @RequestMapping(value = "meets",method = RequestMethod.GET)
    public String list(ModelMap map){
        List<Meet> list = meetService.list();
        map.put("list",list);
        return "meet/list";
    }

    /*
        查看单个
     */
    @RequestMapping(value = "meet/{id}",method = RequestMethod.GET)
    public String selectOne(@PathVariable("id") Integer id,
                            ModelMap map){
        Meet meet = meetService.selectOne(id);

        map.put("meet",meet);

        return "meet/update";
    }

    @RequestMapping("toAddPage")
    public String toAddPage(){
        return "meet/add";
    }

    /*
        增加方法
     */
    @RequestMapping(value = "meet",method = RequestMethod.POST)
    public String addMeet(Meet meet){

        meetService.addMeet(meet);

        return "redirect:meets";
        //return "redirect:/meet/meets";
    }

    /*
    删除
     */
    @RequestMapping(value = "meet/{id}",method = RequestMethod.DELETE)
    public String deleteMeet(@PathVariable("id") Integer id){

        meetService.deleteMeet(id);

        return "redirect:/meet/meets";
    }

    /*
        修改
     */
    @RequestMapping(value = "meet",method = RequestMethod.PUT)
    public String updateMeet(Meet meet){
        meetService.updateMeet(meet);
        return "redirect:/meet/meets";
    }
}
