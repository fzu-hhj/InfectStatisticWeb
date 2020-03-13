<%@ page import="edu.fzu.infectStatisticWeb.pojo.Ip,java.util.*" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>第一个 ECharts 实例</title>
    <!-- 引入 echarts.js -->
    <script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
</head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <%List<Ip> ips = (List)request.getAttribute("ips");
    int proNum = (int)request.getAttribute("proNum");%>
    <%--for(Ip ip : ips){
    	out.print(ip.getIpNum()[0]+ " ");
    }
    
    --%>
    <div id="main" style="width: 1200px;height:400px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        // 指定图表的配置项和数据
        var a = new Array(15);
        a[0] = ${ips.get(0).getIpNum()[proNum]};
        a[1] = ${ips.get(1).getIpNum()[proNum]};
        a[2] = ${ips.get(2).getIpNum()[proNum]};
        a[3] = ${ips.get(3).getIpNum()[proNum]};
        a[4] = ${ips.get(4).getIpNum()[proNum]};
        a[5] = ${ips.get(5).getIpNum()[proNum]};
        a[6] = ${ips.get(6).getIpNum()[proNum]};
        a[7] = ${ips.get(7).getIpNum()[proNum]};
        a[8] = ${ips.get(8).getIpNum()[proNum]};
        a[9] = ${ips.get(9).getIpNum()[proNum]};
        a[10] = ${ips.get(10).getIpNum()[proNum]};
        a[11] = ${ips.get(11).getIpNum()[proNum]};
        a[12] = ${ips.get(12).getIpNum()[proNum]};
        a[13] = ${ips.get(13).getIpNum()[proNum]};
        a[14] = ${ips.get(14).getIpNum()[proNum]};
        var b = new Array(15);
        for(i = 0;i < 15 ;i++){
        	b[i] = 2000;
        }
        var c = new Array(15);
        for(i = 0;i < 15 ;i++){
        	c[i] = 4000;
        }
        var d = new Array(15);
        for(i = 0;i < 15 ;i++){
        	d[i] = 6000;
        }
        var option = {
            title: {
                text: '疫情折线图'
            },
            tooltip: {},
            legend: {
                data:['ip','sp','cure','dead']
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
                name: 'ip',
                type: 'line',
                data: [
                	a[0],a[1],a[2],a[3],
                	a[4],a[5],a[6],a[7],
                	a[8],a[9],a[10],a[11],
                	a[12],a[13],a[14]
                ]
            	},
            	{
                    name: 'sp',
                    type: 'line',
                    data: [
                    	b[0],b[1],b[2],b[3],
                    	b[4],b[5],b[6],b[7],
                    	b[8],b[9],b[10],b[11],
                    	b[12],b[13],b[14]
                    ]
                	},
            	{
                    name: 'cure',
                    type: 'line',
                    data: [
                    	c[0],c[1],c[2],c[3],
                    	c[4],c[5],c[6],c[7],
                    	c[8],c[9],c[10],c[11],
                    	c[12],c[13],c[14]
                    ]
                	},
            	{
                    name: 'dead',
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