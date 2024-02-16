package com.jsp.foodapp.dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.foodapp.entitys.Admin;


@Repository
public class AdmineDao {
	@Autowired
	EntityManagerFactory emf;
	
	public void saveAdmine(Admin admin) {
		EntityManager manager = emf.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.persist(admin);
		transaction.commit();
	}
	
	public void UpdateAdmine(int id) {
		EntityManager manager = emf.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.merge(id);
		transaction.commit();
	}
	
	public List<Admin>viewAllAdmines(){
		EntityManager em =emf.createEntityManager();
		Query query = em.createQuery("select a from Admin a");
		return query.getResultList();
	}
	public void deleteAdmineById(int id) {
		
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Admin a = em.find(Admin.class, id);
		et.begin();
		em.remove(a);
		et.commit();
	}
	
	
	public Admin login(String email, String password) {
		EntityManager em = emf.createEntityManager();
		Query query = em.createQuery("select a from Admin a where a.email=?1" + "and a.password=?2");
		query.setParameter(1,email);
		query.setParameter(2,password);
		
			List<Admin>admins = query.getResultList();
			if(admins.size()>0) return admins.get(0);
			else return null;
	}
}
