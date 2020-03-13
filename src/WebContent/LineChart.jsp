<%@ page import="edu.fzu.infectStatisticWeb.pojo.*,java.util.*" %>
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
    List<Sp> sps = (List)request.getAttribute("sps");
    List<Cure> cures = (List)request.getAttribute("cures");
    List<Dead> deads = (List)request.getAttribute("deads");
    int proNum = (int)request.getAttribute("proNum");%>
    <%--for(Ip ip : ips){
    	out.print(ip.getIpNum()[0]+ " ");
    }
    
    --%>
    <div id="main" style="width: 1200px;height:600px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        // 指定图表的配置项和数据
        var a = new Array(15);
        a[0] = ${ips.get(0).getNum()[proNum]};
        a[1] = ${ips.get(1).getNum()[proNum]};
        a[2] = ${ips.get(2).getNum()[proNum]};
        a[3] = ${ips.get(3).getNum()[proNum]};
        a[4] = ${ips.get(4).getNum()[proNum]};
        a[5] = ${ips.get(5).getNum()[proNum]};
        a[6] = ${ips.get(6).getNum()[proNum]};
        a[7] = ${ips.get(7).getNum()[proNum]};
        a[8] = ${ips.get(8).getNum()[proNum]};
        a[9] = ${ips.get(9).getNum()[proNum]};
        a[10] = ${ips.get(10).getNum()[proNum]};
        a[11] = ${ips.get(11).getNum()[proNum]};
        a[12] = ${ips.get(12).getNum()[proNum]};
        a[13] = ${ips.get(13).getNum()[proNum]};
        a[14] = ${ips.get(14).getNum()[proNum]};
        var b = new Array(15);
        /*for(i = 0;i < 15 ;i++){
        	b[i] = 2000 ;
        }*/
        b[0] = ${sps.get(0).getNum()[proNum]};
        b[1] = ${sps.get(1).getNum()[proNum]};
        b[2] = ${sps.get(2).getNum()[proNum]};
        b[3] = ${sps.get(3).getNum()[proNum]};
        b[4] = ${sps.get(4).getNum()[proNum]};
        b[5] = ${sps.get(5).getNum()[proNum]};
        b[6] = ${sps.get(6).getNum()[proNum]};
        b[7] = ${sps.get(7).getNum()[proNum]};
        b[8] = ${sps.get(8).getNum()[proNum]};
        b[9] = ${sps.get(9).getNum()[proNum]};
        b[10] = ${sps.get(10).getNum()[proNum]};
        b[11] = ${sps.get(11).getNum()[proNum]};
        b[12] = ${sps.get(12).getNum()[proNum]};
        b[13] = ${sps.get(13).getNum()[proNum]};
        b[14] = ${sps.get(14).getNum()[proNum]};
        var c = new Array(15);
        /*for(i = 0;i < 15 ;i++){
        	c[i] = 4000;
        }*/
        c[0] = ${cures.get(0).getNum()[proNum]};
        c[1] = ${cures.get(1).getNum()[proNum]};
        c[2] = ${cures.get(2).getNum()[proNum]};
        c[3] = ${cures.get(3).getNum()[proNum]};
        c[4] = ${cures.get(4).getNum()[proNum]};
        c[5] = ${cures.get(5).getNum()[proNum]};
        c[6] = ${cures.get(6).getNum()[proNum]};
        c[7] = ${cures.get(7).getNum()[proNum]};
        c[8] = ${cures.get(8).getNum()[proNum]};
        c[9] = ${cures.get(9).getNum()[proNum]};
        c[10] = ${cures.get(10).getNum()[proNum]};
        c[11] = ${cures.get(11).getNum()[proNum]};
        c[12] = ${cures.get(12).getNum()[proNum]};
        c[13] = ${cures.get(13).getNum()[proNum]};
        c[14] = ${cures.get(14).getNum()[proNum]};
        var d = new Array(15);
        /*for(i = 0;i < 15 ;i++){
        	d[i] = 6000;
        }*/
        d[0] = ${deads.get(0).getNum()[proNum]};
        d[1] = ${deads.get(1).getNum()[proNum]};
        d[2] = ${deads.get(2).getNum()[proNum]};
        d[3] = ${deads.get(3).getNum()[proNum]};
        d[4] = ${deads.get(4).getNum()[proNum]};
        d[5] = ${deads.get(5).getNum()[proNum]};
        d[6] = ${deads.get(6).getNum()[proNum]};
        d[7] = ${deads.get(7).getNum()[proNum]};
        d[8] = ${deads.get(8).getNum()[proNum]};
        d[9] = ${deads.get(9).getNum()[proNum]};
        d[10] = ${deads.get(10).getNum()[proNum]};
        d[11] = ${deads.get(11).getNum()[proNum]};
        d[12] = ${deads.get(12).getNum()[proNum]};
        d[13] = ${deads.get(13).getNum()[proNum]};
        d[14] = ${deads.get(14).getNum()[proNum]};
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