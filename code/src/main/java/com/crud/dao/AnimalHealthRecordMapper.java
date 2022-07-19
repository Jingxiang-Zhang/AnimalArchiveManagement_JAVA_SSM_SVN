package com.crud.dao;

import com.crud.bean.AnimalHealthRecord;
import com.crud.bean.AnimalHealthRecordExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AnimalHealthRecordMapper {
    long countByExample(AnimalHealthRecordExample example);

    int deleteByExample(AnimalHealthRecordExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AnimalHealthRecord record);

    int insertSelective(AnimalHealthRecord record);

    List<AnimalHealthRecord> selectByExample(AnimalHealthRecordExample example);

    AnimalHealthRecord selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AnimalHealthRecord record, @Param("example") AnimalHealthRecordExample example);

    int updateByExample(@Param("record") AnimalHealthRecord record, @Param("example") AnimalHealthRecordExample example);

    int updateByPrimaryKeySelective(AnimalHealthRecord record);

    int updateByPrimaryKey(AnimalHealthRecord record);
}