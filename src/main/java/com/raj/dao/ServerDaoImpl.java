package com.raj.dao;

import java.util.List;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.raj.model.ServerEntity;

@Repository
public class ServerDaoImpl implements ServerDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	
	
	public List<ServerEntity> listServers() {
		
		return (List<ServerEntity>) sessionFactory.getCurrentSession().createCriteria(ServerEntity.class).list();
		
	}

	@Override
	public void addServer(ServerEntity server) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(server);
		
	}

	
	@Override
	public List<ServerEntity> getServerByEnv(String server) {
		 return (List<ServerEntity>)sessionFactory.getCurrentSession().createQuery("select serverName from serverdetails where env=" + server).uniqueResult();
	}}
