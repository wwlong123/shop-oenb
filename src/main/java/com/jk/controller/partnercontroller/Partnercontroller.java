package com.jk.controller.partnercontroller;

import com.jk.model.Partner;
import com.jk.service.partnerservice.Partnerservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("partner")
public class Partnercontroller {

    @Autowired
    private Partnerservice partnerservice;

    @RequestMapping("/selectpartner")
    @ResponseBody
    public List<Partner> selectpartner(){
        List<Partner>list=partnerservice.selectpartner();
        return list;
    }

    @RequestMapping("/addpartner")
    @ResponseBody
    public void addpartner(Partner str){
        str.setParname("hujianwei");
        str.setParcompany("12312");
        partnerservice.addpartner(str);
    }
}
