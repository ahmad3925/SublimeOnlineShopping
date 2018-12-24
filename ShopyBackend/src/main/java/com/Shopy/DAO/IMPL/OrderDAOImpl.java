package com.Shopy.DAO.IMPL;

import java.util.Arrays;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Shopy.DAO.OrderDAO;
import com.Shopy.model.Order_Item;
import com.Shopy.model.Order_Table;

@Repository("OrderDAO")
@Transactional
public class OrderDAOImpl  implements OrderDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public boolean addOder(Order_Table order) {
		try {
			sessionFactory.getCurrentSession().save(order);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean addOrderItem(Order_Item orderItem) {
		try {
			sessionFactory.getCurrentSession().save(orderItem);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public List<Order_Item> getAllOrderItemByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Order_Table getOrderByEmail(String email) {
		try {

			List<Object[]> list= sessionFactory.getCurrentSession().createSQLQuery(
					"select max( order_tabl0_.id) as id1_4_,order_tabl0_.address as address2_4_,order_tabl0_.email as email3_4_,order_tabl0_.name as name4_4_  from Order_Table order_tabl0_ where order_tabl0_.email=:email")
					.setParameter("email", email).list();
			
			Order_Table order_table=new Order_Table();
			for(Object obrr[]:list) {
				System.out.println(Arrays.toString(obrr));
				order_table.setId(Integer.parseInt(obrr[0].toString()));
				order_table.setAddress(obrr[1].toString());
				order_table.setEmail(obrr[2].toString());
				order_table.setName(obrr[3].toString());
			}
			return order_table;
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean updateOrder(Order_Table orderTable) {
		try {
			sessionFactory.getCurrentSession().update(orderTable);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}


	
	@Override
	public List<Order_Item> getOrderItemByOrder(Order_Table order1) {
		try {

			return sessionFactory.getCurrentSession()
					.createQuery("From Order_Item where order1=:order1", Order_Item.class)
					.setParameter("order1", order1).list();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

}
