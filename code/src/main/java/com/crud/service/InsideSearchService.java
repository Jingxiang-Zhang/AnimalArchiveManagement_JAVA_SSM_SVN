package com.crud.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.bean.AnimalHealthRecordExample.Criteria;
import com.crud.dao.AnimalHealthRecordMapper;
import com.crud.dao.ExperimentDataMapper;
import com.crud.bean.*;
import com.crud.dao.AnimalArchiveMapper;
import com.crud.dao.AnimalBasicInfoMapper;
import com.crud.dao.AnimalBreedRecordMapper;
import com.crud.dao.AnimalFeedRecordMapper;

@Service
public class InsideSearchService {
	@Autowired
	AnimalHealthRecordMapper animalhealthMapper;
	@Autowired
	AnimalBasicInfoMapper animalbasicMapper;
	@Autowired
	AnimalBreedRecordMapper animalbreedMapper;
	@Autowired
	AnimalFeedRecordMapper animalfeedMapper;
	@Autowired
	ExperimentDataMapper experimentdatamapper;
	@Autowired
	AnimalArchiveMapper animalarchiveMapper;
	
	// 查询档案数据
	public List<AnimalArchive> queryArc(AnimalArchive arc) {
		// TODO Auto-generated method stub
		AnimalArchiveExample example = new AnimalArchiveExample();
		AnimalArchiveExample.Criteria criteria = example.createCriteria();
		// 档案号不为空
		if (arc.getArchivenumber()!=null && !("".equals(arc.getArchivenumber()))) {
			criteria.andArchivenumberEqualTo(arc.getArchivenumber());
		}
		// 耳标编号不为空
		if (arc.getEartagnumber()!=null && !("".equals(arc.getEartagnumber()))) {
			criteria.andEartagnumberEqualTo(arc.getEartagnumber());
		}
		// 建档员
		if (arc.getInitialpeople()!=null && !("".equals(arc.getInitialpeople()))) {
			criteria.andInitialpeopleEqualTo(arc.getInitialpeople());
		}
		// 责任研究员
		if (arc.getResponsiblepeople()!=null && !("".equals(arc.getResponsiblepeople()))) {
			criteria.andResponsiblepeopleEqualTo(arc.getResponsiblepeople());
		}
		// 档案所属PI
		if (arc.getBelongpeople()!=null && !("".equals(arc.getBelongpeople()))) {
			criteria.andBelongpeopleEqualTo(arc.getBelongpeople());
		}
		// 档案描述，模糊查询
		if (arc.getArchivedescription()!=null && !("".equals(arc.getArchivedescription()))) {
			criteria.andArchivedescriptionLike("%"+arc.getArchivedescription()+"%");
		}
		// 档案关键字，模糊查询
		if (arc.getArchivekey()!=null && !("".equals(arc.getArchivekey()))) {
			criteria.andArchivekeyLike("%"+arc.getArchivekey()+"%");
		}
		// 档案日期
		if(!("".equals(arc.getInitialdate())) && !("".equals(arc.getEnddate()))) {
			criteria.andInitialdateGreaterThanOrEqualTo(arc.getInitialdate());
			criteria.andInitialdateLessThanOrEqualTo(arc.getEnddate());
		}
		
		return animalarchiveMapper.selectByExample(example);
	}
	// 查询个人实验数据
	public List<ExperimentData> queryExp(ExperimentData exp) {
		// TODO Auto-generated method stub
		ExperimentDataExample example = new ExperimentDataExample();
		ExperimentDataExample.Criteria criteria = example.createCriteria();
		System.out.println(exp);
		// 个人的档案权限过滤
		if (exp.getExperimenternumber()!=null && !("".equals(exp.getExperimenternumber()))) {
			criteria.andExperimenternumberEqualTo(exp.getExperimenternumber());
		}
		else{
			criteria.andExperimenternumberEqualTo("");
		}
		// 档案号不为空
		if (exp.getExperimentnumber()!=null && !("".equals(exp.getExperimentnumber()))) {
			criteria.andExperimentnumberEqualTo(exp.getExperimentnumber());
		}
		// 实验目的
		if (exp.getExperimentpurpose()!=null && !("".equals(exp.getExperimentpurpose()))) {
			criteria.andExperimentpurposeLike("%"+exp.getExperimentpurpose()+"%");
		}
		// 实验地点
		if (exp.getExperimentlocation()!=null && !("".equals(exp.getExperimentlocation()))) {
			criteria.andExperimentlocationLike("%"+exp.getExperimentlocation()+"%");
		}
		// 实验方法
		if (exp.getExperimentapproach()!=null && !("".equals(exp.getExperimentapproach()))) {
			criteria.andExperimentapproachLike("%"+exp.getExperimentapproach()+"%");
		}
		// 实验记录
		if (exp.getExperimentrecord()!=null && !("".equals(exp.getExperimentrecord()))) {
			criteria.andExperimentrecordLike("%"+exp.getExperimentrecord()+"%");
		}
		// 实验结果
		if (exp.getExperimentresult()!=null && !("".equals(exp.getExperimentresult()))) {
			criteria.andExperimentresultLike("%"+exp.getExperimentresult()+"%");
		}
		// 实验日期
		if(!("".equals(exp.getExperimentdate())) && !("".equals(exp.getEnddate())) && exp.getExperimentdate()!=null && exp.getEnddate()!=null) {
			criteria.andExperimentdateGreaterThanOrEqualTo(exp.getExperimentdate());
			criteria.andExperimentdateLessThanOrEqualTo(exp.getEnddate());
		}
		// 实验备注
		if (exp.getExperimentnote()!=null && !("".equals(exp.getExperimentnote()))) {
			criteria.andExperimentnoteLike("%"+exp.getExperimentnote()+"%");
		}
		return experimentdatamapper.selectByExample(example);
	}
	// 查询饲养数据
	public List<AnimalFeedRecord> queryFeed(AnimalFeedRecord feed) {
		// TODO Auto-generated method stub
		AnimalFeedRecordExample example = new AnimalFeedRecordExample();
		AnimalFeedRecordExample.Criteria criteria = example.createCriteria();
		// 档案号不为空
		if (feed.getArchivenumber()!=null && !("".equals(feed.getArchivenumber()))) {
			criteria.andArchivenumberEqualTo(feed.getArchivenumber());
		}
		// 记录员不为空
		if(feed.getRecorder()!=null && !("".equals(feed.getRecorder()))) {
			criteria.andRecorderEqualTo(feed.getRecorder());
		}
		// 时间都不为空
		if(!("".equals(feed.getRecorddate())) && !("".equals(feed.getEnddate()))) {
			criteria.andRecorddateGreaterThanOrEqualTo(feed.getRecorddate());
			criteria.andRecorddateLessThanOrEqualTo(feed.getEnddate());
		}
		// 饲养前状况，模糊查询
		if(feed.getStatusbeforefeed()!=null && !("".equals(feed.getStatusbeforefeed()))) {
			criteria.andStatusbeforefeedLike("%"+feed.getStatusbeforefeed()+"%");
		}
		// 饲养物，模糊查询
		if(feed.getFeedobject()!=null && !("".equals(feed.getFeedobject()))) {
			criteria.andFeedobjectLike("%"+feed.getFeedobject()+"%");
		}
		// 饲养过程，模糊查询
		if(feed.getFeedprocess()!=null && !("".equals(feed.getFeedprocess()))) {
			criteria.andFeedprocessLike("%"+feed.getFeedprocess()+"%");
		}

		return animalfeedMapper.selectByExample(example);
	}
	
	
	// 查询繁殖数据
	public List<AnimalBreedRecord> queryBreed(AnimalBreedRecord breed) {
		// TODO Auto-generated method stub
		AnimalBreedRecordExample example = new AnimalBreedRecordExample();
		AnimalBreedRecordExample.Criteria criteria = example.createCriteria();
		// 档案号不为空
		if (breed.getArchivenumber()!=null && !("".equals(breed.getArchivenumber()))) {
			criteria.andArchivenumberEqualTo(breed.getArchivenumber());
		}
		// 记录员不为空
		if(breed.getRecorder()!=null && !("".equals(breed.getRecorder()))) {
			criteria.andRecorderEqualTo(breed.getRecorder());
		}
		// 时间都不为空
		criteria.andRecorddateGreaterThanOrEqualTo(breed.getRecorddate());
		criteria.andRecorddateLessThanOrEqualTo(breed.getEnddate());
		// 繁殖描述，模糊查询
		if(!("".equals(breed.getBreeddescription()))) {
			criteria.andBreeddescriptionLike("%"+breed.getBreeddescription()+"%");
		}
		return animalbreedMapper.selectByExample(example);
	}
			
