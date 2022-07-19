package com.crud.dao;

import com.crud.bean.ArchiveOperateLog;
import com.crud.bean.ArchiveOperateLogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ArchiveOperateLogMapper {
    long countByExample(ArchiveOperateLogExample example);

    int deleteByExample(ArchiveOperateLogExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ArchiveOperateLog record);

    int insertSelective(ArchiveOperateLog record);

    List<ArchiveOperateLog> selectByExample(ArchiveOperateLogExample example);

    ArchiveOperateLog selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ArchiveOperateLog record, @Param("example") ArchiveOperateLogExample example);

    int updateByExample(@Param("record") ArchiveOperateLog record, @Param("example") ArchiveOperateLogExample example);

    int updateByPrimaryKeySelective(ArchiveOperateLog record);

    int updateByPrimaryKey(ArchiveOperateLog record);
}