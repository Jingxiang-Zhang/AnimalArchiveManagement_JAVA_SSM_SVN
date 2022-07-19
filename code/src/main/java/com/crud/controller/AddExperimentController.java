/*
 * 
 * 实验数据添加控制器
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
import com.crud.bean.AnimalBasicInfo;
import com.crud.bean.ExperimentData;
import com.crud.bean.Msg;
import com.crud.service.AddExperimentService;

@Controller
public class AddExperimentController {

	@Autowired
	AddExperimentService archiveAddExperimentService;

	
	/*将来自“添加实验记录”下的请求重定向到view视图下*/
	@RequestMapping("/add/AddExperimentRecord")
	public String redirAddExperimentRecord(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		return "add/AddExperimentRecord";
	}

	
	/*重新封装查询“动物档案信息”分页请求，
	 *按关键词检索页面并返回分页请求
	 *四个关键词来自搜索框
	 * */
	@RequestMapping("/add/AnimalArchive/input_change_query")
	@ResponseBody
	public Msg getAnimalArchiveWithKeywords(@RequestParam(value = "keyword1") Integer keyword1,
			@RequestParam(value = "keyword2") String keyword2, @RequestParam(value = "keyword3") String keyword3,
			@RequestParam(value = "keyword4") String keyword4,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		
		// 引入PageHelper分页插件，查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 5);
		
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalBasicInfo> animal = archiveAddExperimentService.getAnimalBaseInfoByKeywords(keyword1, keyword2,
				keyword3, keyword4);
		
		//PageInfo包装查询结果，封装了详细的分页信息和详细数据，连续显示5页
		PageInfo pageInfo = new PageInfo(animal, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}

	
	/*将来自“查看实验记录”下的请求重定向到view视图下*/
	@RequestMapping("/add/LookExperimentRecord")
	public String redirExperimentRecordLook(Model model) {
		return "/add/LookExperimentRecord";
	}

	
	/*查询实验记录的分页处理
	 *首先根据id检索出该档案下的全部试验记录
	 *然后将查询的实验记录按照插入时间的顺序降序排序
	 *将date格式的数据转化为string格式
	 *封装为分页请求信息提交至数据库
	 * */
	@RequestMapping("/add/LookExperimentRecord/query")
	@ResponseBody
	public Msg getExperimentDataWithJson(@RequestParam(value = "id") Integer id,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 10);
		
		// startPage紧跟着的这个查询就是一个分页查询
		List<ExperimentData> expdata = archiveAddExperimentService.getExperimentDataByAnimalID(id);
		
		//按id降序排序，每次将最新的记录显示在最上面的表格中
		Collections.sort(expdata);	
		
		// 将日期转化为yyyy-mm-dd的格式,添加到新建的列表中
		List<String> stiem = new ArrayList<String>();
		
		for (int i = 0; i < expdata.size(); i++) {
			java.util.Date date = expdata.get(i).getExperimentdate();
			SimpleDateFormat sformat = new SimpleDateFormat("yyyy-MM-dd");
			String tiem = sformat.format(date);
			stiem.add(tiem);
			if (i == 10) {
				break;
			}
		}	
		
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据,连续显示10页
		PageInfo pageInfo = new PageInfo(expdata, 10);
		return Msg.success().add("pageInfo", pageInfo).add("date", stiem);
	}

	
	/*处理查询最新实验数据编号*/
	@RequestMapping("/add/AddExperimentRecord/ExperimentID")
	@ResponseBody
	public Msg getExperiment() {
		int ExperimentID = archiveAddExperimentService.getExperimentID() + 1;
		return Msg.success().add("ExperimentID", ExperimentID);
	}

	
	/*保存实验数据的添加内容*/
	@RequestMapping(value = "/add/ExperimentRecord/add", method = RequestMethod.POST)
	@ResponseBody
	public Msg changeArchive(ExperimentData experimentdata) {
		archiveAddExperimentService.addExperimentData(experimentdata);
		return Msg.success();
	}
}
