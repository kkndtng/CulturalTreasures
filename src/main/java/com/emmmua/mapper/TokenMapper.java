
package com.emmmua.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.emmmua.entity.TokenEntity;

/**
 * token
 */
@Mapper
public interface TokenMapper extends BaseMapper<TokenEntity> {
	
	List<TokenEntity> selectListView(@Param("ew") Wrapper<TokenEntity> wrapper);

	List<TokenEntity> selectListView(Pagination page,@Param("ew") Wrapper<TokenEntity> wrapper);
	
}
