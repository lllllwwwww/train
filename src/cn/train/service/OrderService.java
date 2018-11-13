package cn.train.service;

import java.util.List;

import cn.train.entity.ShowOrder;

public interface OrderService {
	/**
	 * ��Ӷ�����Ϣ
	 * @param userName
	 * @param trainNo
	 * @param startDate
	 * @return
	 */
	int addOrder(String userName,String trainNo,String startDate);
	/**
	 * ��ѯ������Ϣ
	 * @param username
	 * @return
	 */
	List<ShowOrder> showOrder(String username);
	/**
	 * ɾ������
	 * @param userName
	 * @param trainNo
	 * @param startDate
	 * @return
	 */
	int delOrder(String userName,String trainNo,String startDate);
}
