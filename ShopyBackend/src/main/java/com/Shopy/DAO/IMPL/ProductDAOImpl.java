package com.Shopy.DAO.IMPL;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Shopy.DAO.ProductDAO;
import com.Shopy.model.Product;

@Repository("productDAO")
@Transactional

public class ProductDAOImpl implements ProductDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addProduct(Product product) {
		try {
			sessionFactory.getCurrentSession().save(product);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateProduct(Product product) {
		try {
			sessionFactory.getCurrentSession().update(product);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteProduct(int prodid) {
		try {
			sessionFactory.getCurrentSession().delete(getSingleProduct(prodid));
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public Product getSingleProduct(int prodid) {
		try {

			return sessionFactory.getCurrentSession().get(Product.class, prodid);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getAllProduct() {
		try {
			return sessionFactory.getCurrentSession().createQuery("From Product").list();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getAllProductKeywords(String Keyword) {
		try {
			Session session = sessionFactory.openSession();
			String sql = "select p.prodid, p.prodName, p.supplierId, p.quantity, p.unitPrice, p.active,p.code from Product as p inner join Category as c on p.categoryId=c.categoryId  where upper(p.prodName) LIKE upper ('%"
					+ Keyword + "%') or upper(c.categoryName) LIKE upper ('%" + Keyword + "%')";
			Query query = session.createSQLQuery(sql);
			List<Object[]> groupList = (List<Object[]>) query.list();
			List<Product> list = new ArrayList<>();
			for (Object[] arr : groupList) {
				Product pro = new Product();
				pro.setProdid(Integer.parseInt(arr[0].toString()));
				pro.setProdName(arr[1].toString());
				pro.setSupplierId(arr[2].toString());
				pro.setQuantity(Integer.parseInt(arr[3].toString()));
				pro.setUnitPrice(Double.parseDouble(arr[4].toString()));
				pro.setActive(Boolean.parseBoolean(arr[5].toString()));
				pro.setCode(arr[6].toString());

				list.add(pro);
			}
			return list;
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getProductByCategory(int categoryid) {
		try {
			return sessionFactory.getCurrentSession().createQuery("From Product where categoryid=:categoryid")
					.setParameter("categoryid", categoryid).list();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}

}
