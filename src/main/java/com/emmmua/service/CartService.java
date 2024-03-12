package com.emmmua.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.emmmua.utils.PageUtils;
import com.emmmua.entity.CartEntity;
import java.util.List;
import java.util.Map;
import com.emmmua.entity.vo.CartVO;
import org.apache.ibatis.annotations.Param;
import com.emmmua.entity.view.CartView;


/**
 * 购物车表
 *
 * @author 
 * @email 
 * @date 2021-03-03 15:13:59
 */
public interface CartService extends IService<CartEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<CartVO> selectListVO(Wrapper<CartEntity> wrapper);
   	
   	CartVO selectVO(@Param("ew") Wrapper<CartEntity> wrapper);
   	
   	List<CartView> selectListView(Wrapper<CartEntity> wrapper);
   	
   	CartView selectView(@Param("ew") Wrapper<CartEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<CartEntity> wrapper);
   	
}

