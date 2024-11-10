package com.entity.view;

import com.entity.JiuyexinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 就业信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-20 13:39:10
 */
@TableName("jiuyexinxi")
public class JiuyexinxiView  extends JiuyexinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JiuyexinxiView(){
	}
 
 	public JiuyexinxiView(JiuyexinxiEntity jiuyexinxiEntity){
 	try {
			BeanUtils.copyProperties(this, jiuyexinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
