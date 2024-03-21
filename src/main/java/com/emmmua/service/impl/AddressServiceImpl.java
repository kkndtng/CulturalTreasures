package com.emmmua.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.emmmua.utils.PageUtils;
import com.emmmua.utils.Query;


import com.emmmua.mapper.AddressMapper;
import com.emmmua.entity.AddressEntity;
import com.emmmua.service.AddressService;
import com.emmmua.entity.vo.AddressVO;
import com.emmmua.entity.view.AddressView;

@Service
public class AddressServiceImpl extends ServiceImpl<AddressMapper, AddressEntity> implements AddressService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<AddressEntity> page = this.selectPage(
                new Query<AddressEntity>(params).getPage(),
                new EntityWrapper<AddressEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<AddressEntity> wrapper) {
		// 创建Page对象，传入参数params
		  Page<AddressView> page =new Query<AddressView>(params).getPage();
	        // 调用baseMapper的selectListView方法，获取满足条件的记录，并将结果赋值给page的records属性
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	// 创建PageUtils对象，并将page对象赋值给PageUtils的page属性
	    	PageUtils pageUtil = new PageUtils(page);
	    	// 返回PageUtils对象
	    	return pageUtil;
 	}
    
    @Override
	public List<AddressVO> selectListVO(Wrapper<AddressEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public AddressVO selectVO(Wrapper<AddressEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<AddressView> selectListView(Wrapper<AddressEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public AddressView selectView(Wrapper<AddressEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
