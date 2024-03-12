package com.emmmua.mapper;

import com.emmmua.entity.ZuixinxianluEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.emmmua.entity.vo.ZuixinxianluVO;
import com.emmmua.entity.view.ZuixinxianluView;


/**
 * 最新线路
 * 
 * @author 
 * @email 
 * @date 2021-03-03 15:13:59
 */
@Mapper
public interface ZuixinxianluMapper extends BaseMapper<ZuixinxianluEntity> {
	
	List<ZuixinxianluVO> selectListVO(@Param("ew") Wrapper<ZuixinxianluEntity> wrapper);
	
	ZuixinxianluVO selectVO(@Param("ew") Wrapper<ZuixinxianluEntity> wrapper);
	
	List<ZuixinxianluView> selectListView(@Param("ew") Wrapper<ZuixinxianluEntity> wrapper);

	List<ZuixinxianluView> selectListView(Pagination page,@Param("ew") Wrapper<ZuixinxianluEntity> wrapper);
	
	ZuixinxianluView selectView(@Param("ew") Wrapper<ZuixinxianluEntity> wrapper);
	
}
