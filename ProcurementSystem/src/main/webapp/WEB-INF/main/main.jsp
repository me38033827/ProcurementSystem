<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>主页</title>
<%@include file="../other/header1.jsp"%>
<%@include file="../other/header2.jsp"%>
<%@include file="../other/header3.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body class="a-dashbrd-page-bg">
	<div class="content">

		<!--主要内容  -->
		<div class="container">
			<!-- 第一行内容 -->
			<div class="row">
				<div class="col-md-2">
					<div class="module-left">
						<div class="module-head">通用操作</div>

						<div class="module">
							<div class="div-padding-left">
								<table class="table-left">
									<tr>
										<th>创建</th>
									</tr>
									<tr>
										<td><a class="secondline-right"
											href="sourcingCreation.jsp">寻源项目</a></td>
									</tr>
									<tr>
										<td><a class="secondline-right"
											href="supplierCreation.jsp">供应商</a></td>
									</tr>

									<tr>
										<td><a class="secondline-right"
											href="contractWorkspaceCreation.jsp">合同</a></td>
									</tr>

									<tr>
										<td><a class="secondline-right"
											href="procurementCatalogCreation.jsp">商品目录</a></td>
									</tr>

									<tr>
										<td><a class="secondline-right" href="prCreation.jsp">请购单</a></td>
									</tr>

									<tr>
										<td><a class="secondline-right"
											href="invoiceCreation.jsp">发票</a></td>
									</tr>

									<tr>
										<td><a class="secondline-right"
											href="templateCreate.jsp">模版</a></td>
									</tr>

									<tr>
										<td><a class="secondline-right"
											href="approvalCreation.jsp">审批</a></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-10">
					<div>
						<div class="charts">
							<div class="container-chart">
								<div class="chart" id="chart1"></div>
							</div>
							<div class="container-chart">
								<div class="chart" id="chart2"></div>
							</div>
							<div class="container-chart">
								<div class="chart" id="chart3"></div>
							</div>
							<div class="container-chart">
								<div class="chart" id="chart4" style="margin: 0px"></div>
							</div>
						</div>

						<div style="clear: left">
							<div class="module-head">新闻</div>
							<div class="module">
								<div class="div-padding-left">
									<table>
										<tr>
											<td>系统管理员尚未配置公司新闻内容</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 第二行内容 -->
			<div class="row">
				<div class="col-md-2">
					<div class="module-left">
						<div class="module-head">最近查看的内容</div>
						<div class="module">
							<div class="div-padding-left">
								<table>
									<tr>
										<td>惠普（北京）</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="module-head">我的文档</div>
					<div class="module">
						<table class="table table-hover">
							<tr>
								<th>标题</th>
								<th>日期&#8595;</th>
								<th>状态</th>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="col-md-5">
					<div class="module-head">待办任务</div>
					<div class="module">
						<table class="table table-hover">
							<tr>
								<th>日期&#8595;</th>
								<th>标题</th>
								<th>状态</th>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<!-- 第三行内容 -->
			<div class="row">
				<div class="col-md-2">
					<div class="module-left">
						<div class="module-head">受监视的项目</div>
						<div class="module">
							<table class="table table-hover">
								<tr>
									<th>名称</th>
								</tr>
								<tr>
									<td></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="module-head">通知</div>
					<div class="module">
						<table class="table table-hover">
							<tr>
								<th>发件人</th>
								<th>主题</th>
								<th>接收时间</th>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="col-md-5">
					<div class="module-head">事件状态（前12个月）</div>
					<div class="module">
						<table class="table table-hover">
							<tr>
								<th></th>
								<th>信息请求</th>
								<th>提案请求</th>
								<th>竞标</th>
								<th>调查</th>
							</tr>
							<tr>
								<td>草稿</td>
								<td><a href="#">5</a></td>
								<td><a href="#">23</a></td>
								<td><a href="#">203</a></td>
								<td><a href="#">32</a></td>
							</tr>
							<tr>
								<td>预览</td>
								<td><a href="#">34</a></td>
								<td><a href="#">53</a></td>
								<td><a href="#">112</a></td>
								<td><a href="#">321</a></td>
							</tr>
							<tr>
								<td>开放</td>
								<td><a href="#">12</a></td>
								<td><a href="#">678</a></td>
								<td><a href="#">54</a></td>
								<td><a href="#">78</a></td>

							</tr>
							<tr>
								<td>未决选择</td>
								<td><a href="#">42</a></td>
								<td><a href="#">87</a></td>
								<td><a href="#">34</a></td>
								<td><a href="#">97</a></td>
							</tr>
							<tr>
								<td>已完成</td>
								<td><a href="#">83</a></td>
								<td><a href="#">432</a></td>
								<td><a href="#">221</a></td>
								<td><a href="#">113</a></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<!-- 第四行内容 -->
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-5">
					<div class="module-head">2017年8月</div>
					<div class="module" style="padding: 0px 1px 1px 1px;">
						<table class="table calendar">
							<tr>
								<th>一</th>
								<th>二</th>
								<th>三</th>
								<th>四</th>
								<th>五</th>
								<th>六/日</th>
							</tr>
							<tr>
								<td></td>
								<td>1</td>
								<td>2</td>
								<td>3</td>
								<td>4</td>
								<td>5/6</td>
							</tr>
							<tr>
								<td>7</td>
								<td>8</td>
								<td>9</td>
								<td>10</td>
								<td>11</td>
								<td>12/13</td>
							</tr>
							<tr>
								<td>14</td>
								<td>15</td>
								<td>16</td>
								<td>17</td>
								<td>18</td>
								<td>19/20</td>
							</tr>
							<tr>
								<td>21</td>
								<td>22</td>
								<td>23</td>
								<td>24</td>
								<td>25</td>
								<td>26/27</td>
							</tr>
							<tr>
								<td>28</td>
								<td>29</td>
								<td>30</td>
								<td>31</td>
								<td></td>
								<td></td>
							</tr>
						</table>
						<div>
							<div class="calendar-head">
								<a href="#">过期 (24)</a>
							</div>
							<table>
								<tr>
									<td>准备采购请求 (tank buy )
									<td>
								<tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="../other/footer.jsp"%>

	<script type="text/javascript">
		$("#main").attr('class',"header-clicked secondline-left");
		/*图标初始化  */
		var myChart1 = echarts.init(document.getElementById('chart1'));
		var myChart2 = echarts.init(document.getElementById('chart2'));
		var myChart3 = echarts.init(document.getElementById('chart3'));
		var myChart4 = echarts.init(document.getElementById('chart4'));
		option1 = {
			title : {
				text : '事件状态',
				subtext : '',
				x : 'center'
			},
			tooltip : {
				trigger : 'item',
				formatter : "{a} <br/>{b} : {c} ({d}%)"
			},
			legend : {
				orient : 'horizontal',
				bottom : "5%",
				data : [ '草稿', '预览', '开放', '已完成' ]
			},
			series : [ {
				name : '访问来源',
				type : 'pie',
				radius : ['20%','40%'],
				center : [ '50%', '40%' ],
				data : [ {
					value : 335,
					name : '草稿'
				}, {
					value : 310,
					name : '预览'
				}, {
					value : 234,
					name : '开放'
				}, {
					value : 135,
					name : '已完成'
				} ],
				itemStyle : {
					emphasis : {
						shadowBlur : 10,
						shadowOffsetX : 0,
						shadowColor : 'rgba(0, 0, 0, 0.5)'
					}
				}
			} ],
			
			backgroundColor : "#fff",
			color:[
			       '#2ec7c9','#b6a2de','#5ab1ef','#ffb980','#d87a80',
			        '#8d98b3','#e5cf0d','#97b552','#95706d','#dc69aa',
			        '#07a2a4','#9a7fd1','#588dd5','#f5994e','#c05050',
			        '#59678c','#c9ab00','#7eb00a','#6f5553','#c14089'
                ]
		};
		option2 = {
			    title : {
							text : '供应商审批',
							subtext : '',
							x : 'center'
						},
			   xAxis : [
			            {
			                type : 'category',
			　　　　　　　　//这是设置的false，就不不显示下方的x轴，默认是true的
			                show: false,
			　　　　　　　　//这里呢，就是每个柱的name了，根据实际情况下就好了，我就先写这三个
			                data : ['已拒绝','已批准','未决'],
			                axisLabel: {
			　　　　　　　　　　　　　//这个是倾斜角度，也是考虑到文字过多的时候，方式覆盖采用倾斜
//			                     rotate: 30,
			　　　　　　　　　　　　//这里是考虑到x轴文件过多的时候设置的，如果文字太多，默认是间隔显示，设置为0，标示全部显示，当然，如果x轴都不显示，那也就没有意义了
			                    interval :0
			                    }
			            }
			        ],
			        yAxis : [
			            {			
			                type : 'value',
			                name:'数量',
			　　　　　　　　　　//下面的就很简单了，最小是多少，最大是多少，默认一次增加多少
			                 min: 0,
			                 max: 1000,
			                 interval: 6,
			　　　　　　　　　　//下面是显示格式化，一般来说还是用的上的
			                 axisLabel: {
			                     formatter: '{value} 包'
			                 },
			                 show:false
			            }
			        ],
			        series : [
			            {
			                name: '数量',
			                type: 'bar',
			                itemStyle: {
			                    normal: {
			　　　　　　　　　　　　　　//好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
			                        color: function(params) {
			                            // build a color map as your need.
			                            var colorList = [
			                              
			       '#2ec7c9','#b6a2de','#5ab1ef','#ffb980','#d87a80',
			        '#8d98b3','#e5cf0d','#97b552','#95706d','#dc69aa',
			        '#07a2a4','#9a7fd1','#588dd5','#f5994e','#c05050',
			        '#59678c','#c9ab00','#7eb00a','#6f5553','#c14089'
               
			                            ];
			                            return colorList[params.dataIndex]
			                        },
			　　　　　　　　　　　　　　//以下为是否显示，显示位置和显示格式的设置了
			                        label: {
			                            show: true,
			                            position: 'top',
//			                             formatter: '{c}'
			                            formatter: '{b}\n{c}'
			                        }
			                    }
			                },
			　　　　　　　　//设置柱的宽度，要是数据太少，柱子太宽不美观~
			　　　　　　　  barWidth:40,
			                data: [280,715,90]
			            }
			        ],
					backgroundColor:"#fff"
			};

		option3 = {
			    title : {
							text : '我的任务',
							subtext : '',
							x : 'center'
						},
			   xAxis : [
			            {
			                type : 'category',
			　　　　　　　　//这是设置的false，就不不显示下方的x轴，默认是true的
			                show: false,
			　　　　　　　　//这里呢，就是每个柱的name了，根据实际情况下就好了，我就先写这三个
			                data : ['过期','本周','本月'],
			                axisLabel: {
			　　　　　　　　　　　　　//这个是倾斜角度，也是考虑到文字过多的时候，方式覆盖采用倾斜
//			                     rotate: 30,
			　　　　　　　　　　　　//这里是考虑到x轴文件过多的时候设置的，如果文字太多，默认是间隔显示，设置为0，标示全部显示，当然，如果x轴都不显示，那也就没有意义了
			                    interval :0
			                    }
			            }
			        ],
			        yAxis : [
			            {
			                type : 'value',
			                name:'数量',
			　　　　　　　　　　//下面的就很简单了，最小是多少，最大是多少，默认一次增加多少
			                 min: 0,
			                 max: 500,
			                 interval: 6,
			　　　　　　　　　　//下面是显示格式化，一般来说还是用的上的
			                 axisLabel: {
			                     formatter: '{value} 包'
			                 },
			                 show:false
			            }
			        ],
			        series : [
			            {
			                name: '数量',
			                type: 'bar',
			                itemStyle: {
			                    normal: {
			　　　　　　　　　　　　　　//好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
			                        color: function(params) {
			                            // build a color map as your need.
			                            var colorList = [
'#2ec7c9','#b6a2de','#5ab1ef','#ffb980','#d87a80',
'#8d98b3','#e5cf0d','#97b552','#95706d','#dc69aa',
'#07a2a4','#9a7fd1','#588dd5','#f5994e','#c05050',
'#59678c','#c9ab00','#7eb00a','#6f5553','#c14089'
			                            ];
			                            return colorList[params.dataIndex]
			                        },
			　　　　　　　　　　　　　　//以下为是否显示，显示位置和显示格式的设置了
			                        label: {
			                            show: true,
			                            position: 'top',
//			                             formatter: '{c}'
			                            formatter: '{b}\n{c}'
			                        }
			                    }
			                },
			　　　　　　　　//设置柱的宽度，要是数据太少，柱子太宽不美观~
			　　　　　　　  barWidth:40,
			                data: [123,239,200]
			            }
			        ],
					backgroundColor:"#fff"
			};
		
		option4 = {
			    title : {
							text : '即将失效的合同',
							subtext : '',
							x : 'center'
						},
			   xAxis : [
			            {
			                type : 'category',
			　　　　　　　　//这是设置的false，就不不显示下方的x轴，默认是true的
			                show: false,
			　　　　　　　　//这里呢，就是每个柱的name了，根据实际情况下就好了，我就先写这三个
			                data : ['已过期','7天','30天'],
			                axisLabel: {
			　　　　　　　　　　　　　//这个是倾斜角度，也是考虑到文字过多的时候，方式覆盖采用倾斜
//			                     rotate: 30,
			　　　　　　　　　　　　//这里是考虑到x轴文件过多的时候设置的，如果文字太多，默认是间隔显示，设置为0，标示全部显示，当然，如果x轴都不显示，那也就没有意义了
			                    interval :0
			                    }
			            }
			        ],
			        yAxis : [
			            {
			                type : 'value',
			                name:'数量',
			　　　　　　　　　　//下面的就很简单了，最小是多少，最大是多少，默认一次增加多少
			                 min: 0,
			                 max: 500,
			                 interval: 6,
			　　　　　　　　　　//下面是显示格式化，一般来说还是用的上的
			                 axisLabel: {
			                     formatter: '{value} 包'
			                 },
			                 show:false
			            }
			        ],
			        series : [
			            {
			                name: '数量',
			                type: 'bar',
			                itemStyle: {
			                    normal: {
			　　　　　　　　　　　　　　//好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
			                        color: function(params) {
			                            // build a color map as your need.
			                            var colorList = [
'#2ec7c9','#b6a2de','#5ab1ef','#ffb980','#d87a80',
'#8d98b3','#e5cf0d','#97b552','#95706d','#dc69aa',
'#07a2a4','#9a7fd1','#588dd5','#f5994e','#c05050',
'#59678c','#c9ab00','#7eb00a','#6f5553','#c14089'
			                            ];
			                            return colorList[params.dataIndex]
			                        },
			　　　　　　　　　　　　　　//以下为是否显示，显示位置和显示格式的设置了
			                        label: {
			                            show: true,
			                            position: 'top',
//			                             formatter: '{c}'
			                            formatter: '{b}\n{c}'
			                        }
			                    }
			                },
			　　　　　　　　//设置柱的宽度，要是数据太少，柱子太宽不美观~
			　　　　　　　  barWidth:40,
			                data: [233,129,321]
			            }
			        ],
					backgroundColor:"#fff"
			};
			
		myChart1.setOption(option1);
		myChart2.setOption(option2);
		myChart3.setOption(option3);
		myChart4.setOption(option4);
	

</script>
</body>
</html>
