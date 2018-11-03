package cfb.jk.login.controller;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import cfb.jk.TestSpring;
import cfb.jk.bo.user.BidsUser;
import cfb.jk.login.service.LoginService;
import cfb.jk.login.service.TestService;
import junit.framework.Test;

@RequestMapping("login")
@Controller
public class LoginController {
	//  记录日志
	private   Logger logger = Logger.getLogger(this.getClass().getName()); 
	
	@Resource(name="loginService")
	private  LoginService loginService;
	
	
	@Autowired
	private  TestSpring testSpring;
	
	
	
	@RequestMapping("login")
	public  String  login(BidsUser bidsUser,HttpServletRequest request,HttpServletResponse response){
		
		// 判断用户名  密码 是否正确
		
		
		if(bidsUser!=null){
			
			HttpSession session = request.getSession();
			session.setAttribute("user",bidsUser);
			
		}
		
		
		
		
		//  跳转到成功页面
		return  "success";
	}
	
	
	
	
	@RequestMapping("queryChart")
	@ResponseBody
	public  JSONObject  queryChart(HttpServletResponse response,HttpServletRequest request){
		// 查询   x轴   月份[2012-09,2012-08]
		List<String> xlist=loginService.findChart();
		
		JSONObject json=new JSONObject();
		json.put("Xax", xlist);
		//  查到拥有几个用户 [name:醋总,name:辣总]
		List<LinkedHashMap<String, Object>> findChartUser = loginService.findChartUser();
		json.put("userName", findChartUser);
		
		for (int i = 0; i < findChartUser.size(); i++) {
			LinkedHashMap<String, Object> userName= findChartUser.get(i);
			//  醋总     [10,20,30]
			List<Integer> price=loginService.findUsrByName(userName.get("name").toString());
			json.put("userPrice_"+i, price);
		}
	
		return json;
	}
	
	@RequestMapping("loginUser")
	public  void loginUser(HttpServletResponse response,HttpServletRequest request,BidsUser bidsUser){
		
		BidsUser loginUser=new BidsUser();
		loginUser.setUserName("阿修罗");
		loginUser.setUserId(1);
		loginUser.setUserPwd("123");
		
		if(loginUser!=null){
			HttpSession session = request.getSession();
			session.setAttribute("user", loginUser);
			String sessioinId = session.getId();
			session.getServletContext().setAttribute(loginUser.getUserId()+"", sessioinId);
		}
		
		
	}
	
	
	
	@RequestMapping("findUser")
	public  void  findUser(BidsUser bidsUser,Date testDate,Integer page,Integer rows,HttpServletRequest request,HttpServletResponse response){
		logger.info("杨圣瑜在平行宇宙"+bidsUser.getUserName()+"并且访问了这个方法");
		try {
			int s=1/0;
			loginService.findUser(bidsUser,page,rows);  //   创建一个session
		} catch (Exception e) {
			
			logger.error("商品管理"+bidsUser.getUserName()+e.getMessage());
		}
		
		loginService.findUser(bidsUser,page,rows);  //  又创建session   
		//loginService.addUser();
	}
	@RequestMapping("findUser1")
	public  void  findUser1(BidsUser bidsUser,Date testDate,Integer page,Integer rows,HttpServletRequest request,HttpServletResponse response){
		loginService.findUser(bidsUser,page,rows);  
		//loginService.addUser();
	}
}
