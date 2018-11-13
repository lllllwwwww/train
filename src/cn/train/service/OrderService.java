package cn.train.service;

import java.util.List;

import cn.train.entity.ShowOrder;

public interface OrderService {
	/**
	 * 添加订单信息
	 * @param userName
	 * @param trainNo
	 * @param startDate
	 * @return
	 */
	int addOrder(String userName,String trainNo,String startDate);
	/**
	 * 查询订单信息
	 * @param username
	 * @return
	 */
	List<ShowOrder> showOrder(String username);
	/**
	 * 删除订单
	 * @param userName
	 * @param trainNo
	 * @param startDate
	 * @return
	 */
	int delOrder(String userName,String trainNo,String startDate);
}
