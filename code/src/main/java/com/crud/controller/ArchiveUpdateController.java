package com.crud.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mysql.fabric.xmlrpc.base.Data;
import com.crud.bean.AnimalArchive;
import com.crud.bean.AnimalBasicInfo;
import com.crud.bean.AnimalBreedRecord;
import com.crud.bean.AnimalFeedRecord;
import com.crud.bean.AnimalHealthRecord;
import com.crud.bean.ArchiveOperateLog;
import com.crud.bean.ArchiveUpdateInspect;
import com.crud.bean.ExperimentData;
import com.crud.bean.Msg;
import com.crud.service.ArchiveUpdateService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

//注意：这里一定要加上controller的标识符才行，可以参考我的模板
@Controller
public class ArchiveUpdateController {

	@Autowired
	ArchiveUpdateService archiveUpdateService;

	/*
	 * 将来自“/update/animal_archive”下的请求重定向到view视图下
	 */
	@RequestMapping("/update/animal_archive")
	public String redirUpdateArchive(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		return "update/animal_archives";
	}

	/*
	 * 将来自“/update/breed_record”下的请求重定向到view视图下
	 */
	@RequestMapping("/update/breed_record")
	public String redirUpdateBreedRecord(Model model) {
		return "update/breed_record";
	}

	/*
	 * 将来自“/update/experiment_data”下的请求重定向到view视图下
	 */
	@RequestMapping("/update/experiment_data")
	public String redirUpdateExperimentData(Model model) {
		return "update/experiment_data";
	}

	/*
	 * 将来自“/update/health_record”下的请求重定向到view视图下
	 */
	@RequestMapping("/update/health_record")
	public String redirUpdateHealthRecord(Model model) {
		return "update/health_record";
	}

	/*
	 * 将来自“/update/feed_record”下的请求重定向到view视图下
	 */
	@RequestMapping("/update/feed_record")
	public String redirUpdateFeedRecord(Model model) {
		return "update/feed_record";
	}

	/*
	 * 将来自“/update/feed_record”下的请求重定向到view视图下
	 */
	@RequestMapping("/update/log")
	public String redirUpdateLog(Model model) {
		return "update/update_log";
	}

	/*
	 * 将来自“/update/feed_record”下的请求重定向到view视图下
	 */
	@RequestMapping("/update/inspect")
	public String redirUpdateInspect(Model model) {
		return "update/update_inspect";
	}

	// *********************************动物档案信息controller*****************************//

