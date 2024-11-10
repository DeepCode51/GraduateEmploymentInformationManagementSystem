<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/echarts.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/macarons.js"></script>
</head>
<style>
	.graph{
		margin: 10px auto;
	}
</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="content">
				<!-- Top Navigation -->
				<%@ include file="../../static/topNav.jsp"%>
				<!-- Menu -->
				<div class="container menu-nav">
					<nav class="navbar navbar-expand-lg lochana-bg text-white">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu text-white"></span>
						</button>
				
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<!-- <div class="z-navbar-nav-title">$template2.back.menu.title.text</div> -->
							<ul class="navbar-nav mr-auto" id="navUl">
								
							</ul>
						</div>
					</nav>
				</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">学生应聘统计</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item"><span>学生应聘管理</span></li>
								<li class="breadcrumb-item active"><span>学生应聘统计</span></li>
							</ol>
						</div>
					</div>
				</div>
			
			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">				
				<!-- Main Content -->
				<div class="row">
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow min-h200">
							<h3 class="widget-title"></h3>
							<!-- 
							Your Content goes Here
							-->
							<!--<div id="main" style="width: 900px;height:600px;"></div>-->
							<div id="gangweifenleiMain" class="graph" style="width: 900px;height:600px;"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Main Content -->
			<!--Copy Rights-->
			<div class="container">
				<div class="d-sm-flex justify-content-center">
				  
				</div>
			</div>
			<!-- /Copy Rights-->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
			<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>

	<script>
	<%@ include file="../../utils/menu.jsp"%>
	<%@ include file="../../static/setMenu.js"%>
	<%@ include file="../../utils/baseUrl.jsp"%>		
	var tableName = "xueshengyingpin";
	var pageType = "graph";

	var gangweifenleiValArr = [];
	var gangweifenleiNameArr = [];
	var gangweifenleiMapList = [];
	var valueArr = []
		var graphType = "pie";

	var gangweifenleiVal = '';

	$(document).ready(function() { 

		//设置右上角用户名
		$('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
		//设置项目名
		$('.sidebar-header h3 a').html(projectName)
		setMenu();
		getDetails();
		//draw();
		<%@ include file="../../static/myInfo.js"%>
	});

	function draw(){
		// 基于准备好的dom，初始化echarts实例
		var myChart = echarts.init(document.getElementById('main'),'macarons');

		myChart.setOption({
			title: {text : '学生应聘',left: 'center',top: 20},
			tooltip: {
				trigger: 'item',
				formatter: '{a} <br/>{b} : {c} ({d}%)'
			},
			series : [
				{
					name: '${column.comments}',
					type: 'pie',    // 设置图表类型为饼图
					radius: '55%',  // 饼图的半径，外半径为可视区尺寸（容器高宽中较小一项）的 55% 长度。
					data:[          // 数据数组，name 为数据项名称，value 为数据项值
						{value:gangweifenleiVal, name:'岗位分类'},
					]
				}
			]
		})

	}
	// 需要调group的字段，一个字段一个统计图
	function gangweifenleiDraw(){
		// 基于准备好的dom，初始化echarts实例
		var myChart = echarts.init(document.getElementById('gangweifenleiMain'),'macarons');

		myChart.setOption({
			    title: {
						text: '岗位分类',
					left: 'center',top: 20
					},
			tooltip: {
				trigger: 'item',
				formatter: '{a} <br/>{b} : {c} ({d}%)'
			},
			series : [
				{
						name: '岗位分类',
					type: 'pie',    // 设置图表类型为饼图
					radius: '55%',  // 饼图的半径，外半径为可视区尺寸（容器高宽中较小一项）的 55% 长度。
					data: gangweifenleiMapList   // 数据数组，name 为数据项名称，value 为数据项值
				}
			]
		})
	}
	function getDetails(){
				group('gangweifenlei')
	}
	// 值 字段 数据绑定
	function dataBindByValue(list){
	}

	//按值统计
	function byVal(){
	$.ajax({ 
		type: "GET",
		//url: baseUrl+"value/xueshengyingpin/"+xColumnName+'/'+yColumnName,
		url: baseUrl+"xueshengyingpin/value/"+xColumnName+'/'+yColumnName,
		data:{ },
		beforeSend: function(xhr) {
			xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
		},
		success: function(res){               	
			if(res.code == 0){
				console.log(res.data)
				if(res.data != null){
					dataBindByValue(res.data);
				}
			}else if(res.code == 401){
				<%@ include file="../../static/toLogin.jsp"%>   		
			}else{
				alert(res.msg);
			}
		},
	});
	}

	function group(colName){
		$.ajax({ 
			type: "GET",
			//url: baseUrl+"group/xueshengyingpin/"+colName,
			url: baseUrl+"xueshengyingpin/group/"+colName,
			data:{	tableName: "xueshengyingpin",
					columnName: colName
					},
			beforeSend: function(xhr) {
				xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
			},
			success: function(res){               	
				if(res.code == 0){
					console.log(res.data)
					if(res.data != null){
						groupDataBind(res.data,colName);
					}
				}else if(res.code == 401){
					<%@ include file="../../static/toLogin.jsp"%>   		
				}else{
					alert(res.msg);
				}
			},
		});
	}
	// 类字段的数据处理
	function groupDataBind(list,colName){
				if(colName == "gangweifenlei"){ 
						for(var i=0;i<list.length;i++){
							var map = {value: list[i].total,name: list[i].gangweifenlei}
							gangweifenleiMapList.push(map)
						}
					gangweifenleiDraw()
				}
		
	}
	// 用户登出
	<%@ include file="../../static/logout.jsp"%>
	</script>
</body>

</html>
