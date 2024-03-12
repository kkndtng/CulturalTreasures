package com.emmmua.service.impl;

import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.emmmua.utils.PageUtils;
import com.emmmua.utils.Query;


import com.emmmua.mapper.OrdersMapper;
import com.emmmua.entity.OrdersEntity;
import com.emmmua.service.OrdersService;
import com.emmmua.entity.vo.OrdersVO;
import com.emmmua.entity.view.OrdersView;
import org.springframework.stereotype.Service;

@Service
public class OrdersServiceImpl extends ServiceImpl<OrdersMapper, OrdersEntity> implements OrdersService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<OrdersEntity> page = this.selectPage(
                new Query<OrdersEntity>(params).getPage(),
                new EntityWrapper<OrdersEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<OrdersEntity> wrapper) {
		  Page<OrdersView> page =new Query<OrdersView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<OrdersVO> selectListVO(Wrapper<OrdersEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public OrdersVO selectVO(Wrapper<OrdersEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<OrdersView> selectListView(Wrapper<OrdersEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public OrdersView selectView(Wrapper<OrdersEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
