package com.Shopy.DAO.IMPL;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Shopy.DAO.SupplierDAO;
import com.Shopy.model.Supplier;

@Repository("supplierDAO")
@Transactional

public class SupplierDAOImpl implements SupplierDAO{

	@Autowired
	SessionFactory sessionFactory;

	
	@Override
	public boolean addSupplier(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().save(supplier);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateSupplier(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().update(supplier);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteSupplier(int supplierId) {
		try {
			sessionFactory.getCurrentSession().delete(getSingleSupplier(supplierId));
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public Supplier getSingleSupplier(int supplierId) {
		try {

			return sessionFactory.getCurrentSession().get(Supplier.class, supplierId);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Supplier> getAllSupplier() {
		try {
			return sessionFactory.getCurrentSession().createQuery("From Supplier").list();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

}
