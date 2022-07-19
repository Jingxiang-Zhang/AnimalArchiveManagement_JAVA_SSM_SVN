package com.crud.controller;

/***
 * gjh 用于拦截初始化档案操作url
 */

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crud.bean.AnimalBasicInfo;
import com.crud.bean.AnimalBasicInfoExample;

import com.crud.bean.AnimalArchive;
import com.crud.bean.AnimalArchiveExample;

import com.crud.bean.Msg;
import com.crud.bean.initInfoSet;
import com.crud.service.AnimalArchiveInitialService;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 处理档案初始化CRUD请求
 * 
 * @author gjh
 *
 */
@Controller
public class AnimalArchiveInitialController {
	@Autowired
	AnimalArchiveInitialService animalAchieveInitialService;
	
	/***
	 * 跳转选择:
	 * 1、档案初始化生成
	 * 2、档案基本信息补充
	 * @return
	 */
	@RequestMapping("/initial/initialArchive")
	public String toInitPage(Model model) {
		return "initial/ArchiveInit";
	}
	@RequestMapping("/initial/addEarRing")
	public String toAddBaseInfoPage(Model model) {
		return "initial/AddEarRing";
	}

	/***
	 * 初始化动物档案
	 * @return
	 */
	@RequestMapping(value="/initial/finishInitial", method = RequestMethod.POST)
	@ResponseBody
	public Msg finishInitialArchive(initInfoSet infoset,Model model) {
		
		int choice = animalAchieveInitialService.initAchieve(infoset);
		if(choice == 1){
			System.out.println("档案初始化成功!");
			return Msg.success();
		}
		else if(choice == 2){
			return Msg.initialUIDillegal();
		}
		else if(choice == 3){
			return Msg.responsibleUIDillegal();
		}
		else if(choice == 4){
			return Msg.piUIDillegal();
		}
		else if(choice == 5){
			return Msg.earRingNoillegal();
		}
		System.out.println("档案初始化失败，请检查信息是否输入正确!");
		return Msg.fail();
	}
	
	/*
	 * 查询动物档案基本信息，进行分页显示
	 */
	@RequestMapping("/initial/animalarchive/query")
	@ResponseBody
	public Msg getAnimalArchiveWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 10);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalArchive> animal = animalAchieveInitialService.getAnimalBaseInfo();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(animal, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	/*
	 * 查询动物档案基本信息，进行分页显示
	 */
	@RequestMapping("/initial/animalarchive/querySingle")
	@ResponseBody
	public Msg getAnimalArchiveSingle() {
		List<AnimalArchive> animal = animalAchieveInitialService.getAnimalBaseInfo();
		//PageInfo pageInfo = new PageInfo(animal, 1);
		if(animal.size()==0)return Msg.fail();
		AnimalArchive last_animal_log = animal.get(animal.size()-1);
		return Msg.success().add("LastAnimal", last_animal_log);
	}
	
	/**
	 * 查询动物修改时候的modal中的动物基本信息
	 */
	@RequestMapping(value = "/initial/animalarchive/querybase/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Msg getBase(@PathVariable("id") Integer id) {
		AnimalBasicInfo archiveBasicInfo = animalAchieveInitialService.getAnimalArchiveBaseInfoByKey(id);
		return Msg.success().add("emp", archiveBasicInfo);
	}
	/**
	 * 查询动物修改时候的modal中的动物档案信息
	 */
	@RequestMapping(value = "/initial/animalarchive/queryarchive/{id}", method = RequestMethod.GET)
	@ResponseBody
	public Msg getArchive(@PathVariable("id") Integer id) {
		AnimalArchive emp = animalAchieveInitialService.getAnimalArchiveInfoByKey(id);
		java.util.Date date = emp.getInitialdate();
	
		String dat= String.valueOf(date.getYear()+1900)+"-"+
				String.valueOf(date.getMonth()+1)+"-"+
				String.valueOf(date.getDay()+1);
	
		return Msg.success().add("emp", emp).add("date",dat);
	}
	/**
	 * 保存动物档案内容的修改
	 */
	@RequestMapping(value = "/initial/animalarchive/updateEartag", method = RequestMethod.POST)
	@ResponseBody
	public Msg changeArchive(@RequestParam("archiveNumber") String archivenumber,@RequestParam("eartagNumber") String eartagnumber) {
		if(animalAchieveInitialService.updateAnimalArchive(Integer.parseInt(archivenumber),Integer.parseInt(eartagnumber))){
			return Msg.success();
		}
		else{
			return Msg.earRingNoillegal();
		}
	}
	/***
	 * 仅仅检查耳标合法性
	 */
	@RequestMapping(value = "initial/checkEarRing", method = RequestMethod.POST)
	@ResponseBody
	public Msg checkEarRing(String eartagnumber) {
		if(animalAchieveInitialService.checkEarRingLegal(eartagnumber)){
			return Msg.success();
		}
		else{
			return Msg.earRingNoillegal();
		}
	}
}
