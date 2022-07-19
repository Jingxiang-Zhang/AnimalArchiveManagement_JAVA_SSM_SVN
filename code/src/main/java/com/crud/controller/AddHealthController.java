/*
 * 
 * 
 * 健康数据添加控制器
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
import com.crud.bean.AnimalHealthRecord;
import com.crud.bean.Msg;
import com.crud.service.AddHealthService;

@Controller
public class AddHealthController {

	@Autowired
	AddHealthService addHealthService;

	
	/*将来自“添加健康记录”下的请求重定向到view视图下*/
	@RequestMapping("/add/AddHealthRecord")
	public String redirAddHealthRecord(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		return "add/AddHealthRecord";
	}

	
	/* 将来自“查看健康记录”下的请求重定向到view视图下*/
	@RequestMapping("/add/LookHealthRecord")
	public String redirHealthRecordLook(Model model) {
		return "/add/LookHealthRecord";
	}

	
	/* 查询实验记录的分页处理*/
	@RequestMapping("/add/LookHealthRecord/query")
	@ResponseBody
	public Msg getHealthDataWithJson(@RequestParam(value = "id") Integer id,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 10);
		
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalHealthRecord> expdata = addHealthService.getAnimalHealthRecordByAnimalID(id);
		
		//按照插入的次序排序
		Collections.sort(expdata);	
		
		// 将日期转化为yyyy-mm-dd的格式
		List<String> stiem = new ArrayList<String>();

		for (int i = 0; i < expdata.size(); i++) {
			java.util.Date date = expdata.get(i).getRecorddate();
			SimpleDateFormat sformat = new SimpleDateFormat("yyyy-MM-dd");
			String tiem = sformat.format(date);
			stiem.add(tiem);
			if (i == 10) {
				break;
			}
		}
		
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据，连续显示10页
		PageInfo pageInfo = new PageInfo(expdata, 10);
		return Msg.success().add("pageInfo", pageInfo).add("date", stiem);
	}

	
	/* 处理查询最新健康记录编号*/
	@RequestMapping("/add/AddHealthRecord/HealthID")
	@ResponseBody
	public Msg getHealth() {
		int HealthID = addHealthService.getHealthRecordID() + 1;
		return Msg.success().add("HealthID", HealthID);
	}

	
	/* 保存健康记录的添加内容*/
	@RequestMapping(value = "/add/HealthRecord/add", method = RequestMethod.POST)
	@ResponseBody
	public Msg changeArchive(AnimalHealthRecord animalHealthRecord) {
		addHealthService.addHealthData(animalHealthRecord);
		return Msg.success();
	}
}
