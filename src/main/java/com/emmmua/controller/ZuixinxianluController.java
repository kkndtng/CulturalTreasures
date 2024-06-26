package com.emmmua.controller;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.emmmua.annotation.IgnoreAuth;

import com.emmmua.entity.ZuixinxianluEntity;
import com.emmmua.entity.view.ZuixinxianluView;

import com.emmmua.service.ZuixinxianluService;
import com.emmmua.utils.PageUtils;
import com.emmmua.utils.R;
import com.emmmua.utils.MPUtil;


/**
 * 最新线路
 * 后端接口
 * @author 
 * @email 
 * @date 2021-03-03 15:13:59
 */
@RestController
@RequestMapping("/zuixinxianlu")
public class ZuixinxianluController {
    @Autowired
    private ZuixinxianluService zuixinxianluService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ZuixinxianluEntity zuixinxianlu, HttpServletRequest request){
        EntityWrapper<ZuixinxianluEntity> ew = new EntityWrapper<ZuixinxianluEntity>();
		PageUtils page = zuixinxianluService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zuixinxianlu), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ZuixinxianluEntity zuixinxianlu, HttpServletRequest request){
        EntityWrapper<ZuixinxianluEntity> ew = new EntityWrapper<ZuixinxianluEntity>();
		PageUtils page = zuixinxianluService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zuixinxianlu), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ZuixinxianluEntity zuixinxianlu){
       	EntityWrapper<ZuixinxianluEntity> ew = new EntityWrapper<ZuixinxianluEntity>();
      	ew.allEq(MPUtil.allEQMapPre( zuixinxianlu, "zuixinxianlu")); 
        return R.ok().put("data", zuixinxianluService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ZuixinxianluEntity zuixinxianlu){
        EntityWrapper< ZuixinxianluEntity> ew = new EntityWrapper< ZuixinxianluEntity>();
 		ew.allEq(MPUtil.allEQMapPre( zuixinxianlu, "zuixinxianlu")); 
		ZuixinxianluView zuixinxianluView =  zuixinxianluService.selectView(ew);
		return R.ok("查询最新线路成功").put("data", zuixinxianluView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ZuixinxianluEntity zuixinxianlu = zuixinxianluService.selectById(id);
        return R.ok().put("data", zuixinxianlu);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ZuixinxianluEntity zuixinxianlu = zuixinxianluService.selectById(id);
        return R.ok().put("data", zuixinxianlu);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ZuixinxianluEntity zuixinxianlu, HttpServletRequest request){
    	zuixinxianlu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(zuixinxianlu);
        zuixinxianluService.insert(zuixinxianlu);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ZuixinxianluEntity zuixinxianlu, HttpServletRequest request){
    	zuixinxianlu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(zuixinxianlu);
        zuixinxianluService.insert(zuixinxianlu);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ZuixinxianluEntity zuixinxianlu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(zuixinxianlu);
        zuixinxianluService.updateById(zuixinxianlu);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        zuixinxianluService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<ZuixinxianluEntity> wrapper = new EntityWrapper<ZuixinxianluEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = zuixinxianluService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
