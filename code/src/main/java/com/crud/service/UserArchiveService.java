package com.crud.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.bean.AnimalArchive;
import com.crud.bean.AnimalArchiveExample;
import com.crud.bean.AnimalArchiveExample.Criteria;
import com.crud.bean.AnimalBasicInfo;
import com.crud.bean.AnimalBasicInfoExample;
import com.crud.bean.AnimalBreedRecord;
import com.crud.bean.AnimalBreedRecordExample;
import com.crud.bean.AnimalFeedRecord;
import com.crud.bean.AnimalFeedRecordExample;
import com.crud.bean.AnimalHealthRecord;
import com.crud.bean.AnimalHealthRecordExample;
import com.crud.bean.ExperimentData;
import com.crud.bean.ExperimentDataExample;
import com.crud.bean.User;
import com.crud.dao.AnimalArchiveMapper;
import com.crud.dao.AnimalBasicInfoMapper;
import com.crud.dao.AnimalBreedRecordMapper;
import com.crud.dao.AnimalFeedRecordMapper;
import com.crud.dao.AnimalHealthRecordMapper;
import com.crud.dao.ExperimentDataMapper;
import com.crud.dao.UserMapper;

@Service
public class UserArchiveService {

	@Autowired
	private AnimalArchiveMapper animalArchiveMapper;
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private AnimalBasicInfoMapper animalBasicInfoMapper;
	@Autowired
	private AnimalHealthRecordMapper animalHealthRecordMapper;	
	@Autowired
	private AnimalBreedRecordMapper animalBreedRecordMapper;
	@Autowired
	private AnimalFeedRecordMapper animalfeedRecordMapper;
	@Autowired
	private ExperimentDataMapper experimentDataMapper;
	
	
	
	public List<AnimalArchive> getArchiveBaseInfoByUser(String value) {
		
		// 设置检索条件
		AnimalArchiveExample example = new AnimalArchiveExample();
		Criteria criteria = example.createCriteria();
		criteria.andBelongpeopleEqualTo(value);
		
		List<AnimalArchive> list = animalArchiveMapper.selectByExample(example);
		return list;
	}
	
	public List<AnimalArchive> getPaidArchiveBaseInfoByUser(String value) {
		
		// 获得用户购买的档案编号
		User user = userMapper.selectByPrimaryKey(value);
		String boughtfiles = user.getBuyarc();
		// 档案号取出
		String[] files = boughtfiles.split(",");
		int n = files.length;
		// 初始化list
		List<AnimalArchive> list = new ArrayList<AnimalArchive>();
		AnimalArchive arc = new AnimalArchive();
		// 把每个档案添加到list
		for(int i = 0;i<n;i++){
			arc = animalArchiveMapper.selectByPrimaryKey(Integer.parseInt(files[i]));
			list.add(arc);
		}
		return list;
	}
	
	// 根据档案编号获取档案基本信息
	public AnimalArchive getArchiveBaseInfoByID (String id){
		AnimalArchive info = animalArchiveMapper.selectByPrimaryKey(Integer.parseInt(id));		
		return info;
	}
	
	// 根据档案编号获取动物基本信息
	public AnimalBasicInfo getAnimalBaseInfoByID (String id){
		// 动物基本信息表的主键与档案基本信息表的主键相同
		AnimalBasicInfo info = animalBasicInfoMapper.selectByPrimaryKey(Integer.parseInt(id));		
		return info;
	}
	
	public List<AnimalHealthRecord> getAnimalHealthInfoByID(String id){
		// 设置检索条件
		AnimalHealthRecordExample example = new AnimalHealthRecordExample();
		com.crud.bean.AnimalHealthRecordExample.Criteria criteria = example.createCriteria();
		criteria.andArchivenumberEqualTo(Integer.parseInt(id));
				
		List<AnimalHealthRecord> list = animalHealthRecordMapper.selectByExample(example);
		return list;		
	}
	
