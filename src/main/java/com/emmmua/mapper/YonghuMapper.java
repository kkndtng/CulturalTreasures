package com.emmmua.mapper;

import com.emmmua.entity.YonghuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.emmmua.entity.vo.YonghuVO;
import com.emmmua.entity.view.YonghuView;


/**
 * 用户
 * 
 * @author 
 * @email 
 * @date 2021-03-03 15:13:59
 */
@Mapper
public interface YonghuMapper extends BaseMapper<YonghuEntity> {
	
	List<YonghuVO> selectListVO(@Param("ew") Wrapper<YonghuEntity> wrapper);
	
	YonghuVO selectVO(@Param("ew") Wrapper<YonghuEntity> wrapper);
	
	List<YonghuView> selectListView(@Param("ew") Wrapper<YonghuEntity> wrapper);

	List<YonghuView> selectListView(Pagination page,@Param("ew") Wrapper<YonghuEntity> wrapper);
	
	YonghuView selectView(@Param("ew") Wrapper<YonghuEntity> wrapper);
	
}