	/*
	 * 查询动物档案基本信息，进行分页显示
	 */
	@RequestMapping("/update/animal_archive/query")
	@ResponseBody
	public Msg getAnimalArchiveWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalBasicInfo> animal = archiveUpdateService.getAnimalBaseInfo();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(animal, 7);
		return Msg.success().add("pageInfo", pageInfo);
	}

	/**
	 * 查询动物修改时候的modal中的动物基本信息
	 */
	@RequestMapping(value = "/update/animal_archive/querybase/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Msg getBase(@PathVariable("id") Integer id) {
		AnimalBasicInfo emp = archiveUpdateService.getAnimalBaseInfoByKey(id);
		return Msg.success().add("emp", emp);
	}

	/**
	 * 查询动物修改时候的modal中的动物档案信息
	 */
	@RequestMapping(value = "/update/animal_archive/queryarchive/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Msg getArchive(@PathVariable("id") Integer id) {
		AnimalArchive emp = archiveUpdateService.getAnimalArchiveByKey(id);
		java.util.Date date = emp.getInitialdate();

		String dat = String.valueOf(date.getYear() + 1900) + "-" + String.valueOf(date.getMonth() + 1) + "-"
				+ String.valueOf(date.getDate());

		return Msg.success().add("emp", emp).add("date", dat);
	}

	/**
	 * 保存动物档案内容的修改
	 */
	@RequestMapping(value = "/update/animal_archive/update/{empId}", method = RequestMethod.PUT)
	@ResponseBody
	public Msg changeArchive(AnimalBasicInfo animalBasicInfo, HttpServletRequest request,
			HttpServletResponse response) {
		archiveUpdateService.updateAnimalArchive(animalBasicInfo, request);
		return Msg.success();
	}

	/**
	 * 批量删除动物档案信息:1-2-3 单个：1
	 */
	@RequestMapping(value = "/update/animal_archive/update/{ids}", method = RequestMethod.DELETE)
	@ResponseBody
	public Msg deleteEmpById(@PathVariable("ids") String ids, HttpServletRequest request,
			HttpServletResponse response) {
		if (ids.contains("-")) {
			String[] strIds = ids.split("-");
			List<Integer> del_ids = new ArrayList<Integer>();
			for (String str : strIds) {
				del_ids.add(Integer.parseInt(str));
			}
			archiveUpdateService.deleteBatchAnimalArchive(del_ids,request);

		} else {
			archiveUpdateService.deleteAnimalArchive(Integer.parseInt(ids), request);
		}
		return Msg.success();
	}

	// *********************************实验数据信息controller*****************************//

	/*
	 * 查询实验数据基本信息，进行分页显示
	 */
	@RequestMapping("/update/experiment_data/query")
	@ResponseBody
	public Msg getExperimentDataWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		List<ExperimentData> animal = archiveUpdateService.getExperimentDataInfo();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(animal, 7);

		// 获取员工数据
		List<ExperimentData> list = pageInfo.getList();
		List<String> listdate = new ArrayList<String>();
		for (ExperimentData emp : list) {
			java.util.Date date = emp.getExperimentdate();
			String dat = String.valueOf(date.getYear() + 1900) + "-" + String.valueOf(date.getMonth() + 1) + "-"
					+ String.valueOf(date.getDate());
			listdate.add(dat);
		}

		return Msg.success().add("pageInfo", pageInfo).add("date", listdate);
	}

	/**
	 * 查询动物修改时候的modal中的动物基本信息
	 */
	@RequestMapping(value = "/update/experiment_data/querybase/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Msg getExperimentBase(@PathVariable("id") Integer id) {
		ExperimentData emp = archiveUpdateService.getExperimentDataByKey(id);
		java.util.Date date = emp.getExperimentdate();
		String dat = String.valueOf(date.getYear() + 1900) + "-" + String.valueOf(date.getMonth() + 1) + "-"
				+ String.valueOf(date.getDate());
		return Msg.success().add("emp", emp).add("date", dat);
	}

	/**
	 * 保存实验数据内容的修改
	 */
	@RequestMapping(value = "/update/experiment_data/update/{empId}", method = RequestMethod.PUT)
	@ResponseBody
	public Msg changeExperimentData(ExperimentData exAnimalBasicInfo, HttpServletRequest request,
			HttpServletResponse response) {
		archiveUpdateService.updateExperimentData(exAnimalBasicInfo, request);
		return Msg.success();
	}

	/**
	 * 批量删除动物档案信息:1-2-3 单个：1
	 */
	@RequestMapping(value = "/update/experiment_data/update/{ids}", method = RequestMethod.DELETE)
	@ResponseBody
	public Msg deleteExperimentDataById(@PathVariable("ids") String ids,HttpServletRequest request,
			HttpServletResponse response) {
		if (ids.contains("-")) {
			String[] strIds = ids.split("-");
			List<Integer> del_ids = new ArrayList<Integer>();
			for (String str : strIds) {
				del_ids.add(Integer.parseInt(str));
			}
			archiveUpdateService.deleteBatchExperimentData(del_ids,request);

		} else {
			archiveUpdateService.deleteExperimentData(Integer.parseInt(ids),request);
		}
		return Msg.success();
	}

	// *********************************健康信息controller*****************************//

	/*
	 * 查询实验数据基本信息，进行分页显示
	 */
	@RequestMapping("/update/health_record/query")
	@ResponseBody
	public Msg getHealthRecordWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 查询动物档案
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalBasicInfo> animal = archiveUpdateService.getAnimalBaseInfo();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(animal, 7);

		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalHealthRecord> animal2 = archiveUpdateService.getAnimalHealthInfo();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo2 = new PageInfo(animal2, 7);

		// 获取员工数据
		List<AnimalHealthRecord> list = pageInfo2.getList();
		List<String> listdate = new ArrayList<String>();
		for (AnimalHealthRecord emp : list) {
			java.util.Date date = emp.getRecorddate();
			String dat = String.valueOf(date.getYear() + 1900) + "-" + String.valueOf(date.getMonth() + 1) + "-"
					+ String.valueOf(date.getDate());
			listdate.add(dat);
		}

		return Msg.success().add("pageInfo", pageInfo).add("pageInfo2", pageInfo2).add("date", listdate);
	}

	/**
	 * 保存健康记录数据内容的修改
	 */
	@RequestMapping(value = "/update/health_record/update/{empId}", method = RequestMethod.PUT)
	@ResponseBody
	public Msg changeHealthData(AnimalHealthRecord animalHealthRecord, HttpServletRequest request,
			HttpServletResponse response) {
		archiveUpdateService.updateHealthRecordData(animalHealthRecord, request);
		return Msg.success();
	}

	// *********************************繁殖信息controller*****************************//
	/*
	 * 查询实验数据基本信息，进行分页显示
	 */
	@RequestMapping("/update/breed_record/query")
	@ResponseBody
	public Msg getBreedRecordWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 查询动物档案
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalBreedRecord> animalbreed = archiveUpdateService.getAnimalBreedInfo();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		PageInfo pageInfo = new PageInfo(animalbreed, 7);

		// 获取员工数据
		List<AnimalBreedRecord> list = pageInfo.getList();
		List<String> listdate = new ArrayList<String>();
		List<AnimalBasicInfo> animalinfo = new ArrayList<AnimalBasicInfo>();

		for (AnimalBreedRecord emp : list) {
			java.util.Date date = emp.getRecorddate();
			String dat = String.valueOf(date.getYear() + 1900) + "-" + String.valueOf(date.getMonth() + 1) + "-"
					+ String.valueOf(date.getDate());
			listdate.add(dat);

			
			Integer uid = emp.getArchivenumber();
			AnimalBasicInfo animalBasicInfo = archiveUpdateService.getAnimalBaseInfoByKey(uid);
			animalinfo.add(animalBasicInfo);
		}
		
		return Msg.success().add("pageInfo", pageInfo).add("animalinfo", animalinfo).add("date", listdate);
	}

	/**
	 * 保存健康记录数据内容的修改
	 */
	@RequestMapping(value = "/update/breed_record/update/{empId}", method = RequestMethod.PUT)
	@ResponseBody
	public Msg changeBreedData(AnimalBreedRecord animalBreedRecord, HttpServletRequest request,
			HttpServletResponse response) {
		archiveUpdateService.updateBreedRecordData(animalBreedRecord, request);
		return Msg.success();
	}

	// *********************************饲养信息controller*****************************//
	/*
	 * 查询实验数据基本信息，进行分页显示
	 */
	@RequestMapping("/update/feed_record/query")
	@ResponseBody
	public Msg getFeedRecordWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 查询动物档案
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalFeedRecord> animalfeed = archiveUpdateService.getAnimalFeedRecords();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		PageInfo pageInfo = new PageInfo(animalfeed, 7);

		// 获取员工数据
		List<AnimalFeedRecord> list = pageInfo.getList();
		List<String> listdate = new ArrayList<String>();
		List<AnimalBasicInfo> animalinfo = new ArrayList<AnimalBasicInfo>();

		for (AnimalFeedRecord emp : list) {
			java.util.Date date = emp.getRecorddate();
			String dat = String.valueOf(date.getYear() + 1900) + "-" + String.valueOf(date.getMonth() + 1) + "-"
					+ String.valueOf(date.getDate());
			listdate.add(dat);

			Integer uid = emp.getArchivenumber();
			AnimalBasicInfo animalBasicInfo = archiveUpdateService.getAnimalBaseInfoByKey(uid);
			animalinfo.add(animalBasicInfo);
		}

		return Msg.success().add("pageInfo", pageInfo).add("animalinfo", animalinfo).add("date", listdate);
	}

	/**
	 * 保存饲养记录数据内容的修改
	 */
	@RequestMapping(value = "/update/feed_record/update/{empId}", method = RequestMethod.PUT)
	@ResponseBody
	public Msg changeBreedData(AnimalFeedRecord animalFeedRecord, HttpServletRequest request,
			HttpServletResponse response) {
		archiveUpdateService.updateFeedRecordData(animalFeedRecord, request);
		return Msg.success();
	}

	// *********************************日志类controller*****************************//

	/*
	 * 查询动物档案基本信息，进行分页显示
	 */
	@RequestMapping("/update/log/query")
	@ResponseBody
	public Msg getUpdateWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		List<ArchiveOperateLog> animal = archiveUpdateService.getUpdateLog();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(animal, 7);
		return Msg.success().add("pageInfo", pageInfo);
	}

	// *********************************审查controller*****************************//

	/*
	 * 查询动物档案基本信息，进行分页显示
	 */
	@RequestMapping("/update/inspect/query")
	@ResponseBody
	public Msg getInspectWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		List<ArchiveUpdateInspect> animal = archiveUpdateService.getAnimalInspectRecords();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(animal, 7);

		// 获取员工数据
		List<ArchiveUpdateInspect> list = pageInfo.getList();
		List<String> listdate = new ArrayList<String>();
		for (ArchiveUpdateInspect emp : list) {
			java.util.Date date = emp.getSubmitDate();
			String dat = String.valueOf(date.getYear() + 1900) + "-" + String.valueOf(date.getMonth() + 1) + "-"
					+ String.valueOf(date.getDate());
			listdate.add(dat);
		}

		return Msg.success().add("pageInfo", pageInfo).add("date", listdate);
	}

	
	
	/**
	 * 审核结果为拒绝
	 */
	@RequestMapping(value = "/update/inpect/decline/{empId}", method = RequestMethod.PUT)
	@ResponseBody
	public Msg InspectFail(AnimalBasicInfo animalBasicInfo) {
		
		//System.out.println(animalBasicInfo.getBasicnumber());
		//System.out.println(animalBasicInfo.getAnimallengh());
		archiveUpdateService.updateInspectFail(animalBasicInfo);
		return Msg.success();
	
	}
	
	
	/**
	 * 审核结果为同意
	 */
	@RequestMapping(value = "/update/inpect/agree/{empId}", method = RequestMethod.PUT)
	@ResponseBody
	public Msg InspectSuccess(AnimalBasicInfo animalBasicInfo) {
		
		archiveUpdateService.updateInspectSuccess(animalBasicInfo);
		return Msg.success();
	
	}
}








