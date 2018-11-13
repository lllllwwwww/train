package cn.train.service;

import cn.train.entity.Passenger;

public interface PassengerService {
	/**
	 * ��ӳ˿���Ϣ
	 */
	int addPassenger(Passenger p);
	/**
	 * �˶Ե�¼��Ϣ
	 * @param username
	 * @param password
	 * @return
	 */
	int checkedLogin(String username,String password);
	/**
	 * ͨ���û�����ѯ�˿�
	 * @param username
	 * @return
	 */
	Passenger selectByName(String username);
	/**
	 * �����û���Ϣ
	 * @param username �û���
	 * @param name ����
	 * @param cardNo ����
	 * @param email ����
	 * @param phone �ֻ���
	 * @return
	 */
	int updpassenger(String username,String name,String cardNo,String email,String phone);
}
