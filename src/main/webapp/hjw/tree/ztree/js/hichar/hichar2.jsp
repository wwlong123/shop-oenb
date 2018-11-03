<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/easyui/jquery.min.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/hichar/highcharts.js"></script>
	  <script type="text/javascript" src="<%=request.getContextPath()%>/hichar/modules/exporting.js"></script>
</head>
<body>
<button onclick="fun()">燃烧大家的斗志</button>
<div id="container" style="min-width:400px;height:400px"></div>

<script>
	var chart=null;
	
/* 	function fun(){
		 var d={
	            name: '北京',
	            data: [10,20,30,40,50,60,70,80,90]
	        }
		 chart.addSeries(d);//设置数据,danielinbiti
		
		  var d1={
		            name: '非洲',
		            data: [10,20,30,40,50,60,70,80,90]
		        }
			 chart.addSeries(d1);//设置数据,danielinbiti
			 
		chart.setTitle({text:"都是中国的"});//设置标题 
		 chart.setSubtitle({
	            text: '猜想'
	        });
		 var xAxis = chart.series[0].xAxis;
		 //获取xAxis的categories
		  xAxis.categories=['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
		  chart.redraw(); //  重
	}
 */
	   var options = {
	        chart: {
	        	renderTo: 'container',
	            type: 'pie',
	            backgroundColor: {
					linearGradient: [0, 0, 500, 500],
					stops: [
						[0, 'rgb(255, 255, 255)'],
						[1, 'rgb(200, 200, 255)']
					]
				},
	        },
	        title: {
	            text: '比挣钱多呢'
	        },
	        subtitle: {
	            text: '伟大的老板(资本家)'
	        },
	        xAxis: {
	        	 title: {
	                 text: '都是员工'
	             },
	            categories: [],
	            crosshair: true
	        },
	        yAxis: {
	            min: 0,
	            title: {
	                text: '都是钱'
	            }
	        },
	        tooltip: {
	            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
	            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
	            '<td style="padding:0"><b>{point.y:.1f}万</b></td></tr>',
	            footerFormat: '</table>',
	            shared: true,
	            useHTML: true
	        },
	        plotOptions: {
	            column: {
	                pointPadding: 0.2,
	                borderWidth: 0
	            }
	        },
	        series: []
	    };
	
	$(function () {
		 alert(1);
		$.ajax({
			type:"post",
			url:"<%=request.getContextPath()%>/login/queryChart.do",
			dataType:"json",
			 contentType: "application/x-www-form-urlencoded; charset=utf-8", 
			 success:function (data){
				 alert(data);
				/*  "{Xax:['2012-09','2012-10','2012-11'],
					userName:['醋总','辣总'],	 
				 user_price_1:[100,20,30],
				 user_price_2:[33,44,55]
				 }"
				  */
				 options.xAxis.categories=data.Xax;
				 $.each(data.userName,function (i){
					var price=eval("data.userPrice_"+i);
					var msg={
		 	 				 name:this.name,
		 	 				 data:price    //数据重复了  线也会重复
		 	 				};
		 				options.series.push(msg);
					//alert(window['data.userPrice_0']);
				 });	 
			
			chart=new Highcharts.Chart(options);
			 }
		});
		
		
});
</script>
</body>
</html>