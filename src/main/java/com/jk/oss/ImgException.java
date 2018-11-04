/** 
 * <pre>项目名称:ssm-maven-oss 
 * 文件名称:ImgException.java 
 * 包名:com.jk.util 
 * 创建日期:2018年9月13日上午9:37:29 
 * Copyright (c) 2018, yangzhichao150@126.com All Rights Reserved.</pre> 
 */  
package com.jk.oss;

/** 
 * <pre>项目名称：ssm-maven-oss    
 * 类名称：ImgException    
 * 类描述：    
 * 创建人：王文龙 1442557017@qq.com    
 * 创建时间：2018年9月13日 上午9:37:29    
 * 修改人：王文龙 1442557017@qq.com    
 * 修改时间：2018年9月13日 上午9:37:29    
 * 修改备注：       
 * @version </pre>    
 */
public class ImgException extends Exception{
    //无参构造方法
    public ImgException(){

        super();
    }

    //有参的构造方法
    public ImgException(String message){
        super(message);

    }

    // 用指定的详细信息和原因构造一个新的异常
    public ImgException(String message, Throwable cause){

        super(message,cause);
    }

    //用指定原因构造一个新的异常
     public ImgException(Throwable cause) {

         super(cause);
     }


}
