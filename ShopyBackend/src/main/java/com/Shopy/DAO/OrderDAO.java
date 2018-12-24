package com.Shopy.DAO;

import java.util.List;

import com.Shopy.model.Order_Item;
import com.Shopy.model.Order_Table;

public interface OrderDAO {

	//To Add Order Details
		public boolean addOder(Order_Table order);
		public Order_Table getOrderByEmail(String email);

		public boolean updateOrder(Order_Table orderTable);
		
		//To Add Single OrderItem
		public boolean addOrderItem(Order_Item orderItem);
		public List<Order_Item> getAllOrderItemByEmail(String email);
		public List<Order_Item> getOrderItemByOrder(Order_Table order1);

}
