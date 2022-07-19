package com.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.bean.AdvertisingProtocolRecord;
import com.crud.bean.AnimalArchive;
import com.crud.bean.AuthorizationProtocoRecord;
import com.crud.dao.AdvertisingProtocolRecordMapper;
import com.crud.dao.AnimalArchiveMapper;

@Service
public class AdvertService {
	@Autowired
	private AnimalArchiveMapper animalarchiveMapper; 
	@Autowired
	private AdvertisingProtocolRecordMapper advertprotocolMapper;
	
	public List<AnimalArchive> get_advert_apply_info() {
		List<AnimalArchive> list=animalarchiveMapper.SelectAdvertInfoByExample(null);
		return list;
	}
	
	public void updateAdvertAnimalArchive(AnimalArchive animalarchive) {
		animalarchiveMapper.updateByPrimaryKeySelective(animalarchive);
	}
	
	public void insertAdvertProtocol(AdvertisingProtocolRecord advert_protocol_record){
		advertprotocolMapper.insertSelective(advert_protocol_record);
	}

	public List<AdvertisingProtocolRecord> get_advert_aggre_info() {
		List<AdvertisingProtocolRecord> advert_aggre_record=advertprotocolMapper.SelectAdvertProtWithNameByExample(null);
		return advert_aggre_record;
	}

	public List<AdvertisingProtocolRecord> get_advert_aggre_info_by_archivenumber(Integer id) {
		List<AdvertisingProtocolRecord> advert_aggre_record=advertprotocolMapper.SelectAdvertProtWithNameByArchiveNumber(id);
		return advert_aggre_record;
	}

	public List<AnimalArchive> get_archive_can_advert(String id) {
		List<AnimalArchive> archive_can_advert = animalarchiveMapper.SelectArchiveCanAdvertWithNameByUid(id);
		return archive_can_advert;
	}

	public List<AnimalArchive> get_archive_without_advert_process(String id) {
		List<AnimalArchive> archive_without_advert_process = animalarchiveMapper.SelectArchiveWithoutAdvertProcessWithNameByUid(id);
		return archive_without_advert_process;
	}

	public List<AnimalArchive> get_archive_has_advert(String id) {
		List<AnimalArchive> archive_has_advert = animalarchiveMapper.SelectArchiveHasAdvertWithNameByUid(id);
		return archive_has_advert ;
	}

	public List<AnimalArchive> get_all_archive_has_advert() {
		List<AnimalArchive> archive_has_advert = animalarchiveMapper.SelectAllArchiveHasAdvertWithName();
		return archive_has_advert ;
	}

	public List<AnimalArchive> get_recommend_archive() {
		List<AnimalArchive> recommend_archive = animalarchiveMapper.SelectRecommendArchiveWithAnimalBasic();
		return recommend_archive ;
	}
}
