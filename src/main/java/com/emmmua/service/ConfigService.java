
package com.emmmua.service;

import java.util.Map;

import com.baomidou.mybatisplus.service.IService;
import com.emmmua.entity.ConfigEntity;
import com.emmmua.utils.PageUtils;


/**
 * 系统用户
 */
public interface ConfigService extends IService<ConfigEntity> {
	PageUtils queryPage(Map<String, Object> params);
}