			// 查询健康数据
			public List<AnimalHealthRecord> queryHealth(AnimalHealthRecord health) {
				// TODO Auto-generated method stub
				AnimalHealthRecordExample example = new AnimalHealthRecordExample();
				Criteria criteria = example.createCriteria();
				System.out.println(health);
				// 档案号不为空
				if (health.getArchivenumber()!=null && !("".equals(health.getArchivenumber()))) {
					criteria.andArchivenumberEqualTo(health.getArchivenumber());
				}
				// 记录员不为空
				if(health.getRecorder()!=null && !("".equals(health.getRecorder()))) {
					criteria.andRecorderEqualTo(health.getRecorder());
				}
				// 时间都不为空
				if(!("".equals(health.getRecorddate())) && !("".equals(health.getEnddate()))) {
					criteria.andRecorddateGreaterThanOrEqualTo(health.getRecorddate());
					criteria.andRecorddateLessThanOrEqualTo(health.getEnddate());
				}
				// 健康描述，模糊查询
				if(health.getHealthdescription()!=null && !("".equals(health.getHealthdescription()))) {
					criteria.andHealthdescriptionLike("%"+health.getHealthdescription()+"%");
				}
				// 健康水平，模糊查询
				if(health.getHealthlevel()!=null && !("".equals(health.getHealthlevel()))) {
					criteria.andHealthlevelLike("%"+health.getHealthlevel()+"%");
				}
				
				return animalhealthMapper.selectByExample(example);
			}
	
