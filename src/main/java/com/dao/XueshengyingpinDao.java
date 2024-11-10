package com.dao;

import com.entity.XueshengyingpinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XueshengyingpinVO;
import com.entity.view.XueshengyingpinView;


/**
 * 学生应聘
 * 
 * @author 
 * @email 
 * @date 2022-03-20 13:39:10
 */
public interface XueshengyingpinDao extends BaseMapper<XueshengyingpinEntity> {
	
	List<XueshengyingpinVO> selectListVO(@Param("ew") Wrapper<XueshengyingpinEntity> wrapper);
	
	XueshengyingpinVO selectVO(@Param("ew") Wrapper<XueshengyingpinEntity> wrapper);
	
	List<XueshengyingpinView> selectListView(@Param("ew") Wrapper<XueshengyingpinEntity> wrapper);

	List<XueshengyingpinView> selectListView(Pagination page,@Param("ew") Wrapper<XueshengyingpinEntity> wrapper);
	
	XueshengyingpinView selectView(@Param("ew") Wrapper<XueshengyingpinEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<XueshengyingpinEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<XueshengyingpinEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<XueshengyingpinEntity> wrapper);
}
