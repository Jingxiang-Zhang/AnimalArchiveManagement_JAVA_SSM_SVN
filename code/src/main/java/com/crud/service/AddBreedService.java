/*
 * 
 * 动物繁殖记录服务器
 * 
 * 
 */

package com.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.bean.AnimalBasicInfo;
import com.crud.dao.AnimalBasicInfoMapper;

import com.crud.bean.AnimalBreedRecord;
import com.crud.bean.AnimalBreedRecordExample;
import com.crud.bean.AnimalBreedRecordExample.Criteria;
import com.crud.dao.AnimalBreedRecordMapper;


@Service
public class AddBreedService {
	@Autowired
	private AnimalBasicInfoMapper animalBasicMapper;

	@Autowired
	private AnimalBreedRecordMapper animalBreedRecordMapper;
	
	
	/*查询动物基本信息*/
	public List<AnimalBasicInfo> getAnimalBaseInfo() {
		List<AnimalBasicInfo> list = animalBasicMapper.selectByExample(null);
		return list;
	}

	
	/*查询当前繁殖表ID的最大编码*/
	public int getBreedRecordID() {
		List<AnimalBreedRecord> list = animalBreedRecordMapper.selectByExample(null);
		int ID = 1;
		for (int i = 0; i < list.size(); i++) {
			if (ID < list.get(i).getId()) {
				ID = list.get(i).getId();
			}
		}
		return ID;
	}
	
	
	/*向数据库中插入动物繁殖数据*/
	public void addEBreedData(AnimalBreedRecord animalBreedRecord) {
		animalBreedRecordMapper.insertSelective(animalBreedRecord);
	}
	
	
	/*按照动物档案编号查询动物繁殖数据，返回动物繁殖数据列表，包含动物繁殖数据的信息*/
	public List<AnimalBreedRecord> getAnimalBreedRecordByAnimalID(Integer id) {
		//初始化对象
		AnimalBreedRecordExample example = new AnimalBreedRecordExample();
		Criteria criteria =  example.createCriteria();
		//添加查询条件，动物档案编号
		criteria.andArchivenumberEqualTo(id);
		//查询
		List<AnimalBreedRecord> list = animalBreedRecordMapper.selectByExample(example);
		return list;
	}
}
