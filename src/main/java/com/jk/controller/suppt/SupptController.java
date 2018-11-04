package com.jk.controller.suppt;


import com.jk.model.suppt.Share;
import com.jk.service.suppt.SupptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("suppt")
public class SupptController {
    @Autowired
    private SupptService supptService;
    //查询后台展示新增
    @RequestMapping("querySuppt")
    @ResponseBody
    public  List<Share> querySuppt(Integer start,Integer pageSize){
        List<Share> shares = supptService.querySuppt(start, pageSize);
        return shares;
        }
     //修改审核状态
    @ResponseBody
    @RequestMapping("updateSuppt")
    public  void updateSuppt(Integer id){
        supptService.updateSuppt(id);
    }
}


