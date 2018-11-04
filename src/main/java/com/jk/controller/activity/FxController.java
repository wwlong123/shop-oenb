package com.jk.controller.activity;


import com.jk.model.suppt.Manage;
import com.jk.service.ManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
@Controller
@RequestMapping("fxdm")
public class FxController {
    @Autowired
    private ManageService manageService;
    //组价查询
    @RequestMapping("queryfx")
    @ResponseBody
    public String selectManage( ){

        String list = manageService.selectManage();

         return list;
    }

    //新增分享
    @ResponseBody
    @RequestMapping("addfx")
    public  String addfx (String title,String btext,String topics){
        manageService.addfx(title,btext,topics);

        return "1";
    }

    @RequestMapping("toquery")
    public  String toquery(){
        return "dsc/fenxiang/fxindex";
    }

}
