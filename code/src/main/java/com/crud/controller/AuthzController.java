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

import com.crud.bean.AnimalArchive;
import com.crud.bean.AnimalBasicInfo;
import com.crud.bean.AuthorizationProtocoRecord;
import com.crud.bean.ExperimentData;
import com.crud.bean.Msg;
import com.crud.service.AuthzService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class AuthzController {
	@Autowired
	AuthzService authz_service;
	
	// 显示全部的动物档案数据
	@RequestMapping("/authz/authz")
	public String redirectAuthz(Model model) {
		return "authz/authz";
	}
	
	@RequestMapping("/authz/authz/query")
	@ResponseBody
	public Msg getAnimalArchiveWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalArchive> authz_apply_info = authz_service.get_authz_apply_info();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示7页
		PageInfo pageInfo = new PageInfo(authz_apply_info, 7);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	/**
	 * 查询授权时动物档案的信息(申请人编号，动物档案编号)
	 */
	@RequestMapping(value = "/authz/authz/archiveinfo/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Msg getArchiveInfo(@PathVariable("id") Integer id) {
		AnimalArchive emp =authz_service.getArchiveInfoByKey(id);
		return Msg.success().add("emp", emp);
	}
	
	@RequestMapping(value = "/authz/authz/updatearchive/{empId}", method = RequestMethod.PUT)
	@ResponseBody
	public Msg authzChangeArchive(AnimalArchive animalarchive) {
		authz_service.updateAuthzAnimalArchive(animalarchive);
		return Msg.success();
	}
	
	@RequestMapping(value = "/authz/authz/insertauthzprotocol", method = RequestMethod.POST)
	@ResponseBody
	public Msg insertAuthzProtocol(AuthorizationProtocoRecord authz_protocol_record) {
		authz_protocol_record.setBusinessdate(new java.util.Date());
		authz_service.insertAuthzProtocol(authz_protocol_record);
		return Msg.success();
	}
	
	// 显示全部的授权协议
	@RequestMapping("/authz/authz_aggrement")
	public String redirectAuthzAggrement(Model model) {
		return "authz/authz_aggrement";
	}
	
	@RequestMapping("/authz/authz/query_aggrement")
	@ResponseBody
	public Msg getAuthzProtRecordWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 5);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AuthorizationProtocoRecord> authz_aggre_info = authz_service.get_authz_aggre_info();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示7页
		PageInfo pageInfo = new PageInfo(authz_aggre_info, 5);
		
		

		List<AuthorizationProtocoRecord> list = pageInfo.getList();
		List<String> listdate = new ArrayList<String>();
		for (AuthorizationProtocoRecord emp : list) {
			java.util.Date date = emp.getBusinessdate();
			String dat = String.valueOf(date.getYear() + 1900) + "-" + String.valueOf(date.getMonth() + 1) + "-"
					+ String.valueOf(date.getDate());
			listdate.add(dat);
		}

		return Msg.success().add("pageInfo", pageInfo).add("date", listdate);
	}
	
	//根据动物档案编号查询授权协议
	@RequestMapping(value = "/authz/authz/query_aggrement_by_archivenumber/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getAuthzProtRecordByArchivenumberWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn,@PathVariable("id") Integer id) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 5);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AuthorizationProtocoRecord> authz_aggre_info = authz_service.get_authz_aggre_info_by_archivenumber(id);
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示7页
		PageInfo pageInfo = new PageInfo(authz_aggre_info, 5);
		
		
	
		List<AuthorizationProtocoRecord> list = pageInfo.getList();
		List<String> listdate = new ArrayList<String>();
		for (AuthorizationProtocoRecord emp : list) {
			java.util.Date date = emp.getBusinessdate();
			String dat = String.valueOf(date.getYear() + 1900) + "-" + String.valueOf(date.getMonth() + 1) + "-"
					+ String.valueOf(date.getDate());
			listdate.add(dat);
		}

		return Msg.success().add("pageInfo", pageInfo).add("date", listdate);
	}
	
	//授权申请跳转
	@RequestMapping("/authz/authz_apply")
	public String redirectAuthzApply(Model model) {
		return "authz/authz_apply";
	}
	
	//授权申请跳转
	@RequestMapping("/authz/authz_result")
	public String redirectAuthzApplyResult(Model model) {
		return "authz/authz_result";
	}

	//查询可授权 
	@RequestMapping(value="/authz/archive_can_authz/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getArchiveCanAuthzWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn,@PathVariable("id") String id) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalArchive> archive_can_auhtz = authz_service.get_archive_can_authz(id);
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(archive_can_auhtz, 7);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	//查询已申请但未处理的授权
	@RequestMapping(value="/authz/archive_without_process/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getArchiveWithoutProcessWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn,@PathVariable("id") String id) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 5);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalArchive> archive_can_auhtz = authz_service.get_archive_without_process(id);
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(archive_can_auhtz, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	//根据uid查询已授权档案
	@RequestMapping(value="/authz/archive_has_authz/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getArchiveHasAuthzWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn,@PathVariable("id") String id) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 5);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalArchive> archive_has_auhtz = authz_service.get_archive_has_authz(id);
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(archive_has_auhtz, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	//授权申请跳转
	@RequestMapping("/authz/remove_authz")
	public String redirectRemoveAuthz(Model model) {
		return "authz/remove_authz";
	}
	
	//查询所有已授权档案
	@RequestMapping("/authz/all_archive_has_authz")
	@ResponseBody
	public Msg getALLArchiveHasAuthzWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 5);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalArchive> all_archive_has_auhtz = authz_service.get_all_archive_has_authz();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(all_archive_has_auhtz, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
}
