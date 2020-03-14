<%@ page import="edu.fzu.infectStatisticWeb.pojo.*,java.util.*" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>疫情折线图</title>
    <!-- 引入 echarts.js -->
    <script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
</head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <%List<Ip> ips = (List)request.getAttribute("ips");
    List<Sp> sps = (List)request.getAttribute("sps");
    List<Cure> cures = (List)request.getAttribute("cures");
    List<Dead> deads = (List)request.getAttribute("deads");
    String province = (String)request.getAttribute("province");%>
    <div id="main" style="width: 1200px;height:600px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        // 指定图表的配置项和数据
        var a = new Array(15);
        a[0] = ${ips.get(0).getNum(province)};
        a[1] = ${ips.get(1).getNum(province)};
        a[2] = ${ips.get(2).getNum(province)};
        a[3] = ${ips.get(3).getNum(province)};
        a[4] = ${ips.get(4).getNum(province)};
        a[5] = ${ips.get(5).getNum(province)};
        a[6] = ${ips.get(6).getNum(province)};
        a[7] = ${ips.get(7).getNum(province)};
        a[8] = ${ips.get(8).getNum(province)};
        a[9] = ${ips.get(9).getNum(province)};
        a[10] = ${ips.get(10).getNum(province)};
        a[11] = ${ips.get(11).getNum(province)};
        a[12] = ${ips.get(12).getNum(province)};
        a[13] = ${ips.get(13).getNum(province)};
        a[14] = ${ips.get(14).getNum(province)};
        var b = new Array(15);
        b[0] = ${sps.get(0).getNum(province)};
        b[1] = ${sps.get(1).getNum(province)};
        b[2] = ${sps.get(2).getNum(province)};
        b[3] = ${sps.get(3).getNum(province)};
        b[4] = ${sps.get(4).getNum(province)};
        b[5] = ${sps.get(5).getNum(province)};
        b[6] = ${sps.get(6).getNum(province)};
        b[7] = ${sps.get(7).getNum(province)};
        b[8] = ${sps.get(8).getNum(province)};
        b[9] = ${sps.get(9).getNum(province)};
        b[10] = ${sps.get(10).getNum(province)};
        b[11] = ${sps.get(11).getNum(province)};
        b[12] = ${sps.get(12).getNum(province)};
        b[13] = ${sps.get(13).getNum(province)};
        b[14] = ${sps.get(14).getNum(province)};
        var c = new Array(15);
        c[0] = ${cures.get(0).getNum(province)};
        c[1] = ${cures.get(1).getNum(province)};
        c[2] = ${cures.get(2).getNum(province)};
        c[3] = ${cures.get(3).getNum(province)};
        c[4] = ${cures.get(4).getNum(province)};
        c[5] = ${cures.get(5).getNum(province)};
        c[6] = ${cures.get(6).getNum(province)};
        c[7] = ${cures.get(7).getNum(province)};
        c[8] = ${cures.get(8).getNum(province)};
        c[9] = ${cures.get(9).getNum(province)};
        c[10] = ${cures.get(10).getNum(province)};
        c[11] = ${cures.get(11).getNum(province)};
        c[12] = ${cures.get(12).getNum(province)};
        c[13] = ${cures.get(13).getNum(province)};
        c[14] = ${cures.get(14).getNum(province)};
        var d = new Array(15);
        d[0] = ${deads.get(0).getNum(province)};
        d[1] = ${deads.get(1).getNum(province)};
        d[2] = ${deads.get(2).getNum(province)};
        d[3] = ${deads.get(3).getNum(province)};
        d[4] = ${deads.get(4).getNum(province)};
        d[5] = ${deads.get(5).getNum(province)};
        d[6] = ${deads.get(6).getNum(province)};
        d[7] = ${deads.get(7).getNum(province)};
        d[8] = ${deads.get(8).getNum(province)};
        d[9] = ${deads.get(9).getNum(province)};
        d[10] = ${deads.get(10).getNum(province)};
        d[11] = ${deads.get(11).getNum(province)};
        d[12] = ${deads.get(12).getNum(province)};
        d[13] = ${deads.get(13).getNum(province)};
        d[14] = ${deads.get(14).getNum(province)};
        var option = {
            title: {
                text: '疫情折线图'
            },
            tooltip: {},
            legend: {
                data:['确诊患者','疑似患者','治愈人数','死亡人数']
            },
            xAxis: {
                data: [
                	"01-19","01-20","01-21","01-22",
                	"01-23","01-24","01-25","01-26",
                	"01-27","01-28","01-29","01-30",
                	"01-31","02-01","02-02"
                	]
            },
            yAxis: {},
            series: [
            	{
                name: '确诊患者',
                type: 'line',
                data: [
                	a[0],a[1],a[2],a[3],
                	a[4],a[5],a[6],a[7],
                	a[8],a[9],a[10],a[11],
                	a[12],a[13],a[14]
                ]
            	},
            	{
                    name: '疑似患者',
                    type: 'line',
                    data: [
                    	b[0],b[1],b[2],b[3],
                    	b[4],b[5],b[6],b[7],
                    	b[8],b[9],b[10],b[11],
                    	b[12],b[13],b[14]
                    ]
                	},
            	{
                    name: '治愈人数',
                    type: 'line',
                    data: [
                    	c[0],c[1],c[2],c[3],
                    	c[4],c[5],c[6],c[7],
                    	c[8],c[9],c[10],c[11],
                    	c[12],c[13],c[14]
                    ]
                	},
            	{
                    name: '死亡人数',
                    type: 'line',
                    data: [
                    	d[0],d[1],d[2],d[3],
                    	d[4],d[5],d[6],d[7],
                    	d[8],d[9],d[10],d[11],
                    	d[12],d[13],d[14]
                    ]
                	}
            	///TODO 添加别的折线
            ]
        };
 
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</body>
</html>