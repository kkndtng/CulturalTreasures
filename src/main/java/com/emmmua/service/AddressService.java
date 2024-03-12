package com.emmmua.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.emmmua.utils.PageUtils;
import com.emmmua.entity.AddressEntity;
import java.util.List;
import java.util.Map;
import com.emmmua.entity.vo.AddressVO;
import org.apache.ibatis.annotations.Param;
import com.emmmua.entity.view.AddressView;


/**
 * 地址
 *
 * @author 
 * @email 
 * @date 2021-03-03 15:13:59
 */
public interface AddressService extends IService<AddressEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<AddressVO> selectListVO(Wrapper<AddressEntity> wrapper);
   	
   	AddressVO selectVO(@Param("ew") Wrapper<AddressEntity> wrapper);
   	
   	List<AddressView> selectListView(Wrapper<AddressEntity> wrapper);
   	
   	AddressView selectView(@Param("ew") Wrapper<AddressEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<AddressEntity> wrapper);
   	
}

