package com.dao;

import com.entity.JiuyetongjiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiuyetongjiVO;
import com.entity.view.JiuyetongjiView;


/**
 * 就业统计
 * 
 * @author 
 * @email 
 * @date 2022-03-20 13:39:10
 */
public interface JiuyetongjiDao extends BaseMapper<JiuyetongjiEntity> {
	
	List<JiuyetongjiVO> selectListVO(@Param("ew") Wrapper<JiuyetongjiEntity> wrapper);
	
	JiuyetongjiVO selectVO(@Param("ew") Wrapper<JiuyetongjiEntity> wrapper);
	
	List<JiuyetongjiView> selectListView(@Param("ew") Wrapper<JiuyetongjiEntity> wrapper);

	List<JiuyetongjiView> selectListView(Pagination page,@Param("ew") Wrapper<JiuyetongjiEntity> wrapper);
	
	JiuyetongjiView selectView(@Param("ew") Wrapper<JiuyetongjiEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JiuyetongjiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JiuyetongjiEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JiuyetongjiEntity> wrapper);
}
