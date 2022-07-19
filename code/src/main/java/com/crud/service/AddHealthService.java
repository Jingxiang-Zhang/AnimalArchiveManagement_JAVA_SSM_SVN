/*
 * 
 * 动物健康记录控制器
 * 
 * 
 */

package com.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.bean.AnimalBasicInfo;
import com.crud.dao.AnimalBasicInfoMapper;

import com.crud.dao.AnimalHealthRecordMapper;
import com.crud.bean.AnimalHealthRecord;
import com.crud.bean.AnimalHealthRecordExample;
import com.crud.bean.AnimalHealthRecordExample.Criteria;


@Service
public class AddHealthService {
	@Autowired
	private AnimalBasicInfoMapper animalBasicMapper;

	@Autowired
	private AnimalHealthRecordMapper animalHealthRecordMapper;
	
	
	/*查询动物基本信息*/
	public List<AnimalBasicInfo> getAnimalBaseInfo() {
		List<AnimalBasicInfo> list = animalBasicMapper.selectByExample(null);
		return list;
	}

	
	/*查询当前健康表ID的最大编码*/
	public int getHealthRecordID() {
		List<AnimalHealthRecord> list = animalHealthRecordMapper.selectByExample(null);
		int ID = 1;
		for (int i = 0; i < list.size(); i++) {
			if (ID < list.get(i).getId()) {
				ID = list.get(i).getId();
			}
		}
		return ID;
	}
	
	
	/*向数据库中插入动物健康数据*/
	public void addHealthData(AnimalHealthRecord animalHealthRecord) {
		animalHealthRecordMapper.insertSelective(animalHealthRecord);
	}
	
	
	/*按照动物档案编号查询动物健康数据，返回动物健康数据列表，包含动物健康数据的信息*/
	public List<AnimalHealthRecord> getAnimalHealthRecordByAnimalID(Integer id) {
		//初始化对象
		AnimalHealthRecordExample example = new AnimalHealthRecordExample();
		Criteria criteria =  example.createCriteria();
		//添加查询条件
		criteria.andArchivenumberEqualTo(id);
		//查询
		List<AnimalHealthRecord> list = animalHealthRecordMapper.selectByExample(example);
		return list;
	}
}
