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

import com.emmmua.entity.DiscusslvyouxianluEntity;
import com.emmmua.entity.view.DiscusslvyouxianluView;

import com.emmmua.service.DiscusslvyouxianluService;
import com.emmmua.utils.PageUtils;
import com.emmmua.utils.R;
import com.emmmua.utils.MPUtil;


/**
 * 旅游线路评论表
 * 后端接口
 * @author 
 * @email 
 * @date 2021-03-03 15:14:00
 */
@RestController
@RequestMapping("/discusslvyouxianlu")
public class DiscusslvyouxianluController {
    @Autowired
    private DiscusslvyouxianluService discusslvyouxianluService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,DiscusslvyouxianluEntity discusslvyouxianlu, HttpServletRequest request){
        EntityWrapper<DiscusslvyouxianluEntity> ew = new EntityWrapper<DiscusslvyouxianluEntity>();
		PageUtils page = discusslvyouxianluService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, discusslvyouxianlu), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,DiscusslvyouxianluEntity discusslvyouxianlu, HttpServletRequest request){
        EntityWrapper<DiscusslvyouxianluEntity> ew = new EntityWrapper<DiscusslvyouxianluEntity>();
		PageUtils page = discusslvyouxianluService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, discusslvyouxianlu), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( DiscusslvyouxianluEntity discusslvyouxianlu){
       	EntityWrapper<DiscusslvyouxianluEntity> ew = new EntityWrapper<DiscusslvyouxianluEntity>();
      	ew.allEq(MPUtil.allEQMapPre( discusslvyouxianlu, "discusslvyouxianlu")); 
        return R.ok().put("data", discusslvyouxianluService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(DiscusslvyouxianluEntity discusslvyouxianlu){
        EntityWrapper< DiscusslvyouxianluEntity> ew = new EntityWrapper< DiscusslvyouxianluEntity>();
 		ew.allEq(MPUtil.allEQMapPre( discusslvyouxianlu, "discusslvyouxianlu")); 
		DiscusslvyouxianluView discusslvyouxianluView =  discusslvyouxianluService.selectView(ew);
		return R.ok("查询旅游线路评论表成功").put("data", discusslvyouxianluView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        DiscusslvyouxianluEntity discusslvyouxianlu = discusslvyouxianluService.selectById(id);
        return R.ok().put("data", discusslvyouxianlu);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        DiscusslvyouxianluEntity discusslvyouxianlu = discusslvyouxianluService.selectById(id);
        return R.ok().put("data", discusslvyouxianlu);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody DiscusslvyouxianluEntity discusslvyouxianlu, HttpServletRequest request){
    	discusslvyouxianlu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(discusslvyouxianlu);
        discusslvyouxianluService.insert(discusslvyouxianlu);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody DiscusslvyouxianluEntity discusslvyouxianlu, HttpServletRequest request){
    	discusslvyouxianlu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(discusslvyouxianlu);
        discusslvyouxianluService.insert(discusslvyouxianlu);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody DiscusslvyouxianluEntity discusslvyouxianlu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(discusslvyouxianlu);
        discusslvyouxianluService.updateById(discusslvyouxianlu);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        discusslvyouxianluService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<DiscusslvyouxianluEntity> wrapper = new EntityWrapper<DiscusslvyouxianluEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = discusslvyouxianluService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}