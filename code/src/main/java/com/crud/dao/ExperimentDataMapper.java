package com.crud.dao;

import com.crud.bean.ExperimentData;
import com.crud.bean.ExperimentDataExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ExperimentDataMapper {
    long countByExample(ExperimentDataExample example);

    int deleteByExample(ExperimentDataExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ExperimentData record);

    int insertSelective(ExperimentData record);

    List<ExperimentData> selectByExample(ExperimentDataExample example);

    ExperimentData selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ExperimentData record, @Param("example") ExperimentDataExample example);

    int updateByExample(@Param("record") ExperimentData record, @Param("example") ExperimentDataExample example);

    int updateByPrimaryKeySelective(ExperimentData record);

    int updateByPrimaryKey(ExperimentData record);
}