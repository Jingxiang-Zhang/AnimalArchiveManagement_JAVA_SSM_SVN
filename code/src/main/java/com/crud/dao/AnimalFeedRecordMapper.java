package com.crud.dao;

import com.crud.bean.AnimalFeedRecord;
import com.crud.bean.AnimalFeedRecordExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AnimalFeedRecordMapper {
    long countByExample(AnimalFeedRecordExample example);

    int deleteByExample(AnimalFeedRecordExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AnimalFeedRecord record);

    int insertSelective(AnimalFeedRecord record);

    List<AnimalFeedRecord> selectByExample(AnimalFeedRecordExample example);

    AnimalFeedRecord selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AnimalFeedRecord record, @Param("example") AnimalFeedRecordExample example);

    int updateByExample(@Param("record") AnimalFeedRecord record, @Param("example") AnimalFeedRecordExample example);

    int updateByPrimaryKeySelective(AnimalFeedRecord record);

    int updateByPrimaryKey(AnimalFeedRecord record);
}