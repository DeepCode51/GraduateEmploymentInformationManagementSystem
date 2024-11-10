package com.entity.vo;

import com.entity.XueshengyingpinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 学生应聘
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-03-20 13:39:10
 */
public class XueshengyingpinVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 工作环境
	 */
	
	private String gongzuohuanjing;
		
	/**
	 * 岗位分类
	 */
	
	private String gangweifenlei;
		
	/**
	 * 岗位薪酬
	 */
	
	private String gangweixinchou;
		
	/**
	 * 工作地点
	 */
	
	private String gongzuodidian;
		
	/**
	 * 招聘企业
	 */
	
	private String zhaopinqiye;
		
	/**
	 * 个人简历
	 */
	
	private String gerenjianli;
		
	/**
	 * 申请日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date shenqingriqi;
		
	/**
	 * 学号
	 */
	
	private String xuehao;
		
	/**
	 * 学生姓名
	 */
	
	private String xueshengxingming;
		
	/**
	 * 专业
	 */
	
	private String zhuanye;
		
	/**
	 * 联系方式
	 */
	
	private String lianxifangshi;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
	/**
	 * 设置：工作环境
	 */
	 
	public void setGongzuohuanjing(String gongzuohuanjing) {
		this.gongzuohuanjing = gongzuohuanjing;
	}
	
	/**
	 * 获取：工作环境
	 */
	public String getGongzuohuanjing() {
		return gongzuohuanjing;
	}
				
	
	/**
	 * 设置：岗位分类
	 */
	 
	public void setGangweifenlei(String gangweifenlei) {
		this.gangweifenlei = gangweifenlei;
	}
	
	/**
	 * 获取：岗位分类
	 */
	public String getGangweifenlei() {
		return gangweifenlei;
	}
				
	
	/**
	 * 设置：岗位薪酬
	 */
	 
	public void setGangweixinchou(String gangweixinchou) {
		this.gangweixinchou = gangweixinchou;
	}
	
	/**
	 * 获取：岗位薪酬
	 */
	public String getGangweixinchou() {
		return gangweixinchou;
	}
				
	
	/**
	 * 设置：工作地点
	 */
	 
	public void setGongzuodidian(String gongzuodidian) {
		this.gongzuodidian = gongzuodidian;
	}
	
	/**
	 * 获取：工作地点
	 */
	public String getGongzuodidian() {
		return gongzuodidian;
	}
				
	
	/**
	 * 设置：招聘企业
	 */
	 
	public void setZhaopinqiye(String zhaopinqiye) {
		this.zhaopinqiye = zhaopinqiye;
	}
	
	/**
	 * 获取：招聘企业
	 */
	public String getZhaopinqiye() {
		return zhaopinqiye;
	}
				
	
	/**
	 * 设置：个人简历
	 */
	 
	public void setGerenjianli(String gerenjianli) {
		this.gerenjianli = gerenjianli;
	}
	
	/**
	 * 获取：个人简历
	 */
	public String getGerenjianli() {
		return gerenjianli;
	}
				
	
	/**
	 * 设置：申请日期
	 */
	 
	public void setShenqingriqi(Date shenqingriqi) {
		this.shenqingriqi = shenqingriqi;
	}
	
	/**
	 * 获取：申请日期
	 */
	public Date getShenqingriqi() {
		return shenqingriqi;
	}
				
	
	/**
	 * 设置：学号
	 */
	 
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	
	/**
	 * 获取：学号
	 */
	public String getXuehao() {
		return xuehao;
	}
				
	
	/**
	 * 设置：学生姓名
	 */
	 
	public void setXueshengxingming(String xueshengxingming) {
		this.xueshengxingming = xueshengxingming;
	}
	
	/**
	 * 获取：学生姓名
	 */
	public String getXueshengxingming() {
		return xueshengxingming;
	}
				
	
	/**
	 * 设置：专业
	 */
	 
	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}
	
	/**
	 * 获取：专业
	 */
	public String getZhuanye() {
		return zhuanye;
	}
				
	
	/**
	 * 设置：联系方式
	 */
	 
	public void setLianxifangshi(String lianxifangshi) {
		this.lianxifangshi = lianxifangshi;
	}
	
	/**
	 * 获取：联系方式
	 */
	public String getLianxifangshi() {
		return lianxifangshi;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
			
}
