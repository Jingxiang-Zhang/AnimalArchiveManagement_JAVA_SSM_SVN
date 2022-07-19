/*
 * 
 * 
 * 饲养数据添加控制器
 * 
 * 
 * */

package com.crud.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.crud.bean.AnimalFeedRecord;
import com.crud.bean.Msg;
import com.crud.service.AddFeedService;

@Controller
public class AddFeedController {
	
	@Autowired
	AddFeedService addFeedService;
	
	
	/*将来自“添加饲养记录”下的请求重定向到view视图下*/
	@RequestMapping("/add/AddFeedRecord")
	public String redirAddFeedRecord(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		return "add/AddFeedRecord";
	}

	
	/*将来自“查看饲养记录”下的请求重定向到view视图下*/
	@RequestMapping("/add/LookFeedRecord")
	public String redirFeedRecordLook(Model model) {		
		return "/add/LookFeedRecord";
	}
	
	
	/*查询饲养记录的分页处理*/
	@RequestMapping("/add/LookFeedRecord/query")
	@ResponseBody
	public Msg getFeedDataWithJson(@RequestParam(value = "id") Integer id, @RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 10);
		
		// startPage紧跟着的这个查询就是一个分页查询		
		List<AnimalFeedRecord> expdata = addFeedService.getAnimalFeedRecordByAnimalID(id);
		
		// 按照插入的先后次序进行排序
		Collections.sort(expdata);	
		
		// 将日期转化为yyyy-mm-dd的格式
		List<String> stiem = new ArrayList<String>();
		
		for(int i=0;i<expdata.size();i++){
			java.util.Date date = expdata.get(i).getRecorddate();
			SimpleDateFormat sformat = new SimpleDateFormat("yyyy-MM-dd");
	        String tiem = sformat.format(date);
			stiem.add(tiem);
			if(i==10){
				break;
			}
		}
		
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据，连续显示10页
		PageInfo pageInfo = new PageInfo(expdata, 10);	
		return Msg.success().add("pageInfo", pageInfo).add("date", stiem);
	}
	
	
	/*处理查询最新饲养数据编号*/
	@RequestMapping("/add/AddFeedRecord/FeedID")
	@ResponseBody
	public Msg getFeed() {
		int FeedID = addFeedService.getFeedRecordID()+1;	
		return Msg.success().add("FeedID", FeedID);
	}
	
	
	/*保存饲养数据的添加内容*/	 
	@RequestMapping(value = "/add/FeedRecord/add", method = RequestMethod.POST)
	@ResponseBody
	public Msg changeArchive(AnimalFeedRecord animalFeedRecord) {
		addFeedService.addFeedData(animalFeedRecord);
		return Msg.success();
	}
}





