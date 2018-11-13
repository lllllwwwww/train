package cn.train.service;

import cn.train.entity.Passenger;

public interface PassengerService {
	/**
	 * 添加乘客信息
	 */
	int addPassenger(Passenger p);
	/**
	 * 核对登录信息
	 * @param username
	 * @param password
	 * @return
	 */
	int checkedLogin(String username,String password);
	/**
	 * 通过用户名查询乘客
	 * @param username
	 * @return
	 */
	Passenger selectByName(String username);
	/**
	 * 更新用户信息
	 * @param username 用户名
	 * @param name 姓名
	 * @param cardNo 卡号
	 * @param email 邮箱
	 * @param phone 手机号
	 * @return
	 */
	int updpassenger(String username,String name,String cardNo,String email,String phone);
}
