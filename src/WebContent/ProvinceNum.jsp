<%@ page import="edu.fzu.infectStatisticWeb.pojo.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>省份</title>
<script src="js/echarts.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/mainPage.css">
</head>
<body>
<%String province = (String)request.getAttribute("province");
	Ip ip = (Ip)request.getAttribute("ip");
	Sp sp = (Sp)request.getAttribute("sp");
	Cure cure = (Cure)request.getAttribute("cure");
	Dead dead = (Dead)request.getAttribute("dead");
%>
	<form action="provinceServlet?province=安徽" method="post">
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
<div class="" id="data" >
		<!--现有确诊数据-->
		<p><%=province %></p>
		<div class="rectangle" id="rt1"> 
			<p class="dataText1" id="dt1">现有确诊</p>
			<p class="dataText2" id="dt2"><%=ip.getNum(province)%>人</p>
			<p class="dataText3" id="dt3">昨日</p>
			<p class="dataText4" id="dt4">+</p>
		</div>
		<!--现有疑似数据-->
		<div class="rectangle" id="rt2"> 
			<p class="dataText1" id="dt5">现有疑似</p>
			<p class="dataText2" id="dt6"><%=sp.getNum(province) %>人</p>
			<p class="dataText3" id="dt7">昨日</p>
			<p class="dataText4" id="dt8">+</p>
		</div>
		<!--现有重症数据-->
		<div class="rectangle" id="rt3">
			<p class="dataText1" id="dt9">现有重症</p>
			<p class="dataText2" id="dt10"><%=(ip.getNum(province)/3) %>人</p>
			<p class="dataText3" id="dt11">昨日</p>
			<p class="dataText4" id="dt12">+</p>
		</div>
		<!--累计确诊数据-->
		<div class="rectangle" id="rt4">
			<p class="dataText1" id="dt13">累计确诊</p>
			<p class="dataText2" id="dt14"><%=ip.getNum(province)+sp.getNum(province)+cure.getNum(province) %>人</p>
			<p class="dataText3" id="dt15">昨日</p>
			<p class="dataText4" id="dt16">+</p>
		</div>
		<!--累计治愈数据-->
		<div class="rectangle" id="rt5">
			<p class="dataText1" id="dt17">累计治愈</p>
			<p class="dataText2" id="dt18"><%=cure.getNum(province)%>人</p>
			<p class="dataText3" id="dt19">昨日</p>
			<p class="dataText4" id="dt20">+</p>
		</div>
		<!--累计死亡数据-->
		<div class="rectangle" id="rt6">
			<p class="dataText1" id="dt21">累计死亡</p>
			<p class="dataText2" id="dt22"><%=dead.getNum(province)%>人</p>
			<p class="dataText3" id="dt23">昨日</p>
			<p class="dataText4" id="dt24">+1</p>
		</div>
	</div>
	
	<div class="frame2">
		<iframe src="LineServlet?province=<%=province%>" width="100%" height="650" frameborder="0"></iframe>
	</div>
</body>
</html>