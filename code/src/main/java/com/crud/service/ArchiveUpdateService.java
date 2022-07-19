package com.crud.service;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.bean.AnimalArchive;
import com.crud.bean.AnimalArchiveExample;
import com.crud.bean.AnimalBasicInfo;
import com.crud.bean.AnimalBasicInfoExample;
import com.crud.bean.AnimalBreedRecord;
import com.crud.bean.AnimalFeedRecord;
import com.crud.bean.AnimalHealthRecord;
import com.crud.bean.ArchiveOperateLog;
import com.crud.bean.ArchiveOperateLogExample;
import com.crud.bean.ArchiveUpdateInspect;
import com.crud.bean.ExperimentData;
import com.crud.bean.ExperimentDataExample;
import com.crud.dao.AnimalArchiveMapper;
import com.crud.dao.AnimalBasicInfoMapper;
import com.crud.dao.AnimalBreedRecordMapper;
import com.crud.dao.AnimalFeedRecordMapper;
import com.crud.dao.AnimalHealthRecordMapper;
import com.crud.dao.ArchiveOperateLogMapper;
import com.crud.dao.ExperimentDataMapper;

@Service
public class ArchiveUpdateService {
	@Autowired
	private AnimalBasicInfoMapper animalBasicMapper;
	@Autowired
	private AnimalArchiveMapper animalArchiveMapper;
	@Autowired
	private ExperimentDataMapper experimentDataMapper;
	@Autowired
	private AnimalHealthRecordMapper animalHealthRecordMapper;
	@Autowired
	private AnimalBreedRecordMapper animalBreedRecordMapper;
	@Autowired
	private AnimalFeedRecordMapper animalFeedRecordMapper;
	@Autowired
	private ArchiveOperateLogMapper archiveOperateLogMapper;

	// 档案删除记录，静态方法
	public static List<ArchiveUpdateInspect> archiveUpdateInspect = new ArrayList<ArchiveUpdateInspect>();

	// *********************************动物档案信息Service*****************************//

	/*
	 * 查询动物档案基本信息，进行分页显示
	 */
	public List<AnimalBasicInfo> getAnimalBaseInfo() {
		List<AnimalBasicInfo> list = animalBasicMapper.selectByExample(null);
		return list;
	}

	/**
	 * 查询动物修改时候的modal中的动物基本信息
	 */
	public AnimalBasicInfo getAnimalBaseInfoByKey(Integer id) {
		AnimalBasicInfo animalBasicInfo = animalBasicMapper.selectByPrimaryKey(id);
		return animalBasicInfo;
	}

	/**
	 * 查询动物修改时候的modal中的动物档案信息
	 */
	public AnimalArchive getAnimalArchiveByKey(Integer id) {
		AnimalArchive animalArchive = animalArchiveMapper.selectByPrimaryKey(id);
		return animalArchive;
	}

	/**
	 * 保存动物档案内容的修改
	 */
	public void updateAnimalArchive(AnimalBasicInfo animalBasicInfo, HttpServletRequest request) {
		animalBasicMapper.updateByPrimaryKeySelective(animalBasicInfo);
		InsertUpdateLog(request);
	}

	/**
	 * 删除动物档案
	 */
	public void deleteAnimalArchive(Integer id, HttpServletRequest request) {
		/*
		animalArchiveMapper.deleteByPrimaryKey(id);
		animalBasicMapper.deleteByPrimaryKey(id);
		*/

		InsertArchiveUpdateInspect(request, 1, id);
	}

	/**
	 * 批量删除动物档案
	 */
	public void deleteBatchAnimalArchive(List<Integer> ids, HttpServletRequest request) {
		/*
		AnimalArchiveExample animalArchiveExample = new AnimalArchiveExample();
		AnimalArchiveExample.Criteria criteria = animalArchiveExample.createCriteria();
		criteria.andArchivenumberIn(ids);
		// delete from xxx where emp_id in (1,2,3);
		animalArchiveMapper.deleteByExample(animalArchiveExample);

		AnimalBasicInfoExample animalBasicInfoExample = new AnimalBasicInfoExample();
		AnimalBasicInfoExample.Criteria criteria2 = animalBasicInfoExample.createCriteria();
		criteria2.andBasicnumberIn(ids);
		animalBasicMapper.deleteByExample(animalBasicInfoExample);
		*/
		for (int id : ids) {
			InsertArchiveUpdateInspect(request, 1, id);
		}

		
	}

