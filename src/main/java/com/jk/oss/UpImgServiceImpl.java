/** 
 * <pre>项目名称:ssm-maven-oss 
 * 文件名称:UpImgServiceImpl.java 
 * 包名:com.jk.service 
 * 创建日期:2018年9月13日上午9:21:50 
 * Copyright (c) 2018, yangzhichao150@126.com All Rights Reserved.</pre> 
 */  
package com.jk.oss;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
 

@Service
public class UpImgServiceImpl implements UpImgService {
	public static final Logger logger = LoggerFactory.getLogger(UpImgServiceImpl.class);
	@Override
	public String updateHead(MultipartFile file) throws ImgException {
	    if (file == null || file.getSize() <= 0) {
		      throw new ImgException("file不能为空");
		    }
	        OSSClientUtil ossClient=new OSSClientUtil();
		    String name = ossClient.uploadImg2Oss(file);
		    String imgUrl = ossClient.getImgUrl(name);
		    String[] split = imgUrl.split("\\?");
		    return split[0];
	}
}
