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
    public Integer adduser(Users str, String regcode, HttpServletRequest request) {
        Integer flag = null;
        String attribute = "d43v";
        if (attribute.equals(regcode)) {
            flag = 1;
            userservice.adduser(str);
        } else {
            flag = 2;
        }
        return flag;
    }
    @RequestMapping("/userpas")
    @ResponseBody
    public Integer userpas(String usereamil,String userpass, HttpServletRequest request){
        Users boo= (Users) userservice.userpas(usereamil,userpass);
        if (boo!=null){
            request.getSession().setAttribute("login",boo);
            return 1;
        }else{
            return 2;
        }
    }
}
