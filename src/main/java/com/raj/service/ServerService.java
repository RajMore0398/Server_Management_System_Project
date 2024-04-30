package com.raj.service;

import java.util.List;


import com.raj.model.ServerEntity;

public interface ServerService {
	
	public List<ServerEntity> listServers();
	
	public void addServer(ServerEntity server);
	
	public List<ServerEntity> getServerByEnv(String server);
	

}