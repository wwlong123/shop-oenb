package com.jk.controller.activity;


import com.jk.model.suppt.Activity;

import com.jk.model.suppt.UploadResponseData;
import com.jk.service.ManageService;
import com.jk.service.acti.ActiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import javax.swing.*;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import java.util.List;
import java.util.Random;
import java.util.UUID;

@Controller
@RequestMapping("acti")
public class ActiController {
    @Autowired
    private ActiService actiService;

    @Autowired
    private ManageService manageService;

    @RequestMapping("queryfx")
    public String selectManage( Model model){
        int i =0;
       // String list = manageService.selectManage();
       // model.addAttribute("list",list);
        return "1";
    }
    @RequestMapping("queryActivity")
    @ResponseBody
    public List<Activity> queryActivity(){
        return actiService.queryActivity();
    }

    //修改审核状态
    @ResponseBody
    @RequestMapping("updateActivityt")
    public  void updateActivity(Integer id){
        actiService.updateActivityt(id);
    }
@RequestMapping("toadd")
    public  String toadd(){
        return "/dsc/activity/activity";



}



        //fileinput 其实每次只会上传一个文件  多图上传也是分多次请求,每次上传一个文件 所以不需要循环

        //@RequestParam("images") 这里的images对应表单中name 然后MultipartFile 参数名就可以任意了
        @RequestMapping("image")
        public String image(@RequestParam("images") MultipartFile file) throws IOException {
            String pathname = "";
            String returnPath = "";
            if (!file.isEmpty()){
                String fileName = file.getOriginalFilename();
                File path = new File(ResourceUtils.getURL("classpath:").getPath());//获取Spring boot项目的根路径，在开发时获取到的是/target/classes/
                System.out.println(path.getPath());//如果你的图片存储路径在static下，可以参考下面的写法
                File uploadFile = new File(path.getAbsolutePath(), "static/images/upload/");//开发测试模式中 获取到的是/target/classes/static/images/upload/
                if (!uploadFile.exists()){
                    uploadFile.mkdirs();
                }
                //获取文件后缀名

                DateFormat df = new SimpleDateFormat("yyyyMMddHHmmssSSS");
                //图片名称 采取时间拼接随机数
                String end ="jpg";
                String name = df.format(new Date());
                Random r = new Random();
                for(int i = 0 ;i < 3 ;i++){
                    name += r.nextInt(10);
                }
                String diskFileName = name + "."+end ; //目标文件的文件名
                pathname = uploadFile.getPath()+ "/" + diskFileName;
                System.out.println(pathname);
                returnPath = "images/upload/" + diskFileName;//这里是我自己做返回的字符串

                file.transferTo(new File(pathname));//文件转存
            }//UploadResponseData 自定义返回数据类型实体{int code, String msg, Object data}

            return "1";
        }



}