	// *********************************实验数据信息Service*****************************//

	/*
	 * 查询实验基本信息，进行分页显示
	 */
	public List<ExperimentData> getExperimentDataInfo() {
		List<ExperimentData> list = experimentDataMapper.selectByExample(null);
		return list;
	}

	/**
	 * 查询动物修改时候的modal中的实验数据信息
	 */
	public ExperimentData getExperimentDataByKey(Integer id) {
		ExperimentData experimentData = experimentDataMapper.selectByPrimaryKey(id);
		return experimentData;
	}

	/**
	 * 保存实验数据内容的修改
	 */
	public void updateExperimentData(ExperimentData animalBasicInfo, HttpServletRequest request) {
		experimentDataMapper.updateByPrimaryKeySelective(animalBasicInfo);
		InsertUpdateLog(request);
	}

	/**
	 * 删除实验数据
	 */
	public void deleteExperimentData(Integer id,HttpServletRequest request) {
		/*
		experimentDataMapper.deleteByPrimaryKey(id);
		*/
		InsertArchiveUpdateInspect(request, 2, id);
	}

	/**
	 * 批量删除实验数据
	 */
	public void deleteBatchExperimentData(List<Integer> ids,HttpServletRequest request) {
		/*
		ExperimentDataExample experimentDataExample = new ExperimentDataExample();
		ExperimentDataExample.Criteria criteria = experimentDataExample.createCriteria();
		criteria.andIdIn(ids);
		experimentDataMapper.deleteByExample(experimentDataExample);
		*/
		for (int id : ids) {
			InsertArchiveUpdateInspect(request, 2, id);
		}
	}

	// *********************************健康记录信息Service*****************************//

	/*
	 * 查询动物档案基本信息，进行分页显示
	 */
	public List<AnimalHealthRecord> getAnimalHealthInfo() {
		List<AnimalHealthRecord> list = animalHealthRecordMapper.selectByExample(null);
		return list;
	}

	/**
	 * 保存健康记录内容的修改
	 */
	public void updateHealthRecordData(AnimalHealthRecord animalHealthRecord, HttpServletRequest request) {
		animalHealthRecord.setRecorddate(new java.util.Date());
		animalHealthRecordMapper.updateByPrimaryKeySelective(animalHealthRecord);
		InsertUpdateLog(request);
	}

	// *********************************繁殖记录信息Service*****************************//

	/*
	 * 查询动物繁殖记录基本信息，进行分页显示
	 */
	public List<AnimalBreedRecord> getAnimalBreedInfo() {
		List<AnimalBreedRecord> list = animalBreedRecordMapper.selectByExample(null);
		return list;
	}

	/**
	 * 保存繁殖记录内容的修改
	 */
	public void updateBreedRecordData(AnimalBreedRecord animalBreedRecord, HttpServletRequest request) {
		animalBreedRecord.setRecorddate(new java.util.Date());
		animalBreedRecordMapper.updateByPrimaryKeySelective(animalBreedRecord);
		InsertUpdateLog(request);
	}

	// *********************************饲养记录信息Service*****************************//

	/*
	 * 查询动物饲养记录基本信息，进行分页显示
	 */
	public List<AnimalFeedRecord> getAnimalFeedRecords() {
		List<AnimalFeedRecord> list = animalFeedRecordMapper.selectByExample(null);
		return list;
	}

	/**
	 * 保存饲养记录内容的修改
	 */
	public void updateFeedRecordData(AnimalFeedRecord animalFeedRecord, HttpServletRequest request) {
		animalFeedRecord.setRecorddate(new java.util.Date());
		animalFeedRecordMapper.updateByPrimaryKeySelective(animalFeedRecord);
		InsertUpdateLog(request);
	}

