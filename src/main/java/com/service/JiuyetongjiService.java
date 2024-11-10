package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiuyetongjiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiuyetongjiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiuyetongjiView;


/**
 * 就业统计
 *
 * @author 
 * @email 
 * @date 2022-03-20 13:39:10
 */
public interface JiuyetongjiService extends IService<JiuyetongjiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiuyetongjiVO> selectListVO(Wrapper<JiuyetongjiEntity> wrapper);
   	
   	JiuyetongjiVO selectVO(@Param("ew") Wrapper<JiuyetongjiEntity> wrapper);
   	
   	List<JiuyetongjiView> selectListView(Wrapper<JiuyetongjiEntity> wrapper);
   	
   	JiuyetongjiView selectView(@Param("ew") Wrapper<JiuyetongjiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiuyetongjiEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<JiuyetongjiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<JiuyetongjiEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<JiuyetongjiEntity> wrapper);
}

