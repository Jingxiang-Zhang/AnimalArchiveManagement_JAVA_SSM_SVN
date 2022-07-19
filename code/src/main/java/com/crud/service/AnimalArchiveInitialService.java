package com.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crud.dao.AnimalArchiveMapper;
import com.crud.bean.AnimalArchive;
import com.crud.bean.AnimalArchiveExample;

import com.crud.dao.AnimalBasicInfoMapper;
import com.crud.dao.UserMapper;
import com.crud.bean.AnimalBasicInfo;
import com.crud.bean.AnimalBasicInfoExample;
import com.crud.bean.Msg;
import com.crud.bean.User;
import com.crud.bean.UserExample;
import com.crud.bean.initInfoSet;
import java.util.Date;
/***
 * @2020-7-13 gjh
 * @author XPS
 *
 */
@Service
public class AnimalArchiveInitialService {
	
	@Autowired
	AnimalArchiveMapper animalArchiveMapper; 
	
	@Autowired
	AnimalBasicInfoMapper animalBasicInfoMapper; 
	
	@Autowired
	UserMapper userMapper; 
	
	/***
	 * 添加动物档案
	 * @param pagedata
	 * @return
	 */
	public int initAchieve(initInfoSet infoSet){
		AnimalArchive animalArchive = new AnimalArchive();
		//时间信息
		Date date = new Date();
		animalArchive.setInitialdate(date);
		animalArchive.setArchivedescription(infoSet.getArchiveDescription());
		animalArchive.setArchivekey(infoSet.getArchiveKey());
		
		animalArchive.setReleasestatus("0");
		animalArchive.setCanapplyadverts("0");
		animalArchive.setAdvertsstate("未处理");
		animalArchive.setCanapplyauthz("1");
		animalArchive.setAuthzstate("未处理");;
		//检验初始化操作员合法性，初始化操作员只能属于建档部
		if(checkUserLegal(infoSet.getInitialPeople(),"Initial"))
			animalArchive.setInitialpeople(infoSet.getInitialPeople());
		else return 2;
	
		//检验负责人合法性，负责人只能是动物房人员或者实验室人员
		if(checkUserLegal(infoSet.getResponsiblePeople(),"Responsible"))
			animalArchive.setResponsiblepeople(infoSet.getResponsiblePeople());
		else return 3;

		//检验所属PI合法性,PI只能是外部用户
		if(checkUserLegal(infoSet.getBelongPeople(),"Belong"))
			animalArchive.setBelongpeople(infoSet.getBelongPeople());
		else return 4;
		
		//检验耳标编号合法性,一个耳标只能配置一次
		if(checkEarRingLegal(infoSet.getEarRingNo()))
			animalArchive.setEartagnumber(Integer.parseInt(infoSet.getEarRingNo()));
		else return 5;
				
		//数据校验无误，进行基本信息表的填写
		if(addBaseInfoToAchieve(infoSet) == 1){
			animalArchiveMapper.insert(animalArchive);
			return 1;
		}
		else return 0;
	}
	
	/***
	 * 检验耳标编号合法性,查找是否重复使用耳标
	 * @param earRingNo
	 */
	
	public boolean checkEarRingLegal(String earRingNo){
		AnimalArchiveExample example = new AnimalArchiveExample();
		example.createCriteria().andEartagnumberEqualTo(Integer.parseInt(earRingNo));
		if(animalArchiveMapper.countByExample(example) == 0){
			return true;
		}
		return false;
	}
	
	/***
	 * 检验所属用户合法性
	 * @param UID		表示用户的UID
	 * @param striction 表示身份的限定，为空代表不限制身份
	 */
	
	public boolean checkUserLegal(String UID,String striction){
		User now_user = userMapper.selectByPrimaryKey(UID);
		if(now_user == null)return false;
		
		//比较字符串时要用equals方法，不然就算相等也只会返回false
		if(striction.equals("Belong"))
	    	return now_user.getDept().equals("外部");
		else if(striction.equals("Initial"))
	    	return now_user.getDept().equals("建档部");
		else if(striction.equals("Responsible"))
	    	return (now_user.getDept().equals("实验室")||now_user.getDept().equals("动物房"));
		else 
	    	return false;
	}
	
	/***
	 * 查询动物档案信息并返回
	 * @return
	 */
	public List<AnimalArchive> getAnimalBaseInfo() {
		List<AnimalArchive> list = animalArchiveMapper.selectByExample(null);
		return list;
	}
	/**
	 * 按照档案编号查询动物档案
	 * @return
	 */
	public AnimalArchive getAnimalArchiveInfoByKey(Integer id) {
		AnimalArchive animalArchive = animalArchiveMapper.selectByPrimaryKey(id);
		return animalArchive;
	}
	
	public AnimalBasicInfo getAnimalArchiveBaseInfoByKey(Integer id) {
		AnimalBasicInfo animalBasicInfo = animalBasicInfoMapper.selectByPrimaryKey(id);
		return animalBasicInfo;
	}
	
	/**
	 * 保存动物档案内容的修改
	 */
	public boolean updateAnimalArchive(Integer archivenumber,Integer eartagnumber) {
		if(checkEarRingLegal(eartagnumber.toString())){
			AnimalArchive animalArchive = animalArchiveMapper.selectByPrimaryKey(archivenumber);
			animalArchive.setEartagnumber(eartagnumber);
			animalArchiveMapper.updateByPrimaryKeySelective(animalArchive);	
			return true;
		}
		return false;
	}
	//--------------------------------------------------------------//
	/***
	 * 完善动物档案基本信息
	 * @param userName
	 * @param passWord
	 * @return
	 */
	public int addBaseInfoToAchieve(initInfoSet infoSet){
		AnimalBasicInfo animalBasicInfo = new AnimalBasicInfo();
		switch(infoSet.getAnimalBloodType()){
	    case "0" :
	    	animalBasicInfo.setAnimalbloodtype("A");
	    	break; //可选
	    case "1" :
	    	animalBasicInfo.setAnimalbloodtype("B");
	    	break; //可选
	    case "2" :
	    	animalBasicInfo.setAnimalbloodtype("C");
	    	break; //可选
	    case "3" :
	    	animalBasicInfo.setAnimalbloodtype("O");
	    	break; //可选
	    default : //可选
	    	break;
		}
		animalBasicInfo.setAnimaldescription(infoSet.getAnimalDescription());
		animalBasicInfo.setAnimallengh(infoSet.getAnimalLength());
		animalBasicInfo.setAnimalorigin(infoSet.getAnimalOrigin());
		if(infoSet.getAnimalSex() == "1")
			animalBasicInfo.setAnimalsex("公");
		else animalBasicInfo.setAnimalsex("母");
		
		switch(infoSet.getAnimalSpecies()){
	    case "0" :
	    	animalBasicInfo.setAnimalspecies("猪");
	    	break; //可选
	    case "1" :
	    	animalBasicInfo.setAnimalspecies("牛");
	    	break; //可选
	    case "2" :
	    	animalBasicInfo.setAnimalspecies("羊");
	    	break; //可选
	    case "3" :
	    	animalBasicInfo.setAnimalspecies("鼠");
	    	break; //可选
	    default : //可选
	    	break;
		}
		animalBasicInfo.setAnimalweight(infoSet.getAnimalWeight());
		animalBasicInfoMapper.insert(animalBasicInfo);
		return 1;
	}
}
