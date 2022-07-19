package com.crud.dao;

import com.crud.bean.AnimalBreedRecord;
import com.crud.bean.AnimalBreedRecordExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AnimalBreedRecordMapper {
    long countByExample(AnimalBreedRecordExample example);

    int deleteByExample(AnimalBreedRecordExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AnimalBreedRecord record);

    int insertSelective(AnimalBreedRecord record);

    List<AnimalBreedRecord> selectByExample(AnimalBreedRecordExample example);

    AnimalBreedRecord selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AnimalBreedRecord record, @Param("example") AnimalBreedRecordExample example);

    int updateByExample(@Param("record") AnimalBreedRecord record, @Param("example") AnimalBreedRecordExample example);

    int updateByPrimaryKeySelective(AnimalBreedRecord record);

    int updateByPrimaryKey(AnimalBreedRecord record);
}