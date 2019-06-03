package com.by.controller;

import com.by.model.Meet;
import com.by.model.Result;
import com.by.service.MeetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("meet2")
public class Meet2Controller {

    @Autowired
    private MeetService meetService;


    @RequestMapping("list2")
    public String toList(){
        return "meet2/list";
    }

    /*
       查看全部
    */
    @ResponseBody
    @RequestMapping(value = "meets",method = RequestMethod.GET)
    public Result list(){
        Result result = new Result();
        try {
            List<Meet> list = meetService.list();
            result.setMsg("ok");
            result.setStatus("200");
            result.setData(list);
        }catch (Exception e){
            result.setMsg("error");
            result.setStatus("400");
        }

        return result;
    }

    @ResponseBody
    @RequestMapping(value = "meet",method = RequestMethod.POST)
    public Result addMeet(Meet meet){
        Result result = new Result();
        try {
            meetService.addMeet(meet);
            result.setMsg("ok");
            result.setStatus("200");
        } catch (Exception e) {
            e.printStackTrace();
            result.setMsg("error");
            result.setStatus("400");
        }
        return result;
    }

    public void test1(){
        System.out.println("添加新的内容");
    }

}
