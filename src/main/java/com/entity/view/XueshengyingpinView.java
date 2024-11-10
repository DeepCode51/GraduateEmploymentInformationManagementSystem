package com.entity.view;

import com.entity.XueshengyingpinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 学生应聘
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-20 13:39:10
 */
@TableName("xueshengyingpin")
public class XueshengyingpinView  extends XueshengyingpinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XueshengyingpinView(){
	}
 
 	public XueshengyingpinView(XueshengyingpinEntity xueshengyingpinEntity){
 	try {
			BeanUtils.copyProperties(this, xueshengyingpinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
