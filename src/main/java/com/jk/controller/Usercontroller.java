package com.jk.controller;

import com.jk.model.Users;
import com.jk.service.Userservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("user")
public class Usercontroller {

    @Autowired
    private Userservice userservice;

    @RequestMapping("/adduser")
    @ResponseBody
    public void adduser(Users str){
        str.setUsername("hujianwei");
        str.setUsereamil("742917030@qq.com");
        str.setUserpass("123456");
        userservice.adduser(str);
    }

    @RequestMapping("/userpas")
    @ResponseBody
    public String userpas(Users user, String regcode, HttpServletRequest request){
        String flag="1";
        String  attribute = (String) request.getSession().getAttribute("rand");
        if (attribute.equals(regcode)) {
            flag="1";
        }else{
            flag="3";
            return flag;
        }
        boolean boo=userservice.userpas(user,request);
        System.out.println(boo);
        if (boo) {
            flag="1";
        }else{
            flag="2";
        }
        return flag;
    }
}
