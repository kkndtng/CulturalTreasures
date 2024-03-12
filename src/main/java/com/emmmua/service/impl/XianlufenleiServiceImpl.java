package com.emmmua.service.impl;

import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.emmmua.utils.PageUtils;
import com.emmmua.utils.Query;


import com.emmmua.mapper.XianlufenleiMapper;
import com.emmmua.entity.XianlufenleiEntity;
import com.emmmua.service.XianlufenleiService;
import com.emmmua.entity.vo.XianlufenleiVO;
import com.emmmua.entity.view.XianlufenleiView;
import org.springframework.stereotype.Service;

@Service
public class XianlufenleiServiceImpl extends ServiceImpl<XianlufenleiMapper, XianlufenleiEntity> implements XianlufenleiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XianlufenleiEntity> page = this.selectPage(
                new Query<XianlufenleiEntity>(params).getPage(),
                new EntityWrapper<XianlufenleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XianlufenleiEntity> wrapper) {
		  Page<XianlufenleiView> page =new Query<XianlufenleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XianlufenleiVO> selectListVO(Wrapper<XianlufenleiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XianlufenleiVO selectVO(Wrapper<XianlufenleiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XianlufenleiView> selectListView(Wrapper<XianlufenleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XianlufenleiView selectView(Wrapper<XianlufenleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
