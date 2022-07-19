package com.crud.dao;

import com.crud.bean.AuthorizationProtocoRecord;
import com.crud.bean.AuthorizationProtocoRecordExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AuthorizationProtocoRecordMapper {
    long countByExample(AuthorizationProtocoRecordExample example);

    int deleteByExample(AuthorizationProtocoRecordExample example);

    int deleteByPrimaryKey(Integer authozagreeid);

    int insert(AuthorizationProtocoRecord record);

    int insertSelective(AuthorizationProtocoRecord record);

    List<AuthorizationProtocoRecord> selectByExample(AuthorizationProtocoRecordExample example);

    AuthorizationProtocoRecord selectByPrimaryKey(Integer authozagreeid);

    int updateByExampleSelective(@Param("record") AuthorizationProtocoRecord record, @Param("example") AuthorizationProtocoRecordExample example);

    int updateByExample(@Param("record") AuthorizationProtocoRecord record, @Param("example") AuthorizationProtocoRecordExample example);

    int updateByPrimaryKeySelective(AuthorizationProtocoRecord record);

    int updateByPrimaryKey(AuthorizationProtocoRecord record);
    
    List<AuthorizationProtocoRecord>SelectAuthzProtWithNameByExample(AuthorizationProtocoRecordExample example);

    List<AuthorizationProtocoRecord>SelectAuthzProtWithNameByArchiveNumber(Integer archivenumber);
}