		// 查询基本信息数据
	public List<AnimalBasicInfo> queryBasic(AnimalBasicInfo basic) {
		// TODO Auto-generated method stub
		AnimalBasicInfoExample example = new AnimalBasicInfoExample();
		AnimalBasicInfoExample.Criteria criteria = example.createCriteria();
		System.out.println(basic);
		// 档案号
		if(basic.getBasicnumber()!=null) {
			criteria.andBasicnumberEqualTo(basic.getBasicnumber());
		}
		// 动物性别
		if(!("不选择".equals(basic.getAnimalsex()))) {
			criteria.andAnimalsexEqualTo(basic.getAnimalsex());
		}
		// 动物血型
		if(!("不选择".equals(basic.getAnimalbloodtype()))) {
			criteria.andAnimalbloodtypeEqualTo(basic.getAnimalbloodtype());
		}
		// 动物种类
		if(!("".equals(basic.getAnimalspecies()))) {
			criteria.andAnimalspeciesLike("%"+basic.getAnimalspecies()+"%");
		}
		// 动物来源
		if(!("".equals(basic.getAnimalorigin()))) {
			criteria.andAnimaloriginLike("%"+basic.getAnimalorigin()+"%");
		}
		// 动物描述
		if(!("".equals(basic.getAnimaldescription()))) {
			criteria.andAnimaldescriptionLike("%"+basic.getAnimaldescription()+"%");
		}
		// 动物体重
		if(!("".equals(basic.getAnimalweight())) &&  !("".equals(basic.getAnimalweight_most())) ) {
			criteria.andAnimalweightBetween(Double.valueOf(basic.getAnimalweight()), Double.valueOf(basic.getAnimalweight_most()));
		}
		// 动物体长
		if(!("".equals(basic.getAnimallengh())) &&  !("".equals(basic.getAnimallengh_most())) ) {
			criteria.andAnimallenghBetween(Double.valueOf(basic.getAnimallengh()), Double.valueOf(basic.getAnimallengh_most()));
		}
		
		
		return animalbasicMapper.selectByExample(example);
	}
}