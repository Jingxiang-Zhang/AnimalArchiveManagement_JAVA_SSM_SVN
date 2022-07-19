package com.crud.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crud.bean.AnimalArchive;
import com.crud.bean.Msg;
import com.crud.service.AnimalArchiveService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class AnimalArchiveController {
	@Autowired
	AnimalArchiveService animalarchiveservice;
	
	// 显示全部的动物档案数据
	@RequestMapping("/animal")
	@ResponseBody
	public Msg getEmpsWithJsonAnimal(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 5);
		// startPage紧跟着的这个查询就是一个分页查询
		List<AnimalArchive> animal = animalarchiveservice.getAll();
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(animal, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
}
