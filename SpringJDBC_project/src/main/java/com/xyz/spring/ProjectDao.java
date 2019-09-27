package com.xyz.spring;

import org.springframework.jdbc.core.JdbcTemplate;

public class ProjectDao {
	private JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate =jdbcTemplate;
	}
	
	public int saveProject(Project p) {
		String sql="insert into project (projectName,description) values('"+p.getProjectName()+"','"+p.getDescription()+"')";
		return jdbcTemplate.update(sql);
		
	}
}
