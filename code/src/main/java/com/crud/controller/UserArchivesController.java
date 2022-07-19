package com.crud.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crud.bean.AnimalArchive;
import com.crud.bean.AnimalBasicInfo;
import com.crud.bean.AnimalBreedRecord;
import com.crud.bean.AnimalFeedRecord;
import com.crud.bean.AnimalHealthRecord;
import com.crud.bean.ExperimentData;
import com.crud.bean.Msg;
import com.crud.bean.User;
import com.crud.service.UserArchiveService;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

// 外部用户查看个人档案controller
@Controller
public class UserArchivesController {
	
	@Autowired
	UserArchiveService userarchiveService;
	
	// 左侧跳转栏 个人所属档案
	@RequestMapping("/user_archives/my_files")
	public String toPageMyfiles(Model model) {
		return "user_archives/my_files";
	}
	
	// 左侧栏跳转 已购档案
	@RequestMapping("/user_archives/paid_files")
	public String toPagePaidfiles(Model model) {
		return "user_archives/paid_files";
	}
	
	// 左侧栏跳转 档案检索页面
	@RequestMapping("/out_retrieval/outer_retrieval")
	public String toPageOuterRrieval(Model model) {
		return "out_retrieval/outer_retrieval";
	}
	
	// 表单按钮--档案详细信息页面跳转
	@RequestMapping("/user_archives/fileInfo")
	public String toPageFileinfo() {
		return "user_archives/fileInfo";
	}
	
