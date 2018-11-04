package com.jk.controller.activity;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.jk.oss.UpImgController;
import com.jk.oss.UpImgService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("file")
public class File {
    public static final Logger logger = LoggerFactory.getLogger(UpImgController.class);
    @Autowired
    private UpImgService upImgService;
    @RequestMapping("shangchuan")
    @ResponseBody
    public JSON contentFileUpload(MultipartFile images, HttpServletRequest request) {
        //建立以时间命名的文件夹
        SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/");
        String datePath = sdf.format(new Date());
        // 上传文件原始名称
        String originFileName = images.getOriginalFilename();
        // 新的文件名称
        String file = UUID.randomUUID() + originFileName.substring(originFileName.lastIndexOf("."));
        System.out.println(file);
        Map<String, Object> value = new HashMap<String, Object>();
        String url ="";
        try {
            url = upImgService.updateHead(images);
            logger.debug("图片路径{}",url);
            value.put("data", url);
            value.put("code", 0);
            value.put("msg", "图片上传成功");
        } catch (Exception e) {
            e.printStackTrace();
            value.put("code", 2000);
            value.put("msg", "图片上传成功");
        }
        System.out.println(url);
        JSON json = (JSON)JSON.toJSON(url);

        return json;
    }
}
