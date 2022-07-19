package com.crud.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.bean.AnimalArchive;
import com.crud.bean.AnimalBasicInfo;
import com.crud.bean.AuthorizationProtocoRecord;
import com.crud.dao.AnimalArchiveMapper;
import com.crud.dao.AuthorizationProtocoRecordMapper;

@Service
public class AuthzService {
	@Autowired
	private AnimalArchiveMapper animalarchiveMapper; 
	@Autowired
	private AuthorizationProtocoRecordMapper authzprotocolMapper;
	
	public List<AnimalArchive> get_authz_apply_info() {
		List<AnimalArchive> list=animalarchiveMapper.SelectAuthzInfoByExample(null);
		return list;
	}
	
	public AnimalArchive getArchiveInfoByKey(Integer id){
		AnimalArchive animal_archive= animalarchiveMapper.selectByPrimaryKey(id);
		return animal_archive;
	}
	
	public void updateAuthzAnimalArchive(AnimalArchive animalarchive) {
		animalarchiveMapper.updateByPrimaryKeySelective(animalarchive);
	}
	
	public void insertAuthzProtocol(AuthorizationProtocoRecord authz_protocol_record){
		authzprotocolMapper.insertSelective(authz_protocol_record);
	}
	
	public List<AuthorizationProtocoRecord> get_authz_aggre_info() {
		List<AuthorizationProtocoRecord> authz_aggre_record=authzprotocolMapper.SelectAuthzProtWithNameByExample(null);
		return authz_aggre_record;
	}

	public List<AuthorizationProtocoRecord> get_authz_aggre_info_by_archivenumber(Integer id) {
		List<AuthorizationProtocoRecord> authz_aggre_record=authzprotocolMapper.SelectAuthzProtWithNameByArchiveNumber(id);
		return authz_aggre_record;
	}

	public List<AnimalArchive> get_archive_can_authz(String uid) {
		List<AnimalArchive> archive_can_auhtz = animalarchiveMapper.SelectArchiveCanAuthzWithNameByUid(uid);
		return archive_can_auhtz;
	}

	public List<AnimalArchive> get_archive_without_process(String uid) {
		List<AnimalArchive> archive_without_process = animalarchiveMapper.SelectArchiveWithoutProcessWithNameByUid(uid);
		return archive_without_process;
	}

	public List<AnimalArchive> get_archive_has_authz(String uid) {
		List<AnimalArchive> archive_has_authz = animalarchiveMapper.SelectArchiveHasAuthzWithNameByUid(uid);
		return archive_has_authz ;
	}

	public List<AnimalArchive> get_all_archive_has_authz() {
		List<AnimalArchive> archive_has_authz = animalarchiveMapper.SelectAllArchiveHasAuthzWithName();
		return archive_has_authz ;
	}
}
