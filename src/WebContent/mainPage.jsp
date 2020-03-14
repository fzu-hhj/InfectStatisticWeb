<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="edu.fzu.infectStatisticWeb.Servlet.*" %>
<%@page import="edu.fzu.infectStatisticWeb.pojo.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>地图实例</title>
    <!-- 引入 echarts.js -->
    <script src="js/echarts.min.js"></script>
	<script src="js/china.js"></script>
	<link rel="stylesheet" type="text/css" href="css/mainPage.css">
</head>
<body>
	<%
		Ip ip = (Ip)request.getAttribute("ip");
		Sp sp = (Sp)request.getAttribute("sp");
		Cure cure = (Cure)request.getAttribute("cure");
		Dead dead = (Dead)request.getAttribute("dead");
			
	
    %>
	<div id="test"></div>
	<div class="timeText">截止<%=ip.getDate() %> 23:00</div>
	
	<!--实时数据-->
	<div class="" id="data" >
		<!--现有确诊数据-->
		<div class="rectangle" id="rt1"> 
			<p class="dataText1" id="dt1">现有确诊</p>
			<p class="dataText2" id="dt2"><%=ip.getNum(0) %>人</p>
		</div>
		<!--现有疑似数据-->
		<div class="rectangle" id="rt2"> 
			<p class="dataText1" id="dt5">现有疑似</p>
			<p class="dataText2" id="dt6"><%=sp.getNum(0) %>人</p>
		</div>
		<!--现有重症数据-->
		<div class="rectangle" id="rt3">
			<p class="dataText1" id="dt9">现有重症</p>
			<p class="dataText2" id="dt10"><%=(ip.getNum(0)/3) %>人</p>
		</div>
		<!--累计确诊数据-->
		<div class="rectangle" id="rt4">
			<p class="dataText1" id="dt13">累计确诊</p>
			<p class="dataText2" id="dt14"><%=(ip.getNum(0)+dead.getNum(0)+cure.getNum(0)) %>人</p>
		</div>
		<!--累计治愈数据-->
		<div class="rectangle" id="rt5">
			<p class="dataText1" id="dt17">累计治愈</p>
			<p class="dataText2" id="dt18"><%=cure.getNum(0) %>人</p>
		</div>
		<!--累计死亡数据-->
		<div class="rectangle" id="rt6">
			<p class="dataText1" id="dt21">累计死亡</p>
			<p class="dataText2" id="dt22"><%=dead.getNum(0)%>人</p>
		</div>
	</div>
	
	<form action="mapServlet" method="post">
		<select id="name" name="dateTime">
			<option value="2020-01-19">2020-01-19</option>
			<option value="2020-01-20">2020-01-20</option>
			<option value="2020-01-21">2020-01-21</option>
			<option value="2020-01-22">2020-01-22</option>
			<option value="2020-01-23">2020-01-23</option>
			<option value="2020-01-24">2020-01-24</option>
			<option value="2020-01-25">2020-01-25</option>
			<option value="2020-01-26">2020-01-26</option>
			<option value="2020-01-27">2020-01-27</option>
			<option value="2020-01-28">2020-01-28</option>
			<option value="2020-01-29">2020-01-29</option>
			<option value="2020-01-30">2020-01-30</option>
			<option value="2020-01-31">2020-01-31</option>
			<option value="2020-02-01">2020-02-01</option>
			<option value="2020-02-02" selected>2020-02-02</option>
			
		</select>
		
		<input type="submit" value="查询">
	</form>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="map"></div>
    
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
		//初始化echarts实例
        var myChart = echarts.init(document.getElementById('map'));
        
 		function randomData(name) {  
 			if(name=="全国")
 				return <%=ip.getNum(ip.getProNum("全国"))%>;
 			else if(name=="安徽")
 				return <%=ip.getNum(ip.getProNum("安徽"))%>;	
 			else if(name=="澳门")
 	 			return <%=ip.getNum(ip.getProNum("澳门"))%>;
 	 		else if(name=="北京")
 	 	 		return <%=ip.getNum(ip.getProNum("北京"))%>;
 	 	 	else if(name=="重庆")
 	 	 	 	return <%=ip.getNum(ip.getProNum("重庆"))%>;
 	 	 	else if(name=="福建")
  	 	 	 	return <%=ip.getNum(ip.getProNum("福建"))%>;
  	 	 	else if(name=="甘肃")
 	 	 	 	return <%=ip.getNum(ip.getProNum("甘肃"))%>;
 	 	 	 else if(name=="广东")
  	 	 	 	return <%=ip.getNum(ip.getProNum("广东"))%>;
  	 	 	else if(name=="广西")
 	 	 	 	return <%=ip.getNum(ip.getProNum("广西"))%>;
 	 	 	 else if(name=="贵州")
  	 	 	 	return <%=ip.getNum(ip.getProNum("贵州"))%>;
  	 	 	else if(name=="海南")
 	 	 	 	return <%=ip.getNum(ip.getProNum("海南"))%>;
 	 	 	else if(name=="河北")
  	 	 	 	return <%=ip.getNum(ip.getProNum("河北"))%>;
  	 	 	else if(name=="河南")
 	 	 	 	return <%=ip.getNum(ip.getProNum("河南"))%>;
 	 	 	else if(name=="黑龙江")
  	 	 	 	return <%=ip.getNum(ip.getProNum("黑龙江"))%>;
  	 	 	else if(name=="湖北")
 	 	 	 	return <%=ip.getNum(ip.getProNum("湖北"))%>;
 	 	 	else if(name=="湖南")
  	 	 	 	return <%=ip.getNum(ip.getProNum("湖南"))%>;
  	 	 	else if(name=="江西")
 	 	 	 	return <%=ip.getNum(ip.getProNum("江西"))%>;
 	 	 	 else if(name=="吉林")
  	 	 	 	return <%=ip.getNum(ip.getProNum("吉林"))%>;
  	 	 	else if(name=="江苏")
  	 	 	 	return <%=ip.getNum(ip.getProNum("江苏"))%>;
  	 	 	else if(name=="辽宁")
  	 	 	 	return <%=ip.getNum(ip.getProNum("辽宁"))%>;
  	 	 	else if(name=="内蒙古")
  	 	 	 	return <%=ip.getNum(ip.getProNum("内蒙古"))%>;
  	 	 	else if(name=="宁夏")
  	 	 	 	return <%=ip.getNum(ip.getProNum("宁夏"))%>;
  	 	 	else if(name=="青海")
  	 	 	 	return <%=ip.getNum(ip.getProNum("青海"))%>;
  	 	 	 	
  	 	 	else if(name=="山西")
  	 	 	 	return <%=ip.getNum(ip.getProNum("山西"))%>;
  	 	 	else if(name=="山东")
  	 	 	 	return <%=ip.getNum(ip.getProNum("山东"))%>;
  	 	 	else if(name=="陕西")
  	 	 	 	return <%=ip.getNum(ip.getProNum("陕西"))%>;
  	 	 	else if(name=="上海")
  	 	 	 	return <%=ip.getNum(ip.getProNum("上海"))%>;
  	 	 	 	
  	 	 	else if(name=="四川")
  	 	 	 	return <%=ip.getNum(ip.getProNum("四川"))%>;
  	 	 	else if(name=="天津")
  	 	 	 	return <%=ip.getNum(ip.getProNum("天津"))%>;
  	 	 	else if(name=="台湾")
  	 	 	 	return <%=ip.getNum(ip.getProNum("台湾"))%>;
  	 	 	else if(name=="西藏")
  	 	 	 	return <%=ip.getNum(ip.getProNum("西藏"))%>;
  	 	 	else if(name=="新疆")
  	 	 	 	return <%=ip.getNum(ip.getProNum("新疆"))%>;
  	 	 	else if(name=="香港")
  	 	 	 	return <%=ip.getNum(ip.getProNum("香港"))%>;
  	 	 	else if(name=="云南")
  	 	 	 	return <%=ip.getNum(ip.getProNum("云南"))%>;
  	 	 	else if(name=="浙江")
  	 	 	 	return <%=ip.getNum(ip.getProNum("浙江"))%>;
  	 	 	else return 1;
  	 	 	 	
 	 				
 			
 			
     		
		} 
		var mydata = [  
                {name: '北京',value: randomData("北京")},{name: '天津',value: randomData("天津") },  
                {name: '上海',value: randomData("上海") },{name: '重庆',value: randomData("重庆") },  
                {name: '河北',value: randomData("河北") },{name: '河南',value: randomData("河南") },  
                {name: '云南',value: randomData("云南") },{name: '辽宁',value: randomData("辽宁") },  
                {name: '黑龙江',value: randomData("黑龙江") },{name: '湖南',value: randomData("湖南") },  
                {name: '安徽',value: randomData("安徽") },{name: '山东',value: randomData("山东") },  
                {name: '新疆',value: randomData("新疆") },{name: '江苏',value: randomData("江苏") },  
                {name: '浙江',value: randomData("浙江") },{name: '江西',value: randomData("江西") },  
                {name: '湖北',value: randomData("湖北") },{name: '广西',value: randomData("广西") },  
                {name: '甘肃',value: randomData("甘肃") },{name: '山西',value: randomData("山西") },  
                {name: '内蒙古',value: randomData("内蒙古") },{name: '陕西',value: randomData("陕西") },  
                {name: '吉林',value: randomData("吉林") },{name: '福建',value: randomData("福建") },  
                {name: '贵州',value: randomData("贵州") },{name: '广东',value: randomData("广东") },  
                {name: '青海',value: randomData("青海") },{name: '西藏',value: randomData("西藏") },  
                {name: '四川',value: randomData("四川") },{name: '宁夏',value: randomData("宁夏") },  
                {name: '海南',value: randomData("海南") },{name: '台湾',value: randomData("台湾") },  
                {name: '香港',value: randomData("香港") },{name: '澳门',value: randomData("澳门") }  
            ];
		var optionMap = {  
                backgroundColor: '#FFFFFF',  
                title: {  
                    text: '全国地图大数据',  
                    subtext: '',  
                    x:'center'  
                },  
                tooltip : {  
                    trigger: 'item'  
                },  
                
                //左侧小导航图标
                visualMap: {  
                    show : true,  
                    x: 'left',  
                    y: 'center',  
                    splitList: [   
                        {start: 8000},{start: 3000, end: 8000},  
                        {start: 900, end: 3000},{start: 100, end: 900},  
                        {start: 1, end: 100},{value: 0},  
                    ],  
                    color: ['#730000', '#B40003', '#E25658','#DA9596', '#CEA8A8', '#FFFFFF']  
                   
                },  
                
                //配置属性
                series: [{  
                    name: '数据',  
                    type: 'map',  
                    mapType: 'china',   
                    roam: true,  
                    label: {  
                        normal: {  
                            show: true  //省份名称  
                        },  
                        emphasis: {  
                            show: false  
                        }  
                    },  
                    data:mydata  //数据
                }]  
            };  
        
		myChart.on('click',function(param){
			console.log(param.name)
			var urlArr=["provinceServlet?province=新疆","provinceServlet?province=西藏","provinceServlet?province=青海","provinceServlet?province=甘肃","provinceServlet?province=内蒙古",
					"provinceServlet?province=四川","provinceServlet?province=云南","provinceServlet?province=陕西","provinceServlet?province=重庆","provinceServlet?province=贵州",
					"provinceServlet?province=山西","provinceServlet?province=河南","provinceServlet?province=湖北","provinceServlet?province=湖南","provinceServlet?province=广西",
					"provinceServlet?province=北京","provinceServlet?province=河北","provinceServlet?province=天津","provinceServlet?province=山东","provinceServlet?province=江苏",
					"provinceServlet?province=安徽","provinceServlet?province=江西","provinceServlet?province=广东","provinceServlet?province=澳门","provinceServlet?province=海南",
					"provinceServlet?province=上海","provinceServlet?province=浙江","provinceServlet?province=福建","provinceServlet?province=黑龙江","provinceServlet?province=吉林",
					"provinceServlet?province=辽宁","provinceServlet?province=香港","provinceServlet?province=宁夏","provinceServlet?province=台湾"]
			switch(param.name){
				case '新疆':
					location.href = urlArr[0];
					break;
				case '西藏':
					location.href = urlArr[1];
					break;
				case '青海':
					location.href = urlArr[2];
					break;
				case '甘肃':
					location.href = urlArr[3];
					break;
				case '内蒙古':
					location.href = urlArr[4];
					break;
				case '四川':
					location.href = urlArr[5];
					break;
				case '云南':
					location.href = urlArr[6];
					break;
				case '陕西':
					location.href = urlArr[7];
					break;
				case '重庆':
					location.href = urlArr[8];
					break;
				case '贵州':
					location.href = urlArr[9];
					break;
				case '山西':
					location.href = urlArr[10];
					break;
				case '河南':
					location.href = urlArr[11];
					break;
				case '湖北':
					location.href = urlArr[12];
					break;
				case '湖南':
					location.href = urlArr[13];
					break;
				case '广西':
					location.href = urlArr[14];
					break;
				case '北京':
					location.href = urlArr[15];
					break;
				case '河北':
					location.href = urlArr[16];
					break;
				case '天津':
					location.href = urlArr[17];
					break;
				case '山东':
					location.href = urlArr[18];
					break;
				case '江苏':
					location.href = urlArr[19];
					break;
				case '安徽':
					location.href = urlArr[20];
					break;
				case '江西':
					location.href = urlArr[21];
					break;
				case '广东':
					location.href = urlArr[22];
					break;
				case '澳门':
					location.href = urlArr[23];
					break;
				case '海南':
					location.href = urlArr[24];
					break;
				case '上海':
					location.href = urlArr[25];
					break;
				case '浙江':
					location.href = urlArr[26];
					break;
				case '福建':
					location.href = urlArr[27];
					break;
				case '黑龙江':
					location.href = urlArr[28];
					break;
				case '吉林':
					location.href = urlArr[29];
					break;
				case '辽宁':
					location.href = urlArr[30];
					break;
				case '香港':
					location.href = urlArr[31];
					break;
				case '宁夏':
					location.href = urlArr[32];
					break;
				case '台湾':
					location.href = urlArr[33];
					break;
				default:
					break;
			}
		})
		
        //使用制定的配置项和数据显示图表
        myChart.setOption(optionMap);
	</script>
	<!--趋势图内联框架-->
	
	<div class="frame2">
		<iframe src="LineServlet" width="100%" height="650" frameborder="0"></iframe>
	</div>
	
	<!--防疫热搜-->
	<div id="prevent">
		<div class="text1">防疫热搜</div>
		<p><a class="aText1" href="https://www.baidu.com/s?wd=%E4%BB%80%E4%B9%88%E6%98%AF%E5%9B%BD%E5%AE%B6%E4%B8%80%E7%BA%A7%E5%93%8D%E5%BA%94&ie=utf-8&tn=06074089_18_pg&ch=9">1.什么是一级响应</a></p>
		<p><a class="aText2" href="https://www.baidu.com/s?wd=%20%E9%A2%84%E9%98%B2%E4%BC%A0%E6%9F%93%E7%97%85%E9%A1%BA%E5%8F%A3%E6%BA%9C&ie=utf-8&tn=06074089_18_pg&ch=9">2.预防传染病顺口溜</a></p>
		<p><a class="aText3" href="https://www.baidu.com/s?wd=%E4%BA%8C%E7%BA%A7%E5%93%8D%E5%BA%94%E5%92%8C%E4%B8%80%E7%BA%A7%E5%93%8D%E5%BA%94%E7%9A%84%E5%8C%BA%E5%88%AB&ie=utf-8&tn=06074089_18_pg&ch=9">3.二级响应和一级响应的区别</a></p>
		<p><a class="aText4" href="https://www.baidu.com/s?wd=%E6%B6%88%E6%AF%92%E5%89%82%E4%BD%BF%E7%94%A8%E6%9D%83%E5%A8%81%E6%8C%87%E5%8D%97&ie=utf-8&tn=06074089_18_pg&ch=9">4.消毒剂使用权威指南</a></p>
		<p><a class="aText5" href="https://www.baidu.com/s?wd=%E5%9B%BD%E5%AE%B6%E7%AA%81%E5%8F%91%E5%85%AC%E5%85%B1%E5%8D%AB%E7%94%9F%E4%BA%8B%E4%BB%B6%E5%BA%94%E6%80%A5%E9%A2%84%E6%A1%88&ie=utf-8&tn=06074089_18_pg&ch=9">5.国家突发突发卫生事件应急预案</a></p>
	</div>
	
	<div id="rumor"><!--热搜谣言粉碎-->
		<div class="text1">热搜谣言粉碎</div>
		<p><a class="aText1" href="https://www.baidu.com/s?wd=%E5%9B%9B%E6%9C%88%E5%BA%95%E5%89%8D%E7%A6%81%E5%8A%9E%E9%9B%86%E8%81%9A%E6%80%A7%E8%B5%9B%E4%BA%8B&ie=utf-8&tn=06074089_18_pg&ch=9">1.四月底前禁办聚集性赛事</a></p>
		<p><a class="aText2" href="https://www.baidu.com/s?wd=CN95%E8%AE%A4%E8%AF%81%E8%BD%A6%E5%8F%AF%E8%BF%87%E6%BB%A4%E7%97%85%E6%AF%92&ie=utf-8&tn=06074089_18_pg&ch=9">2.CN95认证车可过滤病毒</a></p>
		<p><a class="aText3" href="https://www.baidu.com/s?wd=%E5%8C%97%E4%BA%AC%E8%A6%81%E5%BB%BA%E6%96%B9%E8%88%B1%E5%8C%BB%E9%99%A2&ie=utf-8&tn=06074089_18_pg&ch=9">3.北京要减方舱医院</a></p>
		<p><a class="aText4" href="https://www.baidu.com/s?wd=%E6%AD%A6%E6%B1%89%E5%85%BB%E8%80%81%E9%99%A2%E7%99%BE%E4%BD%99%E8%80%81%E4%BA%BA%E5%85%A8%E6%84%9F%E6%9F%93&ie=utf-8&tn=06074089_18_pg&ch=9">4.武汉养老院百名老人全感染</a></p>
		<p><a class="aText5" href="https://www.baidu.com/s?wd=%E6%B8%A9%E5%B7%9E%E5%8F%91%E7%94%9F%E7%88%86%E5%8F%91%E6%80%A7%E6%84%9F%E6%9F%93&ie=utf-8&tn=06074089_18_pg&ch=9">5.温州发生爆发性感染</a></p>
	</div>
	
	<div id="diseaseMap">
		<p>附近疫情场所</p>
		<div class="frame1">
		<iframe src="https://map.baidu.com/search/%E6%96%B0%E5%86%A0%E7%97%85%E4%BE%8B%E6%9B%BE%E6%B4%BB%E5%8A%A8%E5%9C%BA%E6%89%80/@13450527.46,3653692.84,11.28z?querytype=s&c=18&wd=%E6%96%B0%E5%86%A0%E7%97%85%E4%BE%8B%E6%9B%BE%E6%B4%BB%E5%8A%A8%E5%9C%BA%E6%89%80&da_src=shareurl&on_gel=1&l=11&gr=1&b=(13350159.300504697,3596466.1323789437;13552137.551925099,3692405.801803633)&pn=0&device_ratio=1" width="100%" height="650"></iframe>
		</div>
	</div>
	
	
</body>
</html>
