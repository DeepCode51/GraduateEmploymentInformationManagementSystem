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


import com.dao.XueshengyingpinDao;
import com.entity.XueshengyingpinEntity;
import com.service.XueshengyingpinService;
import com.entity.vo.XueshengyingpinVO;
import com.entity.view.XueshengyingpinView;

@Service("xueshengyingpinService")
public class XueshengyingpinServiceImpl extends ServiceImpl<XueshengyingpinDao, XueshengyingpinEntity> implements XueshengyingpinService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XueshengyingpinEntity> page = this.selectPage(
                new Query<XueshengyingpinEntity>(params).getPage(),
                new EntityWrapper<XueshengyingpinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XueshengyingpinEntity> wrapper) {
		  Page<XueshengyingpinView> page =new Query<XueshengyingpinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XueshengyingpinVO> selectListVO(Wrapper<XueshengyingpinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XueshengyingpinVO selectVO(Wrapper<XueshengyingpinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XueshengyingpinView> selectListView(Wrapper<XueshengyingpinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XueshengyingpinView selectView(Wrapper<XueshengyingpinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<XueshengyingpinEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<XueshengyingpinEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }
    
    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<XueshengyingpinEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }

}
