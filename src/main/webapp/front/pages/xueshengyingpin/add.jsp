<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		html::after {
			position: fixed;
			top: 0;
			right: 0;
			left: 0;
			bottom: 0;
			content: '';
			display: block;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
			z-index: -1;
		}
		#swiper {
			overflow: hidden;
			margin: 0 auto;
		}
		#swiper .layui-carousel-ind li {
			width: 16px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 3px;
			background-color: #f7f7f7;
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 24px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 0;
			background-color: rgba(110,22,64,1);
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
		
		button, button:focus {
			outline: none;
		}
		
		.data-add-container .add .layui-select-title .layui-unselect {
			padding: 0 12px;
			height: 40px;
			font-size: 14px;
			color: rgba(0, 0, 0, 1);
			border-radius: 0;
			border-width: 1px;
			border-style: solid;
			border-color: rgba(209, 209, 209, 1);
			background-color: #fff;
			box-shadow: 0 0 0px rgba(110,22,64,.8);
			text-align: left;
		}
		.data-add-container .add .layui-form-item {
			display: flex;
			align-items: center;
			justify-content: center;
		}
		.data-add-container .layui-form-pane .layui-form-item[pane] .layui-form-label {
			margin: 0;
			position: inherit;
			background: transparent;
			border: 0;
		}
		.data-add-container .add .layui-input-block {
			margin: 0;
			flex: 1;
		}
		.data-add-container .layui-form-pane .layui-form-item[pane] .layui-input-inline {
			margin: 0;
			flex: 1;
			display: flex;
		}
	</style>
	<body>


		<div id="app">
		
			<!-- 轮播图 -->
			<!-- <div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div> -->
			<div class="layui-carousel" id="swiper" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 auto","borderColor":"rgba(0,0,0,.3)","borderRadius":"20px","borderWidth":"0","width":"100%","borderStyle":"solid"}'>
			  <div carousel-item id="swiper-item">
				<div v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="item.img" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->
		
			<div class="data-add-container">
		
				<form class="layui-form layui-form-pane" lay-filter="myForm">
					
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">岗位名称：</label>
						<div class="layui-input-block">
							<input v-model="detail.gangweimingcheng" type="text" :readonly="ro.gangweimingcheng" name="gangweimingcheng" id="gangweimingcheng" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">工作环境：</label>
						<div v-if="detail.gongzuohuanjing" class="layui-input-block">
							<img id="gongzuohuanjingImg" style="width: 100px;height: 100px;border-radius: 50%;border: 2px solid #EEEEEE;" :src="baseurl+detail.gongzuohuanjing">
							<input type="hidden" :value="detail.gongzuohuanjing" id="gongzuohuanjing" name="gongzuohuanjing" />
						</div>
						<div class="layui-input-block">
							<button v-if="!ro.gongzuohuanjing" type="button" class="layui-btn btn-theme" id="gongzuohuanjingUpload">
								<i class="layui-icon">&#xe67c;</i>上传工作环境
							</button>
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">岗位分类：</label>
						<div class="layui-input-block">
							<input v-model="detail.gangweifenlei" type="text" :readonly="ro.gangweifenlei" name="gangweifenlei" id="gangweifenlei" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">岗位薪酬：</label>
						<div class="layui-input-block">
							<input v-model="detail.gangweixinchou" type="text" :readonly="ro.gangweixinchou" name="gangweixinchou" id="gangweixinchou" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">工作地点：</label>
						<div class="layui-input-block">
							<input v-model="detail.gongzuodidian" type="text" :readonly="ro.gongzuodidian" name="gongzuodidian" id="gongzuodidian" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">招聘企业：</label>
						<div class="layui-input-block">
							<input v-model="detail.zhaopinqiye" type="text" :readonly="ro.zhaopinqiye" name="zhaopinqiye" id="zhaopinqiye" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">个人简历：</label>
						<div class="layui-input-inline" style="line-height: 50px;">
							<input type="hidden" :value="detail.gerenjianli" id="gerenjianli" name="gerenjianli" />
		                    <button type="button" class="layui-btn btn-theme" id="gerenjianliUpload">
								<i class="layui-icon">&#xe67c;</i>上传个人简历
							</button>
							<a download="个人简历" :href="detail.gerenjianli">下载</a>
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">申请日期：</label>
						<div class="layui-input-block">
							<input type="text" name="shenqingriqi" id="shenqingriqi" autocomplete="off" class="layui-input" >
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">学号：</label>
						<div class="layui-input-block">
							<input v-model="detail.xuehao" type="text" :readonly="ro.xuehao" name="xuehao" id="xuehao" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">学生姓名：</label>
						<div class="layui-input-block">
							<input v-model="detail.xueshengxingming" type="text" :readonly="ro.xueshengxingming" name="xueshengxingming" id="xueshengxingming" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">专业：</label>
						<div class="layui-input-block">
							<input v-model="detail.zhuanye" type="text" :readonly="ro.zhuanye" name="zhuanye" id="zhuanye" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div class="layui-form-item" pane>
						<label class="layui-form-label">联系方式：</label>
						<div class="layui-input-block">
							<input v-model="detail.lianxifangshi" type="text" :readonly="ro.lianxifangshi" name="lianxifangshi" id="lianxifangshi" autocomplete="off" class="layui-input">
						</div>
					</div>
		            
		
					<div class="layui-form-item">
						<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
							<button  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>

		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                                        gangweimingcheng : false,
                                        gongzuohuanjing : false,
                                        gangweifenlei : false,
                                        gangweixinchou : false,
                                        gongzuodidian : false,
                                        zhaopinqiye : false,
                                        gerenjianli : false,
                                        shenqingriqi : false,
                                        xuehao : false,
                                        xueshengxingming : false,
                                        zhuanye : false,
                                        lianxifangshi : false,
                                        sfsh : false,
                                        shhf : false,
					},
                    detail: {
                        gangweimingcheng: '',
                        gongzuohuanjing: '',
                        gangweifenlei: '',
                        gangweixinchou: '',
                        gongzuodidian: '',
                        zhaopinqiye: '',
                        gerenjianli: '',
                        shenqingriqi: '',
                        xuehao: '',
                        xueshengxingming: '',
                        zhuanye: '',
                        lianxifangshi: '',
                        sfsh: '',
                        shhf: '',
                    },
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {



                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img style="width: 100%;height: 100%;object-fit:cover;" class="swiper-item" src="' + http.baseurl+item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						vue.$nextTick(() => {
						  carousel.render({
						  	elem: '#swiper',
							width: '100%',
						  	height: '250px',
						  	arrow: 'hover',
						  	anim: 'default',
						  	autoplay: 'true',
						  	interval: '3000',
						  	indicator: 'none'
						  });
						
						})
					}
				});

				// 上传图片
				var gongzuohuanjingUpload = upload.render({
					//绑定元素
					elem: '#gongzuohuanjingUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#gongzuohuanjing').val(url);
							jquery('#gongzuohuanjingImg').attr('src', http.baseurl +url)
							vue.detail.gongzuohuanjing = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
                var gerenjianliUpload = upload.render({
					//绑定元素
					elem: '#gerenjianliUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'file',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#gerenjianli').val(url);
                            vue.detail.gerenjianli = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
                                jquery('#shenqingriqi').val(getCurDate());
				laydate.render({
					elem: '#shenqingriqi'
				});
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
                        if(key=='xuehao'){
                                vue.detail['xuehao'] = data[`${key}`]
                                vue.ro.xuehao = true;
                                continue;
                        }
                        if(key=='xueshengxingming'){
                                vue.detail['xueshengxingming'] = data[`${key}`]
                                vue.ro.xueshengxingming = true;
                                continue;
                        }
                        if(key=='zhuanye'){
                                vue.detail['zhuanye'] = data[`${key}`]
                                vue.ro.zhuanye = true;
                                continue;
                        }
                        if(key=='lianxifangshi'){
                                vue.detail['lianxifangshi'] = data[`${key}`]
                                vue.ro.lianxifangshi = true;
                                continue;
                        }
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                                        if(o=='gangweimingcheng'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.gangweimingcheng = true;
                                                continue;
                                        }
                                        if(o=='gongzuohuanjing'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.gongzuohuanjing = true;
                                                continue;
                                        }
                                        if(o=='gangweifenlei'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.gangweifenlei = true;
                                                continue;
                                        }
                                        if(o=='gangweixinchou'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.gangweixinchou = true;
                                                continue;
                                        }
                                        if(o=='gongzuodidian'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.gongzuodidian = true;
                                                continue;
                                        }
                                        if(o=='zhaopinqiye'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.zhaopinqiye = true;
                                                continue;
                                        }
                                        if(o=='gerenjianli'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.gerenjianli = true;
                                                continue;
                                        }
                                        if(o=='shenqingriqi'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.shenqingriqi = true;
                                                jquery('#shenqingriqi').val(obj[o]);
                                                continue;
                                        }
                                        if(o=='xuehao'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.xuehao = true;
                                                continue;
                                        }
                                        if(o=='xueshengxingming'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.xueshengxingming = true;
                                                continue;
                                        }
                                        if(o=='zhuanye'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.zhuanye = true;
                                                continue;
                                        }
                                        if(o=='lianxifangshi'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.lianxifangshi = true;
                                                continue;
                                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
                    if(!data.gangweimingcheng){
                        layer.msg('岗位名称不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('xueshengyingpin/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('xueshengyingpin' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('xueshengyingpin' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
