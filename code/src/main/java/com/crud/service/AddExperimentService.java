/*
 * 
 * 
 * 动物实验数据服务器
 * 
 * 
 * */

package com.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.bean.AnimalBasicInfo;
import com.crud.bean.AnimalBasicInfoExample;
import com.crud.dao.AnimalBasicInfoMapper;

import com.crud.bean.ExperimentData;
import com.crud.bean.ExperimentDataExample;
import com.crud.bean.ExperimentDataExample.Criteria;
import com.crud.dao.ExperimentDataMapper;

@Service
public class AddExperimentService {
	@Autowired
	private AnimalBasicInfoMapper animalBasicMapper;

	@Autowired
	private ExperimentDataMapper experimentDataMapper;

	/* 查询动物基本信息 */
	public List<AnimalBasicInfo> getAnimalBaseInfo() {
		List<AnimalBasicInfo> list = animalBasicMapper.selectByExample(null);
		return list;
	}

	
	/* 用关键词查询动物基本信息，其中int型的为准确查询，string型的为模糊查询*/
	public List<AnimalBasicInfo> getAnimalBaseInfoByKeywords(Integer keyword1, String keyword2, String keyword3,
			String keyword4) {

		// 初始化对象
		AnimalBasicInfoExample example = new AnimalBasicInfoExample();
		com.crud.bean.AnimalBasicInfoExample.Criteria criteria = example.createCriteria();

		// 添加查询条件
		int flag = 0;
		if (keyword1 != null) {
			criteria.andBasicnumberEqualTo(keyword1);
			flag = 1;
		}	
		if (keyword2 != "") {
			criteria.andAnimalspeciesLike("%" + keyword2 + "%");
			flag = 1;
		}		
		if (keyword3 != "") {
			criteria.andAnimaldescriptionLike("%" + keyword3 + "%");
			flag = 1;
		}
		if (keyword4 != "") {
			criteria.andAnimaloriginLike("%" + keyword4 + "%");
			flag = 1;
		}

		// 查询
		List<AnimalBasicInfo> list;
		if (flag == 1) {
			list = animalBasicMapper.selectByExample(example);
		} else {
			list = animalBasicMapper.selectByExample(null);
		}

		return list;
	}

	
	/* 查询当前实验表ID的最大编码*/
	public int getExperimentID() {
		List<ExperimentData> list = experimentDataMapper.selectByExample(null);
		int ID = 1;
		for (int i = 0; i < list.size(); i++) {
			if (ID < list.get(i).getId()) {
				ID = list.get(i).getId();
			}
		}
		return ID;
	}

	
	/* 向数据库中插入实验数据*/
	public void addExperimentData(ExperimentData experimentdata) {
		// TODO Auto-generated method stub
		experimentDataMapper.insertSelective(experimentdata);
	}

	
	/*按照动物档案编号查询实验数据，返回实验数据列表，包含实验数据的信息*/
	public List<ExperimentData> getExperimentDataByAnimalID(Integer id) {
		// TODO Auto-generated method stub
		// 初始化对象
		ExperimentDataExample example = new ExperimentDataExample();
		Criteria criteria = example.createCriteria();
		// 添加查询条件
		criteria.andExperimentnumberEqualTo(id);
		// 查询
		List<ExperimentData> list = experimentDataMapper.selectByExample(example);
		return list;
	}
}