	// 个人所属--获得用户所属档案
	@RequestMapping("/user_archives/myfiles/query")
	@ResponseBody
	public Msg getArchiveWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
								@RequestParam(value = "userid", defaultValue = "0") Integer id) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询

		List<AnimalArchive> files = userarchiveService.getArchiveBaseInfoByUser(String.valueOf(id));	
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(files, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}	
	
	// 已购档案--获得用户已购档案
	@RequestMapping("/user_archives/paidfiles/query")
	@ResponseBody
	public Msg getpaidArchiveWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
									@RequestParam(value = "userid", defaultValue = "0") Integer id) {
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询

		List<AnimalArchive> files = userarchiveService.getPaidArchiveBaseInfoByUser(String.valueOf(id));	
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(files, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	// 获得具体档案的 档案基本信息
	@RequestMapping("/user_archives/loadaa")
	@ResponseBody
	public Msg getaafilesWithJson(@RequestParam(value = "id") String id) {			
		AnimalArchive files = userarchiveService.getArchiveBaseInfoByID(id);
		User iuser = userarchiveService.getUserInfobyuid(files.getInitialpeople());
		User ruser = userarchiveService.getUserInfobyuid(files.getResponsiblepeople());
		files.setRuser(ruser);
		files.setIuser(iuser);
		
		return Msg.success().add("file", files);
	}
	
	// 获得具体档案的 动物基本信息
	@RequestMapping("/user_archives/loadab")
	@ResponseBody
	public Msg getabfilesWithJson(@RequestParam(value = "id") String id) {			
		AnimalBasicInfo files = userarchiveService.getAnimalBaseInfoByID(id);	
		return Msg.success().add("file", files);
	}
	
	// 获得具体档案的 动物健康记录
	@RequestMapping("/user_archives/loadhealth")
	@ResponseBody
	public Msg gethealthfilesWithJson(@RequestParam(value = "id") String id,
									@RequestParam(value = "pn", defaultValue = "1") Integer pn) {			
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询

		List<AnimalHealthRecord> files = userarchiveService.getAnimalHealthInfoByID(String.valueOf(id));
		for(int i = 0;i<files.size();i++){
			AnimalHealthRecord temp = files.get(i);
			User u = userarchiveService.getUserInfobyuid(temp.getRecorder());
			temp.setUser(u);
			files.set(i, temp);
		}
		
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(files, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	// 获得具体档案的 动物繁殖记录
	@RequestMapping("/user_archives/loadbreed")
	@ResponseBody
	public Msg getbreedfilesWithJson(@RequestParam(value = "id") String id,
									@RequestParam(value = "pn", defaultValue = "1") Integer pn) {						
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询

		List<AnimalBreedRecord> files = userarchiveService.getAnimalbreedInfoByID(String.valueOf(id));	
		for(int i = 0;i<files.size();i++){
			AnimalBreedRecord temp = files.get(i);
			User u = userarchiveService.getUserInfobyuid(temp.getRecorder());
			temp.setUser(u);
			files.set(i, temp);
		}
				
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(files, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	// 获得具体档案的 动物饲养记录
	@RequestMapping("/user_archives/loadfeed")
	@ResponseBody
	public Msg getfeedfilesWithJson(@RequestParam(value = "id") String id,		
									@RequestParam(value = "pn", defaultValue = "1") Integer pn) {						
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		
		List<AnimalFeedRecord> files = userarchiveService.getAnimalfeedInfoByID(String.valueOf(id));
		for(int i = 0;i<files.size();i++){
			AnimalFeedRecord temp = files.get(i);
			User u = userarchiveService.getUserInfobyuid(temp.getRecorder());
			temp.setUser(u);
			files.set(i, temp);
		}
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(files, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	// 获得具体档案的 实验记录
	@RequestMapping("/user_archives/loadex")
	@ResponseBody
	public Msg getexfilesWithJson(@RequestParam(value = "id") String id,	
								@RequestParam(value = "pn", defaultValue = "1") Integer pn) {						
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		
		List<ExperimentData> files = userarchiveService.getAnimalExInfoByID(String.valueOf(id));	
		for(int i = 0;i<files.size();i++){
			ExperimentData temp = files.get(i);
			User u = userarchiveService.getUserInfobyuid(temp.getExperimenternumber());
			temp.setUser(u);
			files.set(i, temp);
		}
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(files, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	@RequestMapping("/out_retrieval/loadpage")
	@ResponseBody
	public Msg getAuthzedArchiveWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
									@RequestParam(value = "kw", defaultValue = "") String kw){
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询

		List<AnimalArchive> files = userarchiveService.getAuthzedArchiveBaseInfo(kw);	
		
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(files, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	// 高级检索功能实现
	@SuppressWarnings("deprecation")
	@RequestMapping("/out_retrieval/highlevel")
	@ResponseBody
	public Msg getAuthzedArchiveByASerchWithJson(
			@RequestParam(value = "pn", defaultValue = "1") Integer pn,
			@RequestParam(value = "id", defaultValue = "") Integer id,
			@RequestParam(value = "st", defaultValue = "1970-01-01") String st,
			@RequestParam(value = "et", defaultValue = "2050-01-01") String et,
			@RequestParam(value = "pr", defaultValue = "") BigDecimal pr,
			@RequestParam(value = "kwd1", defaultValue = "") String kwd1,
			@RequestParam(value = "kwd2", defaultValue = "") String kwd2,
			@RequestParam(value = "kwd3", defaultValue = "") String kwd3){
		
		// 引入PageHelper分页插件
		// 查询前调用，传入页码和记录数
		PageHelper.startPage(pn, 7);
		// startPage紧跟着的这个查询就是一个分页查询
		
		AnimalArchive aa = new AnimalArchive();
		
		Date sd = new Date();
		Date ed = new Date();
		String[] s = st.split("-");
		String[] e = et.split("-");
		
		
		sd.setYear(Integer.parseInt(s[0])-1900);
		sd.setMonth(Integer.parseInt(s[1])-1);
		sd.setDate(Integer.parseInt(s[2])-1);
		ed.setYear(Integer.parseInt(e[0])-1900);
		ed.setMonth(Integer.parseInt(e[1])-1);
		ed.setDate(Integer.parseInt(e[2]));
		
		aa.setArchivenumber(id);
		aa.setPrice(pr);
		aa.setKwd1(kwd1);
		aa.setKwd2(kwd2);
		aa.setKwd3(kwd3);
		aa.setInitialdate(sd);
		aa.setEnddate(ed);
		
		List<AnimalArchive> files = userarchiveService.getAuthzedArchiveBaseInfoByAS(aa);
		
		// PageInfo包装查询结果，封装了详细的分页信息和详细数据
		// 连续显示5页
		PageInfo pageInfo = new PageInfo(files, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	// 获得用户已购档案和所属档案的信息
	@RequestMapping("/out_retrieval/checkpaid")
	@ResponseBody
	public Msg checkpaid(@RequestParam(value = "uid", defaultValue = "1") Integer id){
		List<AnimalArchive> files = userarchiveService.getPaidArchiveBaseInfoByUser(String.valueOf(id));
		List<AnimalArchive> files1 = userarchiveService.getArchiveBaseInfoByUser(String.valueOf(id));
		List<Integer> fids = new ArrayList();
		for(int i = 0;i<files.size();i++){
			fids.add(files.get(i).getArchivenumber());
		}
		for(int i = 0;i<files1.size();i++){
			fids.add(files1.get(i).getArchivenumber());
		}
		return Msg.success().add("fids", fids);
	}
	
	// 获得用户已购档案和所属档案的信息
	@RequestMapping("/out_retrieval/pay")
	@ResponseBody
	public Msg pay(@RequestParam(value = "uid", defaultValue = "1") String uid,
			@RequestParam(value = "aid", defaultValue = "1") String aid){
		
		Random random = new Random();
		Integer a = random.nextInt(2);
		
		// 添加购买档案
		if(a==1){
			User u = userarchiveService.getPaidNumberByUser(uid);
			String pids = u.getBuyarc()+","+aid;
			u.setBuyarc(pids);
			userarchiveService.addpaidinfo(u);
		}
		
		return Msg.success().add("res", a);
	}
	
}