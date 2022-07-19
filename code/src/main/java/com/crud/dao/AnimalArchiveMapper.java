package com.crud.dao;

import com.crud.bean.AnimalArchive;
import com.crud.bean.AnimalArchiveExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AnimalArchiveMapper {
    long countByExample(AnimalArchiveExample example);

    int deleteByExample(AnimalArchiveExample example);

    int deleteByPrimaryKey(Integer archivenumber);

    int insert(AnimalArchive record);

    int insertSelective(AnimalArchive record);

    List<AnimalArchive> selectByExample(AnimalArchiveExample example);

    AnimalArchive selectByPrimaryKey(Integer archivenumber);

    int updateByExampleSelective(@Param("record") AnimalArchive record, @Param("example") AnimalArchiveExample example);

    int updateByExample(@Param("record") AnimalArchive record, @Param("example") AnimalArchiveExample example);

    int updateByPrimaryKeySelective(AnimalArchive record);

    int updateByPrimaryKey(AnimalArchive record);
    
    //查询授权申请信息
    List<AnimalArchive> SelectAuthzInfoByExample(AnimalArchiveExample example);
    
    //查询推广申请信息
    List<AnimalArchive> SelectAdvertInfoByExample(AnimalArchiveExample example);

    //查询可申请推广的档案
	List<AnimalArchive> SelectArchiveCanAuthzWithNameByUid(String uid);
    
	//查看个人未处理授权的档案
	 List<AnimalArchive> SelectArchiveWithoutProcessWithNameByUid(String uid);

	//查看个人已授权档案
	List<AnimalArchive> SelectArchiveHasAuthzWithNameByUid(String uid);

	//查看个人可申请推广的档案
	List<AnimalArchive> SelectArchiveCanAdvertWithNameByUid(String id);

	//查看个人未处理推广的档案
	List<AnimalArchive> SelectArchiveWithoutAdvertProcessWithNameByUid(String id);

	//查看个人已推广档案
	List<AnimalArchive> SelectArchiveHasAdvertWithNameByUid(String id);

	//查询所有已授权档案
	List<AnimalArchive> SelectAllArchiveHasAuthzWithName();

	//查看所有已推广档案
	List<AnimalArchive> SelectAllArchiveHasAdvertWithName();

	//查看所有推荐档案，附带动物基本信息
	List<AnimalArchive> SelectRecommendArchiveWithAnimalBasic();
}