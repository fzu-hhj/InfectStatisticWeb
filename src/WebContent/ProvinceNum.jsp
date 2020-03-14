<%@ page import="edu.fzu.infectStatisticWeb.pojo.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>省份数据</title>
<script src="js/echarts.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/mainPage.css">
</head>
<body>
<%
	String provinceName = (String)request.getAttribute("province");
	Ip ip = (Ip)request.getAttribute("ip");
	Sp sp = (Sp)request.getAttribute("sp");
	Cure cure = (Cure)request.getAttribute("cure");
	Dead dead = (Dead)request.getAttribute("dead");
	
%>
	<form action="provinceServlet?province=<%=provinceName %>" method="post">
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
		<p><%=provinceName %></p>
		<div class="rectangle" id="rt1"> 
			<p class="dataText1" id="dt1">现有确诊</p>
			<p class="dataText2" id="dt2"><%=ip.getNum(provinceName)%>人</p>
			
		</div>
		<!--现有疑似数据-->
		<div class="rectangle" id="rt2"> 
			<p class="dataText1" id="dt5">现有疑似</p>
			<p class="dataText2" id="dt6"><%=sp.getNum(provinceName) %>人</p>
			
		</div>
		<!--现有重症数据-->
		<div class="rectangle" id="rt3">
			<p class="dataText1" id="dt9">现有重症</p>
			<p class="dataText2" id="dt10"><%=(ip.getNum(provinceName)/3) %>人</p>
			
		</div>
		<!--累计确诊数据-->
		<div class="rectangle" id="rt4">
			<p class="dataText1" id="dt13">累计确诊</p>
			<p class="dataText2" id="dt14"><%=ip.getNum(provinceName)+sp.getNum(provinceName)+cure.getNum(provinceName) %>人</p>
			
		</div>
		<!--累计治愈数据-->
		<div class="rectangle" id="rt5">
			<p class="dataText1" id="dt17">累计治愈</p>
			<p class="dataText2" id="dt18"><%=cure.getNum(provinceName)%>人</p>
			
		</div>
		<!--累计死亡数据-->
		<div class="rectangle" id="rt6">
			<p class="dataText1" id="dt21">累计死亡</p>
			<p class="dataText2" id="dt22"><%=dead.getNum(provinceName)%>人</p>
			
		</div>
	</div>
	
	<div class="frame2">
		<iframe src="LineServlet?province=${province}" width="100%" height="650" frameborder="0"></iframe>
	</div>
</body>
</html>