	public List<AnimalBreedRecord> getAnimalbreedInfoByID(String id){
		// 设置检索条件
		AnimalBreedRecordExample example = new AnimalBreedRecordExample();
		com.crud.bean.AnimalBreedRecordExample.Criteria criteria = example.createCriteria();
		criteria.andArchivenumberEqualTo(Integer.parseInt(id));
				
		List<AnimalBreedRecord> list = animalBreedRecordMapper.selectByExample(example);
		return list;		
	}
	
	public List<AnimalFeedRecord> getAnimalfeedInfoByID(String id){
		// 设置检索条件
		AnimalFeedRecordExample example = new AnimalFeedRecordExample();
		com.crud.bean.AnimalFeedRecordExample.Criteria criteria = example.createCriteria();
		criteria.andArchivenumberEqualTo(Integer.parseInt(id));
				
		List<AnimalFeedRecord> list = animalfeedRecordMapper.selectByExample(example);
		return list;		
	}
	
	public List<ExperimentData> getAnimalExInfoByID(String id){
		// 设置检索条件
		ExperimentDataExample example = new ExperimentDataExample();
		com.crud.bean.ExperimentDataExample.Criteria criteria = example.createCriteria();
		criteria.andExperimentnumberEqualTo(Integer.parseInt(id));
				
		List<ExperimentData> list = experimentDataMapper.selectByExample(example);
		return list;		
	}
	
	public User getUserInfobyuid(String uid){
		User info = userMapper.selectByPrimaryKey(uid);		
		return info;
	}
	
	public List<AnimalArchive> getAuthzedArchiveBaseInfo(String kw){
		AnimalArchiveExample example = new AnimalArchiveExample();
		Criteria criteria = example.createCriteria();
		
		criteria.andAuthzstateEqualTo("已授权").andArchivedescriptionLike("%"+kw+"%");
		
		List<AnimalArchive> a = animalArchiveMapper.selectByExample(example);
		return a;
	}
	
	public List<AnimalArchive> getAuthzedArchiveBaseInfoByAS(AnimalArchive aa){
		AnimalArchiveExample example = new AnimalArchiveExample();
		Criteria criteria = example.createCriteria();
		
		criteria.andAuthzstateEqualTo("已授权");
		if (aa.getArchivenumber()!=null && !("".equals(aa.getArchivenumber()))) {
			criteria.andArchivenumberEqualTo(aa.getArchivenumber());
		}
		if (aa.getKwd1()!=null && !("".equals(aa.getKwd1()))) {
			criteria.andArchivedescriptionLike("%"+aa.getKwd1()+"%");
		}
		if (aa.getKwd2()!=null && !("".equals(aa.getKwd2()))) {
			criteria.andArchivedescriptionLike("%"+aa.getKwd2()+"%");
		}
		if (aa.getKwd3()!=null && !("".equals(aa.getKwd3()))) {
			criteria.andArchivedescriptionLike("%"+aa.getKwd3()+"%");
		}
		if (aa.getPrice()!=null && !("".equals(aa.getPrice()))) {
			criteria.andPriceLessThanOrEqualTo(aa.getPrice());
		}
		// 档案日期
		if (!("".equals(aa.getInitialdate()))) {
			criteria.andInitialdateGreaterThanOrEqualTo(aa.getInitialdate());
		}
		if (!("".equals(aa.getEnddate()))) {
			criteria.andInitialdateLessThanOrEqualTo(aa.getEnddate());
		}
		
		List<AnimalArchive> a = animalArchiveMapper.selectByExample(example);
		return a;
	}

	// 获得用户已购档案编号
	public User getPaidNumberByUser(String uid){
		User u = userMapper.selectByPrimaryKey(uid);
		return u;
	}
	
	// 修改用户档案购买信息
	public void addpaidinfo(User u){
		userMapper.updateByPrimaryKeySelective(u);
	}
}
