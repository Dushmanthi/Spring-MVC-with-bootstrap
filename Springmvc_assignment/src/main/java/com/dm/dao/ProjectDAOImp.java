package com.dm.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dm.dao.ProjectDAO;
import com.dm.model.Project;

@Repository
@Transactional
public class ProjectDAOImp  implements ProjectDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	public Project createProject(Project project) {
		hibernateTemplate.save(project);
		return null;
	}
	
	public List<Project> getAllProject() {
		//String query="from project";
		//List<Project> project = (List<Project>) hibernateTemplate.find(query);
		List<Project> project = hibernateTemplate.loadAll(Project.class);
		return project;
	}
}
