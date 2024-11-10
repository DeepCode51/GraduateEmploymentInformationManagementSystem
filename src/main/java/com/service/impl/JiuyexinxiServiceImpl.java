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


import com.dao.JiuyexinxiDao;
import com.entity.JiuyexinxiEntity;
import com.service.JiuyexinxiService;
import com.entity.vo.JiuyexinxiVO;
import com.entity.view.JiuyexinxiView;

@Service("jiuyexinxiService")
public class JiuyexinxiServiceImpl extends ServiceImpl<JiuyexinxiDao, JiuyexinxiEntity> implements JiuyexinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiuyexinxiEntity> page = this.selectPage(
                new Query<JiuyexinxiEntity>(params).getPage(),
                new EntityWrapper<JiuyexinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiuyexinxiEntity> wrapper) {
		  Page<JiuyexinxiView> page =new Query<JiuyexinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiuyexinxiVO> selectListVO(Wrapper<JiuyexinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiuyexinxiVO selectVO(Wrapper<JiuyexinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiuyexinxiView> selectListView(Wrapper<JiuyexinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiuyexinxiView selectView(Wrapper<JiuyexinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<JiuyexinxiEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<JiuyexinxiEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }
    
    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<JiuyexinxiEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }

}
