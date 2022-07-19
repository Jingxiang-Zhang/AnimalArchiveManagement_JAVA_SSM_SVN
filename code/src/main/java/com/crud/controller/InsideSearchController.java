package com.crud.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crud.bean.AnimalArchive;
import com.crud.bean.AnimalBasicInfo;
import com.crud.bean.AnimalBreedRecord;
import com.crud.bean.AnimalFeedRecord;
import com.crud.bean.AnimalHealthRecord;
import com.crud.bean.ExperimentData;
import com.crud.bean.Msg;
import com.crud.service.InsideSearchService;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class InsideSearchController {
	@Autowired
	InsideSearchService insideservice;
	// 重定向
	@RequestMapping("/search/AnimalArchiveSearch")
	public String redir1(Model model) {
		return "search/AnimalArchiveSearch";
	}
	@RequestMapping("/search/AnimalBasicInfoSearch")
	public String redir2(Model model) {
		return "search/AnimalBasicInfoSearch";
	}
	@RequestMapping("/search/AnimalHealthInfoSearch")
	public String redir3(Model model) {
		return "search/AnimalHealthInfoSearch";
	}
	@RequestMapping("/search/AnimalBreedInfoSearch")
	public String redir4(Model model) {
		return "search/AnimalBreedInfoSearch";
	}
	@RequestMapping("/search/AnimalFeedInfoSearch")
	public String redir5(Model model) {
		return "search/AnimalFeedInfoSearch";
	}
	@RequestMapping("/search/PersonalExpInfoSearch")
	public String redir6(Model model) {
		return "search/PersonalExpInfoSearch";
	}
	@RequestMapping("/search/HistorySearch")
	public String redir7(Model model) {
		return "search/HistorySearch";
	}
	
	/**
	 * 查询档案信息
	 */
	@RequestMapping(value = "/search/AnimalArchiveSearch/searchArchive", method = RequestMethod.POST)
	@ResponseBody
	public Msg queryArc(@RequestParam(value = "pn", defaultValue = "1") Integer pn, 
			AnimalArchive feed) {
		PageHelper.startPage(pn, 10);
		List<AnimalArchive> emplist = insideservice.queryArc(feed);
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		System.out.println(feed);
		PageInfo pageInfo = new PageInfo(emplist, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	/**
	 * 查询饲养信息
	 */
	@RequestMapping(value = "/search/AnimalFeedInfoSearch/queryFeed", method = RequestMethod.POST)
	@ResponseBody
	public Msg queryFeed(@RequestParam(value = "pn", defaultValue = "1") Integer pn, 
			AnimalFeedRecord feed) {
		PageHelper.startPage(pn, 10);
		List<AnimalFeedRecord> emplist = insideservice.queryFeed(feed);
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		System.out.println(feed);
		PageInfo pageInfo = new PageInfo(emplist, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	/**
	 * 查询健康数据
	 */
	@RequestMapping(value = "/search/AnimalHealthInfoSearch/queryHealth", method = RequestMethod.POST)
	@ResponseBody
	public Msg queryHea(@RequestParam(value = "pn", defaultValue = "1") Integer pn, 
			AnimalHealthRecord health) {
		PageHelper.startPage(pn, 10);
		List<AnimalHealthRecord> emplist = insideservice.queryHealth(health);
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		System.out.println(health);
		PageInfo pageInfo = new PageInfo(emplist, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	/**
	 * 查询基本信息数据
	 */
	@RequestMapping(value = "/search/AnimalBasicInfoSearch/queryBasic", method = RequestMethod.POST)
	@ResponseBody
	public Msg queryBas(@RequestParam(value = "pn", defaultValue = "1") Integer pn, 
			AnimalBasicInfo basic) {
		PageHelper.startPage(pn, 10);
		List<AnimalBasicInfo> emplist = insideservice.queryBasic(basic);
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		System.out.println(basic);
		PageInfo pageInfo = new PageInfo(emplist, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	/**
	 * 查询繁殖信息
	 */
	@RequestMapping(value = "/search/AnimalBreedInfoSearch/queryBreed", method = RequestMethod.POST)
	@ResponseBody
	public Msg queryBre(@RequestParam(value = "pn", defaultValue = "1") Integer pn, 
			AnimalBreedRecord breed) {
		PageHelper.startPage(pn, 10);
		List<AnimalBreedRecord> emplist = insideservice.queryBreed(breed);
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		System.out.println(breed);
		PageInfo pageInfo = new PageInfo(emplist, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	/**
	 * 查询个人实验信息
	 */
	@RequestMapping(value = "/search/PersonalExpInfoSearch/queryExp", method = RequestMethod.POST)
	@ResponseBody
	public Msg queryExp(@RequestParam(value = "pn", defaultValue = "1") Integer pn, 
			ExperimentData exp) {
		PageHelper.startPage(pn, 10);
		List<ExperimentData> emplist = insideservice.queryExp(exp);
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		System.out.println(exp);
		PageInfo pageInfo = new PageInfo(emplist, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	
	// 导出实验信息的excel
	@RequestMapping(value = "/excel",method = {RequestMethod.GET})
	public void excel(HttpServletResponse response ,HttpServletRequest request)throws IOException {
		 response.setCharacterEncoding("UTF-8");  
		 String t=request.getParameter("t");
		 System.out.println(t);
		 ExperimentData exp=new ExperimentData();
		 exp.setExperimenternumber(t);
		 exp.setExperimentapproach("");
		 exp.setExperimentlocation("");
		 exp.setExperimentnote("");
		 exp.setExperimentpurpose("");
		 exp.setId(null);
		 exp.setExperimentrecord("");
		 exp.setExperimentdate(null);
		 exp.setEnddate(null);
		 exp.setExperimentresult("");
		 
		 List<ExperimentData> list = insideservice.queryExp(exp);
	        System.out.println(list);
	      //创建excel文件
	        HSSFWorkbook wb = new HSSFWorkbook();
	        //创建sheet页
	        HSSFSheet sheet = wb.createSheet("用户号"+t+"的个人实验信息");
	        //创建标题行
	        HSSFRow titleRow = sheet.createRow(0);
	        titleRow.createCell(0).setCellValue("实验id号");
	        titleRow.createCell(1).setCellValue("动物档案号");
	        titleRow.createCell(2).setCellValue("实验目的");
	        titleRow.createCell(3).setCellValue("实验地点");
	        titleRow.createCell(4).setCellValue("实验方法");
	        titleRow.createCell(5).setCellValue("实验记录");
	        titleRow.createCell(6).setCellValue("实验结果");
	        titleRow.createCell(7).setCellValue("实验备注");
	        titleRow.createCell(8).setCellValue("实验日期");
	        //遍历将数据放到excel列中
            for (ExperimentData user : list) {
                HSSFRow dataRow = sheet.createRow(sheet.getLastRowNum()+1);
                dataRow.createCell(0).setCellValue(user.getId());
                dataRow.createCell(1).setCellValue(user.getExperimentnumber());
                dataRow.createCell(2).setCellValue(user.getExperimentpurpose());
                dataRow.createCell(3).setCellValue(user.getExperimentlocation());
                dataRow.createCell(4).setCellValue(user.getExperimentapproach());
                dataRow.createCell(5).setCellValue(user.getExperimentrecord());
                dataRow.createCell(6).setCellValue(user.getExperimentresult());
                dataRow.createCell(7).setCellValue(user.getExperimentnote());
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String str = sdf.format(user.getExperimentdate());
                dataRow.createCell(8).setCellValue(str);
             
            }

               response.setContentType("application/octet-stream;charset=utf-8");
               response.setHeader("Content-Disposition", "attachment;filename="
                           + new String("个人实验信息".getBytes(),"iso-8859-1") + ".xls");
 
 
               OutputStream ouputStream = response.getOutputStream();  
               wb.write(ouputStream);  
               ouputStream.flush();  
               ouputStream.close();

	}
}
