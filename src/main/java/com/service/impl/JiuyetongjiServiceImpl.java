package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JiuyetongjiDao;
import com.entity.JiuyetongjiEntity;
import com.service.JiuyetongjiService;
import com.entity.vo.JiuyetongjiVO;
import com.entity.view.JiuyetongjiView;

@Service("jiuyetongjiService")
public class JiuyetongjiServiceImpl extends ServiceImpl<JiuyetongjiDao, JiuyetongjiEntity> implements JiuyetongjiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiuyetongjiEntity> page = this.selectPage(
                new Query<JiuyetongjiEntity>(params).getPage(),
                new EntityWrapper<JiuyetongjiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiuyetongjiEntity> wrapper) {
		  Page<JiuyetongjiView> page =new Query<JiuyetongjiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiuyetongjiVO> selectListVO(Wrapper<JiuyetongjiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiuyetongjiVO selectVO(Wrapper<JiuyetongjiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiuyetongjiView> selectListView(Wrapper<JiuyetongjiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiuyetongjiView selectView(Wrapper<JiuyetongjiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<JiuyetongjiEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<JiuyetongjiEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }
    
    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<JiuyetongjiEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }

}
