package com.emmmua.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.emmmua.entity.LvyouxianluEntity;
import com.emmmua.entity.view.LvyouxianluView;
import com.emmmua.entity.vo.LvyouxianluVO;
import com.emmmua.mapper.LvyouxianluMapper;
import com.emmmua.service.LvyouxianluService;
import com.emmmua.utils.PageUtils;
import com.emmmua.utils.Query;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service
public class LvyouxianluServiceImpl extends ServiceImpl<LvyouxianluMapper, LvyouxianluEntity> implements LvyouxianluService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<LvyouxianluEntity> page = this.selectPage(
                new Query<LvyouxianluEntity>(params).getPage(),
                new EntityWrapper<LvyouxianluEntity>()
        );
        return new PageUtils(page);
    }

    @Override
    public PageUtils queryPage(Map<String, Object> params, Wrapper<LvyouxianluEntity> wrapper) {
        Page<LvyouxianluView> page = new Query<LvyouxianluView>(params).getPage();
        page.setRecords(baseMapper.selectListView(page, wrapper));
        PageUtils pageUtil = new PageUtils(page);
        return pageUtil;
    }

    @Override
    public List<LvyouxianluVO> selectListVO(Wrapper<LvyouxianluEntity> wrapper) {
        return baseMapper.selectListVO(wrapper);
    }

    @Override
    public LvyouxianluVO selectVO(Wrapper<LvyouxianluEntity> wrapper) {
        return baseMapper.selectVO(wrapper);
    }

    @Override
    public List<LvyouxianluView> selectListView(Wrapper<LvyouxianluEntity> wrapper) {
        return baseMapper.selectListView(wrapper);
    }

    @Override
    public LvyouxianluView selectView(Wrapper<LvyouxianluEntity> wrapper) {
        return baseMapper.selectView(wrapper);
    }

}
