package com.crud.dao;

import com.crud.bean.AnimalBasicInfo;
import com.crud.bean.AnimalBasicInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AnimalBasicInfoMapper {
    long countByExample(AnimalBasicInfoExample example);

    int deleteByExample(AnimalBasicInfoExample example);

    int deleteByPrimaryKey(Integer basicnumber);

    int insert(AnimalBasicInfo record);

    int insertSelective(AnimalBasicInfo record);

    List<AnimalBasicInfo> selectByExample(AnimalBasicInfoExample example);

    AnimalBasicInfo selectByPrimaryKey(Integer basicnumber);

    int updateByExampleSelective(@Param("record") AnimalBasicInfo record, @Param("example") AnimalBasicInfoExample example);

    int updateByExample(@Param("record") AnimalBasicInfo record, @Param("example") AnimalBasicInfoExample example);

    int updateByPrimaryKeySelective(AnimalBasicInfo record);

    int updateByPrimaryKey(AnimalBasicInfo record);
}