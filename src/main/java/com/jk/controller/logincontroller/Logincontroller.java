package com.jk.controller.logincontroller;

import com.jk.model.Tree;
import com.jk.model.login;

import com.jk.service.loginservice.loginservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.jk.service.loginservice.loginservice;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("login")
public class Logincontroller {

    @Autowired
    private loginservice loginservice;
    @RequestMapping("/selectuser")
    @ResponseBody
    public String selectuser(String username,String userpas, HttpServletRequest request){
        String flag="";
        login user=loginservice.selectuser(username,userpas);
        if (user!=null) {
            flag="1";
            request.getSession().setAttribute("login", flag);
        }else{
            flag="2";
        }
        return flag;
    }

    @RequestMapping("selectTree")
    @ResponseBody
    private List<Tree> selectTree(){
        List<Tree>list=loginservice.selectTree();
        return list;
    }
}
