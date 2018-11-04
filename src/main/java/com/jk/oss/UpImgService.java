/** 
 * <pre>项目名称:ssm-maven-oss 
 * 文件名称:UpImgService.java 
 * 包名:com.jk.service 
 * 创建日期:2018年9月13日上午9:21:14 
 * Copyright (c) 2018, yangzhichao150@126.com All Rights Reserved.</pre> 
 */  
package com.jk.oss;


import org.springframework.web.multipart.MultipartFile;


public interface UpImgService {
 
	String updateHead(MultipartFile file)throws ImgException;
}