	// *********************************日志信息Service*****************************//

	/*
	 * 查询动物饲养记录基本信息，进行分页显示
	 */
	public List<ArchiveOperateLog> getUpdateLog() {

		ArchiveOperateLogExample archiveOperateLogExample = new ArchiveOperateLogExample();
		ArchiveOperateLogExample.Criteria criteria = archiveOperateLogExample.createCriteria();
		criteria.andOpcodeEqualTo("3");
		List<ArchiveOperateLog> list = archiveOperateLogMapper.selectByExample(archiveOperateLogExample);
		return list;
	}

	/*
	 * 插入修改日志
	 */
	public void InsertUpdateLog(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String operator = (String) session.getAttribute("user_uid");
		String dept = (String) session.getAttribute("user_dept");
		Integer number = (int) (archiveOperateLogMapper.countByExample(null) + 1);
		ArchiveOperateLog archiveOperateLog = new ArchiveOperateLog();
		archiveOperateLog.setId(number);
		archiveOperateLog.setOpcode("3");
		archiveOperateLog.setOperatereason("更新数据");
		archiveOperateLog.setOperateremark("无");
		archiveOperateLog.setOperator(operator);
		archiveOperateLog.setOperatordept(dept);
		archiveOperateLogMapper.insert(archiveOperateLog);
	}

	// *********************************审查信息Service*****************************//

	/*
	 * 插入档案删除记录
	 */
	public void InsertArchiveUpdateInspect(HttpServletRequest request, int formnumber, int id) {
		
		HttpSession session = request.getSession();
		String dept = (String)session.getAttribute("user_dept");
		String uid = (String)session.getAttribute("user_uid");
		String name = (String)session.getAttribute("user_name");
		ArchiveUpdateInspect archiveUpdateins = new ArchiveUpdateInspect();		
		archiveUpdateins.setArchiveType(formnumber);
		archiveUpdateins.setDept(dept);
		archiveUpdateins.setId(id);
		archiveUpdateins.setOperatorId(uid);
		archiveUpdateins.setOperatorName(name);
		archiveUpdateins.setSubmitDate(new java.util.Date());
		
		for (ArchiveUpdateInspect emp : archiveUpdateInspect) {
			if (emp.getArchiveType() == formnumber && (emp.getId() == id)) {
				return;
			}
		}
		archiveUpdateInspect.add(archiveUpdateins);
	}
	
	
	/*
	 * 删除档案删除记录
	 */
	public void deleteArchiveUpdateInspectByFormnumberAndId(int formnumber, int id) {
		int i = 0;
		for (ArchiveUpdateInspect emp : archiveUpdateInspect) {
			if (emp.getArchiveType() == formnumber && (emp.getId() == id)) {
				archiveUpdateInspect.remove(i);
				break;
			}
			i += 1;
		}
	}
	
	/*
	 * 查询当前申请基本信息，进行分页显示
	 */
	public List<ArchiveUpdateInspect> getAnimalInspectRecords() {
	
		return archiveUpdateInspect;
	}


	/*
	 * 审核失败
	 */
	public void updateInspectFail(AnimalBasicInfo archiveUpdateInspect) {
		int type = Integer.parseInt(archiveUpdateInspect.getAnimallengh()) ;
		int id = archiveUpdateInspect.getBasicnumber();
		deleteArchiveUpdateInspectByFormnumberAndId(type,id);
	}
	
	/*
	 * 审核成功
	 */
	public void updateInspectSuccess(AnimalBasicInfo archiveUpdateInspect) {
		int type = Integer.parseInt(archiveUpdateInspect.getAnimallengh()) ;
		int id = archiveUpdateInspect.getBasicnumber();
		deleteArchiveUpdateInspectByFormnumberAndId(type,id);
		
		if(type==1){
			animalArchiveMapper.deleteByPrimaryKey(id);
			animalBasicMapper.deleteByPrimaryKey(id);
		}
		else{
			experimentDataMapper.deleteByPrimaryKey(id);
		}
	}

}







