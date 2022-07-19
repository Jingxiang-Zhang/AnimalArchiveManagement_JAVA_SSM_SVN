/*
 * 
 * 
 * 繁殖数据添加控制器
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
import com.crud.bean.AnimalBreedRecord;
import com.crud.bean.Msg;
import com.crud.service.AddBreedService;

@Controller
public class AddBreedController {
	
	@Autowired
	AddBreedService addBreedService;
	
	
	/*将来自“添加繁殖记录”下的请求重定向到view视图下*/
	@RequestMapping("/add/AddBreedRecord")
	public String redirAddBreedRecord(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		return "add/AddBreedRecord";
	}
	
	
	/*将来自“查看繁殖记录”下的请求重定向到view视图下*/
	@RequestMapping("/add/LookBreedRecord")
	public String redirBreedRecordLook(Model model) {		
		return "/add/LookBreedRecord";
	}
	
	
	/*查询实验记录的分页处理
	 *首先根据id检索出该档案下的全部试验记录
	 *然后将查询的实验记录按照插入时间的顺序降序排序
	 *将date格式的数据转化为string格式
	 *封装为分页请求信息提交至数据库
	 * */
	@RequestMapping("/add/LookBreedRecord/query")
	@ResponseBody
	public Msg getBreedDataWithJson(@RequestParam(value = "id") Integer id, @RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 10);
		
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalBreedRecord> expdata = addBreedService.getAnimalBreedRecordByAnimalID(id);
		
		//按照记录的添加顺序降序排序
		Collections.sort(expdata);	
		
		// 将日期转化为yyyy-mm-dd的格式,添加到新建的列表中
		List<String> stiem = new ArrayList<String>();
		
		//将日期转化为yyyy-mm-dd的格式
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
	
	
	/*处理查询最新繁殖记录编号*/
	@RequestMapping("/add/AddBreedRecord/BreedID")
	@ResponseBody
	public Msg getBreed() {
		int ExperimentID = addBreedService.getBreedRecordID()+1;	
		return Msg.success().add("BreedID", ExperimentID);
	}
	
	
	/*保存繁殖数据的添加内容*/ 
	@RequestMapping(value = "/add/BreedRecord/add", method = RequestMethod.POST)
	@ResponseBody
	public Msg changeArchive(AnimalBreedRecord animalBreedRecord) {
		System.out.println(animalBreedRecord.getBreeddescription());
		System.out.println(animalBreedRecord.getRecorder());
		System.out.println(animalBreedRecord.getArchivenumber());
		System.out.println(animalBreedRecord.getRecorddate());
		System.out.println(animalBreedRecord.getId());
		addBreedService.addEBreedData(animalBreedRecord);
		return Msg.success();
	}
}





