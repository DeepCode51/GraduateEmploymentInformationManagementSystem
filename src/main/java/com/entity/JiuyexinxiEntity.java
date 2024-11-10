package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 就业信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-03-20 13:39:10
 */
@TableName("jiuyexinxi")
public class JiuyexinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JiuyexinxiEntity() {
		
	}
	
	public JiuyexinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 就职单位
	 */
					
	private String jiuzhidanwei;
	
	/**
	 * 单位性质
	 */
					
	private String danweixingzhi;
	
	/**
	 * 岗位分类
	 */
					
	private String gangweifenlei;
	
	/**
	 * 就业时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date jiuyeshijian;
	
	/**
	 * 学号
	 */
					
	private String xuehao;
	
	/**
	 * 学生姓名
	 */
					
	private String xueshengxingming;
	
	/**
	 * 院系
	 */
					
	private String yuanxi;
	
	/**
	 * 专业
	 */
					
	private String zhuanye;
	
	/**
	 * 教师工号
	 */
					
	private String jiaoshigonghao;
	
	/**
	 * 教师姓名
	 */
					
	private String jiaoshixingming;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：就职单位
	 */
	public void setJiuzhidanwei(String jiuzhidanwei) {
		this.jiuzhidanwei = jiuzhidanwei;
	}
	/**
	 * 获取：就职单位
	 */
	public String getJiuzhidanwei() {
		return jiuzhidanwei;
	}
	/**
	 * 设置：单位性质
	 */
	public void setDanweixingzhi(String danweixingzhi) {
		this.danweixingzhi = danweixingzhi;
	}
	/**
	 * 获取：单位性质
	 */
	public String getDanweixingzhi() {
		return danweixingzhi;
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
	 * 设置：就业时间
	 */
	public void setJiuyeshijian(Date jiuyeshijian) {
		this.jiuyeshijian = jiuyeshijian;
	}
	/**
	 * 获取：就业时间
	 */
	public Date getJiuyeshijian() {
		return jiuyeshijian;
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
	 * 设置：院系
	 */
	public void setYuanxi(String yuanxi) {
		this.yuanxi = yuanxi;
	}
	/**
	 * 获取：院系
	 */
	public String getYuanxi() {
		return yuanxi;
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
	 * 设置：教师工号
	 */
	public void setJiaoshigonghao(String jiaoshigonghao) {
		this.jiaoshigonghao = jiaoshigonghao;
	}
	/**
	 * 获取：教师工号
	 */
	public String getJiaoshigonghao() {
		return jiaoshigonghao;
	}
	/**
	 * 设置：教师姓名
	 */
	public void setJiaoshixingming(String jiaoshixingming) {
		this.jiaoshixingming = jiaoshixingming;
	}
	/**
	 * 获取：教师姓名
	 */
	public String getJiaoshixingming() {
		return jiaoshixingming;
	}

}
