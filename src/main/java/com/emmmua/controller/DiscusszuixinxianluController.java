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

import com.emmmua.entity.DiscusszuixinxianluEntity;
import com.emmmua.entity.view.DiscusszuixinxianluView;

import com.emmmua.service.DiscusszuixinxianluService;
import com.emmmua.utils.PageUtils;
import com.emmmua.utils.R;
import com.emmmua.utils.MPUtil;


/**
 * 最新线路评论表
 * 后端接口
 * @author 
 * @email 
 * @date 2021-03-03 15:14:00
 */
@RestController
@RequestMapping("/discusszuixinxianlu")
public class DiscusszuixinxianluController {
    @Autowired
    private DiscusszuixinxianluService discusszuixinxianluService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,DiscusszuixinxianluEntity discusszuixinxianlu, HttpServletRequest request){
        EntityWrapper<DiscusszuixinxianluEntity> ew = new EntityWrapper<DiscusszuixinxianluEntity>();
		PageUtils page = discusszuixinxianluService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, discusszuixinxianlu), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,DiscusszuixinxianluEntity discusszuixinxianlu, HttpServletRequest request){
        EntityWrapper<DiscusszuixinxianluEntity> ew = new EntityWrapper<DiscusszuixinxianluEntity>();
		PageUtils page = discusszuixinxianluService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, discusszuixinxianlu), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( DiscusszuixinxianluEntity discusszuixinxianlu){
       	EntityWrapper<DiscusszuixinxianluEntity> ew = new EntityWrapper<DiscusszuixinxianluEntity>();
      	ew.allEq(MPUtil.allEQMapPre( discusszuixinxianlu, "discusszuixinxianlu")); 
        return R.ok().put("data", discusszuixinxianluService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(DiscusszuixinxianluEntity discusszuixinxianlu){
        EntityWrapper< DiscusszuixinxianluEntity> ew = new EntityWrapper< DiscusszuixinxianluEntity>();
 		ew.allEq(MPUtil.allEQMapPre( discusszuixinxianlu, "discusszuixinxianlu")); 
		DiscusszuixinxianluView discusszuixinxianluView =  discusszuixinxianluService.selectView(ew);
		return R.ok("查询最新线路评论表成功").put("data", discusszuixinxianluView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        DiscusszuixinxianluEntity discusszuixinxianlu = discusszuixinxianluService.selectById(id);
        return R.ok().put("data", discusszuixinxianlu);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        DiscusszuixinxianluEntity discusszuixinxianlu = discusszuixinxianluService.selectById(id);
        return R.ok().put("data", discusszuixinxianlu);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody DiscusszuixinxianluEntity discusszuixinxianlu, HttpServletRequest request){
    	discusszuixinxianlu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(discusszuixinxianlu);
        discusszuixinxianluService.insert(discusszuixinxianlu);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody DiscusszuixinxianluEntity discusszuixinxianlu, HttpServletRequest request){
    	discusszuixinxianlu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(discusszuixinxianlu);
        discusszuixinxianluService.insert(discusszuixinxianlu);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody DiscusszuixinxianluEntity discusszuixinxianlu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(discusszuixinxianlu);
        discusszuixinxianluService.updateById(discusszuixinxianlu);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        discusszuixinxianluService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<DiscusszuixinxianluEntity> wrapper = new EntityWrapper<DiscusszuixinxianluEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = discusszuixinxianluService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}