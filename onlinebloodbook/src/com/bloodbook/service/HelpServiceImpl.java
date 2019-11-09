package com.bloodbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bloodbook.dao.HelpDao;
import com.bloodbook.model.Help;


@Service
public class HelpServiceImpl implements HelpService{
	
	@Autowired
	private HelpDao helpDao;

	@Transactional
	public void saveHelp(Help help) {
		helpDao.saveHelp(help);
		
	}

	@Transactional
	public Help getHelp(Integer hpId) {
		
		return helpDao.getHelp(hpId);
	}

	@Transactional
	public List<Help> getHelpList() {
		
		return helpDao.getHelpList();
	}

	@Transactional
	public List<Help> getHelpList10() {
		
		return helpDao.getHelpList10();
	}

	@Transactional
	public List<Help> getHelpList1() {
		
		return helpDao.getHelpList1();
	}

}
