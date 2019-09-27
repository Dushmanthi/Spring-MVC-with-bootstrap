package com.dm.service;

import java.util.List;

import com.dm.model.Project;

public interface ProjectService {

	public abstract Project addProject(Project project);

	//public Object getAllProject();
	public List<Project> getAllProject();
}
