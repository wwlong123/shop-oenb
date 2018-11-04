/** 
 * <pre>项目名称:ssm-maven-oss 
 * 文件名称:UpImgController.java 
 * 包名:com.jk.controller.user 
 * 创建日期:2018年9月13日上午9:20:19 
 * Copyright (c) 2018, yangzhichao150@126.com All Rights Reserved.</pre> 
 */  
package com.jk.oss;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;
 
/**
 * 图片上传
 * @author Monkey
 * @date 2017年9月30日下午3:37:00
 * @version 1.0
 */
@Controller
@RequestMapping("upImg")
public class UpImgController {
	public static final Logger logger = LoggerFactory.getLogger(UpImgController.class);
	@Autowired
	private UpImgService upImgService;
	
	@RequestMapping("headImgUpload")
	@ResponseBody
	public String headImgUpload(HttpServletRequest request, MultipartFile file) {
		Map<String, Object> value = new HashMap<String, Object>();
		String url ="";
		try {
			 url = upImgService.updateHead(file);
			logger.debug("图片路径{}",url);
			value.put("data", url);
			value.put("code", 0);
			value.put("msg", "图片上传成功");
		} catch (Exception e) {
			e.printStackTrace();
			value.put("code", 2000);
			value.put("msg", "图片上传成功");
		}
		return url;
	}
	
}
