package com.crud.dao;

import com.crud.bean.AdvertisingProtocolRecord;
import com.crud.bean.AdvertisingProtocolRecordExample;
import com.crud.bean.AuthorizationProtocoRecord;
import com.crud.bean.AuthorizationProtocoRecordExample;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AdvertisingProtocolRecordMapper {
    long countByExample(AdvertisingProtocolRecordExample example);

    int deleteByExample(AdvertisingProtocolRecordExample example);

    int deleteByPrimaryKey(Integer advertsagreeid);

    int insert(AdvertisingProtocolRecord record);

    int insertSelective(AdvertisingProtocolRecord record);

    List<AdvertisingProtocolRecord> selectByExample(AdvertisingProtocolRecordExample example);

    AdvertisingProtocolRecord selectByPrimaryKey(Integer advertsagreeid);

    int updateByExampleSelective(@Param("record") AdvertisingProtocolRecord record, @Param("example") AdvertisingProtocolRecordExample example);

    int updateByExample(@Param("record") AdvertisingProtocolRecord record, @Param("example") AdvertisingProtocolRecordExample example);

    int updateByPrimaryKeySelective(AdvertisingProtocolRecord record);

    int updateByPrimaryKey(AdvertisingProtocolRecord record);
    
    List<AdvertisingProtocolRecord> SelectAdvertProtWithNameByExample(AdvertisingProtocolRecordExample example);
    
    List<AdvertisingProtocolRecord> SelectAdvertProtWithNameByArchiveNumber(Integer archivenumber);
}