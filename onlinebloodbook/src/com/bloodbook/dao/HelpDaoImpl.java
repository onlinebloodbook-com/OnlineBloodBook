package com.bloodbook.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.bloodbook.model.Help;


@Repository("helpDao")
public class HelpDaoImpl implements HelpDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public void saveHelp(Help help) {
		sessionFactory.getCurrentSession().saveOrUpdate(help);
		
	}

	@Override
	public Help getHelp(Integer hpId) {
		
		return (Help)sessionFactory.getCurrentSession().get(Help.class,hpId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Help> getHelpList() {
		
		return sessionFactory.getCurrentSession().createQuery("from Help ORDER BY hp_id  DESC").list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Help> getHelpList10() {
		return sessionFactory.getCurrentSession().createQuery("from Help ORDER BY hp_id  DESC").setMaxResults(10).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Help> getHelpList1() {
		return sessionFactory.getCurrentSession().createQuery("from Help ORDER BY hp_id  DESC").setMaxResults(1).list();
		
	}

}
