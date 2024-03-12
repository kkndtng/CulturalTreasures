
package com.emmmua.service.impl;


import com.emmmua.mapper.CommonMapper;
import com.emmmua.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


/**
 * 系统用户
 */
@Service
public class CommonServiceImpl implements CommonService {
	
	@Autowired
	private CommonMapper commonMapper;

	@Override
	public List<String> getOption(Map<String, Object> params) {
		return commonMapper.getOption(params);
	}
	
	@Override
	public Map<String, Object> getFollowByOption(Map<String, Object> params) {
		return commonMapper.getFollowByOption(params);
	}
	
	@Override
	public void sh(Map<String, Object> params) {
		commonMapper.sh(params);
	}

	@Override
	public int remindCount(Map<String, Object> params) {
		return commonMapper.remindCount(params);
	}

	@Override
	public Map<String, Object> selectCal(Map<String, Object> params) {
		return commonMapper.selectCal(params);
	}
	
	@Override
	public List<Map<String, Object>> selectGroup(Map<String, Object> params) {
		return commonMapper.selectGroup(params);
	}
	
	@Override
	public List<Map<String, Object>> selectValue(Map<String, Object> params) {
		return commonMapper.selectValue(params);
	}

}
