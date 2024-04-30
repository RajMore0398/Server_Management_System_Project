package com.raj.dao;



import java.util.List;


import com.raj.model.ServerEntity;

public interface ServerDao {

	public List<ServerEntity> listServers();

	public void addServer(ServerEntity server);



	public List<ServerEntity> getServerByEnv(String server);

}
