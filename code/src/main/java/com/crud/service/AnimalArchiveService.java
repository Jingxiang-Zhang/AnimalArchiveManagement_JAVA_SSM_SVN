package com.crud.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.bean.AnimalArchive;
import com.crud.dao.AnimalArchiveMapper;

@Service
public class AnimalArchiveService {
	@Autowired
	AnimalArchiveMapper animalarchiveMapper; 
	
	public List<AnimalArchive> getAll() {
		return animalarchiveMapper.selectByExample(null);
	}
}
