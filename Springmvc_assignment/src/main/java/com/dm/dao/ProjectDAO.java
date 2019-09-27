package com.dm.dao;

import java.util.List;

import com.dm.model.Project;

public interface ProjectDAO {

	public abstract Project createProject(Project project);

	public List<Project> getAllProject();

}
