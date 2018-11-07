package com.jk.controller;


import com.alipay.api.request.AlipayTradeWapPayRequest;
import com.jk.model.Htuser;
import com.jk.model.Usernb;
import com.jk.model.Users;
import com.jk.service.Userservice;
import com.jk.util.AlipayConfig;
import com.jk.util.UpImgService;
import org.omg.CORBA.INTERNAL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alipay.api.AlipayClient;

import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;

import com.jk.util.IdWorker;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("user")
public class Usercontroller {
    public static final Logger logger = LoggerFactory.getLogger(Usercontroller.class);
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

    @RequestMapping("addhoutai")
    @ResponseBody
    public void addhoutai(Htuser str){
        userservice.addhoutai(str);
    }

    @RequestMapping("updateuser")
    @ResponseBody
    public void updateuser(Users userpass){
        userservice.updateuser(userpass);
    }

    @RequestMapping("updatetupian")
    @ResponseBody
    public void updatetupian(Users str, HttpServletRequest request){
        Users login = (Users) request.getSession().getAttribute("login");
        str.setUserid(login.getUserid());
        userservice.updatetupian(str);
    }

    @RequestMapping("/headImgUpload")
    @ResponseBody
    public String contentFileUpload(MultipartFile image, HttpServletRequest request) {
        //建立以时间命名的文件夹
        SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/");
        String datePath = sdf.format(new Date());
        // 上传文件原始名称
        String originFileName = image.getOriginalFilename();
        // 新的文件名称
        String file = UUID.randomUUID() + originFileName.substring(originFileName.lastIndexOf("."));
        System.out.println(file);
        Map<String, Object> value = new HashMap<String, Object>();
        String url ="";
        try {
            url = UpImgService.updateHead(image);
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



    @RequestMapping(value = "/goAlipay")
    @ResponseBody
    public String goAlipay(Usernb str,Integer userid, Integer jiaqian, HttpServletRequest request, HttpServletRequest response) throws Exception {

        //生成唯一订单号
        IdWorker idWorker = new IdWorker(1, 0);
        long idWork = idWorker.nextId();
        String dingDanHao = String.valueOf(idWork);
        int usernb;
        usernb =jiaqian * 10;
        //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();

        alipayRequest.setReturnUrl(AlipayConfig.return_url);

        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
       request.getSession().setAttribute("jiaqian",usernb);
        //商户订单号，商户网站订单系统中唯一订单号，必填
        String out_trade_no = dingDanHao;
        //付款金额，必填
        Integer total_amount = jiaqian;
        //订单名称，必填
        String subject = "金科教育";
        //商品描述，可空
        String body = "用户订购商品个数：" + 3;

        // 该笔订单允许的最晚付款时间，逾期将关闭交易。取值范围：1m～15d。m-分钟，h-小时，d-天，1c-当天（1c-当天的情况下，无论交易何时创建，都在0点关闭）。 该参数数值不接受小数点， 如 1.5h，可转换为 90m。
        String timeout_express = "1c";

        alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\","
                + "\"total_amount\":\""+ total_amount +"\","
                + "\"subject\":\""+ subject +"\","
                + "\"body\":\""+ body +"\","
                + "\"timeout_express\":\""+ timeout_express +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

        //请求
        String result = alipayClient.pageExecute(alipayRequest).getBody();
        return result;

    }


    @RequestMapping("addusernb")
    @ResponseBody
    public void addusernb(Integer usernb,Integer userid){

        userservice.addusernb(usernb,userid);
    }

}
