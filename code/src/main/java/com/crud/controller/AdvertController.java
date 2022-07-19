package com.crud.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crud.bean.AdvertisingProtocolRecord;
import com.crud.bean.AnimalArchive;
import com.crud.bean.AuthorizationProtocoRecord;
import com.crud.bean.Msg;
import com.crud.service.AdvertService;
import com.crud.service.AuthzService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class AdvertController {
	@Autowired
	AdvertService advert_service;
	
	// 显示推荐档案
	@RequestMapping("/advert/recommend")
	public String redirectRecommend(Model model) {
		return "advert/recommend";
	}
	
	@RequestMapping("/advert/advert")
	public String redirectAuthz(Model model) {
		return "advert/advert";
	}
	
	//显示推广申请
	@RequestMapping("/advert/advert/query")
	@ResponseBody
	public Msg getAnimalArchiveWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalArchive> advert_apply_info = advert_service.get_advert_apply_info();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(advert_apply_info, 7);
		return Msg.success().add("pageInfo", pageInfo);
	}

	//更新动物档案字段
	@RequestMapping(value = "/advert/advert/updatearchive/{empId}", method = RequestMethod.PUT)
	@ResponseBody
	public Msg advertChangeArchive(AnimalArchive animalarchive) {
		advert_service.updateAdvertAnimalArchive(animalarchive);
		return Msg.success();
	}
	
	//插入推广协议
	@RequestMapping(value = "/advert/advert/insertadvertprotocol", method = RequestMethod.POST)
	@ResponseBody
	public Msg insertAdvertProtocol(AdvertisingProtocolRecord advert_protocol_record) {
		advert_protocol_record.setBusinessdate(new java.util.Date());
		advert_service.insertAdvertProtocol(advert_protocol_record);
		return Msg.success();
	}
	
	// 推广协议
	@RequestMapping("/advert/advert_aggrement")
	public String redirectAuthzAggrement(Model model) {
		return "advert/advert_aggrement";
	}
	
	//查看所有推广协议
	@RequestMapping("/advert/advert/query_aggrement")
	@ResponseBody
	public Msg getAdvertProtRecordWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 5);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AdvertisingProtocolRecord> advert_aggre_info = advert_service.get_advert_aggre_info();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示7页
		PageInfo pageInfo = new PageInfo(advert_aggre_info, 5);
		
		
		
		List<AdvertisingProtocolRecord> list = pageInfo.getList();
		List<String> listdate = new ArrayList<String>();
		for (AdvertisingProtocolRecord emp : list) {
			java.util.Date date = emp.getBusinessdate();
			String dat = String.valueOf(date.getYear() + 1900) + "-" + String.valueOf(date.getMonth() + 1) + "-"
					+ String.valueOf(date.getDate());
			listdate.add(dat);
		}

		return Msg.success().add("pageInfo", pageInfo).add("date", listdate);
	}
	
	
	//根据动物档案编号查询推广协议
	@RequestMapping(value = "/advert/advert/query_aggrement_by_archivenumber/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getAdvertProtRecordByArchivenumberWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn,@PathVariable("id") Integer id) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 5);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AdvertisingProtocolRecord> advert_aggre_info = advert_service.get_advert_aggre_info_by_archivenumber(id);
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示7页
		PageInfo pageInfo = new PageInfo(advert_aggre_info, 5);
		
		
		
		List<AdvertisingProtocolRecord> list = pageInfo.getList();
		List<String> listdate = new ArrayList<String>();
		for (AdvertisingProtocolRecord emp : list) {
			java.util.Date date = emp.getBusinessdate();
			String dat = String.valueOf(date.getYear() + 1900) + "-" + String.valueOf(date.getMonth() + 1) + "-"
					+ String.valueOf(date.getDate());
			listdate.add(dat);
		}

		return Msg.success().add("pageInfo", pageInfo).add("date", listdate);
	}
	
	//授权申请跳转
	@RequestMapping("/advert/advert_apply")
	public String redirectAuthzApply(Model model) {
		return "advert/advert_apply";
	}
	
	//授权申请跳转
	@RequestMapping("/advert/advert_result")
	public String redirectAuthzApplyResult(Model model) {
		return "advert/advert_result";
	}
	//查询可申请推广档案
	@RequestMapping(value="/advert/archive_can_advert/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getArchiveCanAuthzWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn,@PathVariable("id") String id) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalArchive> archive_can_advert = advert_service.get_archive_can_advert(id);
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(archive_can_advert, 7);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	//查询已申请但未处理的授权
	@RequestMapping(value="/advert/archive_without_process/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getArchiveWithoutAdvertProcessWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn,@PathVariable("id") String id) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 5);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalArchive> archive_can_advert = advert_service.get_archive_without_advert_process(id);
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(archive_can_advert, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	//根据uid查询已推广档案
	@RequestMapping(value="/advert/archive_has_advert/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getArchiveHasAdvertWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn,@PathVariable("id") String id) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 5);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalArchive> archive_has_advert = advert_service.get_archive_has_advert(id);
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(archive_has_advert, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	//取消推广跳转
	@RequestMapping("/advert/remove_advert")
	public String redirectRemoveAdvert(Model model) {
		return "advert/remove_advert";
	}
	
	//查询所有已推广档案
	@RequestMapping("/advert/all_archive_has_advert")
	@ResponseBody
	public Msg getALLArchiveHasAdvertWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 5);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalArchive> all_archive_has_advert = advert_service.get_all_archive_has_advert();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(all_archive_has_advert, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	//显示推荐档案 暂时先用别的mapper，测试成功后再更改
	@RequestMapping("/advert/get_recommend_archive")
	@ResponseBody
	public Msg getALLRecommendArchiveWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 8);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalArchive> recommend_archive = advert_service.get_recommend_archive();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(recommend_archive, 8);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	
}
