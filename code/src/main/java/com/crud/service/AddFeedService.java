/*
 * 
 * 动物饲养记录控制器
 * 
 * 
 */

package com.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.bean.AnimalBasicInfo;
import com.crud.dao.AnimalBasicInfoMapper;

import com.crud.dao.AnimalFeedRecordMapper;
import com.crud.bean.AnimalFeedRecord;
import com.crud.bean.AnimalFeedRecordExample;
import com.crud.bean.AnimalFeedRecordExample.Criteria;


@Service
public class AddFeedService {
	@Autowired
	private AnimalBasicInfoMapper animalBasicMapper;

	@Autowired
	private AnimalFeedRecordMapper animalFeedRecordMapper;
	
	
	/*查询动物基本信息*/
	public List<AnimalBasicInfo> getAnimalBaseInfo() {
		List<AnimalBasicInfo> list = animalBasicMapper.selectByExample(null);
		return list;
	}

	
	/*查询当前饲养表ID的最大编码*/
	public int getFeedRecordID() {
		List<AnimalFeedRecord> list = animalFeedRecordMapper.selectByExample(null);
		int ID = 1;
		for (int i = 0; i < list.size(); i++) {
			if (ID < list.get(i).getId()) {
				ID = list.get(i).getId();
			}
		}
		return ID;
	}
	
	
	/*向数据库中插入动物饲养数据*/
	public void addFeedData(AnimalFeedRecord animalFeedRecord) {
		animalFeedRecordMapper.insertSelective(animalFeedRecord);
	}
	
	
	/*按照动物档案编号查询动物饲养数据，返回动物饲养数据列表，包含动物饲养数据的信息*/
	public List<AnimalFeedRecord> getAnimalFeedRecordByAnimalID(Integer id) {
		//初始化对象
		AnimalFeedRecordExample example = new AnimalFeedRecordExample();
		Criteria criteria =  example.createCriteria();
		//添加查询条件
		criteria.andArchivenumberEqualTo(id);
		//查询
		List<AnimalFeedRecord> list = animalFeedRecordMapper.selectByExample(example);
		return list;
	}
}
